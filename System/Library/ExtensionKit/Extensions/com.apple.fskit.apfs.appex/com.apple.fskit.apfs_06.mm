uint64_t jfs_get_tree_in_snap(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t **a5)
{
  if (*(a1 + 384) && !*(a1 + 1108))
  {
    sub_1000A6CEC();
  }

  doc_id_tree = 22;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        pthread_mutex_lock((a1 + 1672));
        if (*(a1 + 440) == a4 && (v39 = *(a1 + 3624)) != 0)
        {
          obj_retain(*(a1 + 3624));
          if (a3 && (v45 = obj_modify(v39, 0, a3, v40, v41, v42, v43, v44), v45))
          {
            doc_id_tree = v45;
            obj_release(v39);
          }

          else
          {
            doc_id_tree = 0;
            *a5 = v39;
          }
        }

        else
        {
          doc_id_tree = apfs_get_doc_id_tree(a1, 0, a4, a3, a5);
          if (!doc_id_tree)
          {
            if (*(a1 + 440) == a4)
            {
              v49 = *a5;
              obj_retain(v49);
              doc_id_tree = 0;
              *(a1 + 3624) = v49;
            }

            else
            {
              doc_id_tree = 0;
            }
          }
        }

        v38 = (a1 + 1672);
        goto LABEL_109;
      }

      if (a2 != 8)
      {
        return doc_id_tree;
      }

      if (*(a1 + 440) != a4 || (v24 = *(a1 + 3584)) == 0)
      {
        doc_id_tree = apfs_get_secondary_fsroot_tree(a1, a4, a3, a5);
        if (!doc_id_tree)
        {
          v51 = *(a1 + 440);
          v52 = v51 && *(a1 + 504) == 0;
          if (!v52 && v51 == a4)
          {
            v53 = *a5;
            obj_retain(v53);
            doc_id_tree = 0;
            *(a1 + 3584) = v53;
          }
        }

        return doc_id_tree;
      }

      obj_retain(*(a1 + 3584));
      if (!a3)
      {
LABEL_71:
        doc_id_tree = 0;
        *a5 = v24;
        return doc_id_tree;
      }

LABEL_33:
      v36 = obj_modify(v24, 0, a3, v31, v32, v33, v34, v35);
      if (v36)
      {
        doc_id_tree = v36;
        obj_release(v24);
        return doc_id_tree;
      }

      goto LABEL_71;
    }

    if (a2 != 5)
    {
      if ((*(*(a1 + 376) + 56) & 0x40) != 0)
      {
        pthread_mutex_lock((a1 + 1608));
        v17 = *(a1 + 3616);
        if (v17)
        {
          obj_retain(v17);
          if (a3)
          {
            doc_id_tree = obj_modify(*(a1 + 3616), 2, a3, v18, v19, v20, v21, v22);
            v23 = *(a1 + 3616);
            if (doc_id_tree)
            {
              obj_release(v23);
LABEL_108:
              v38 = (a1 + 1608);
              goto LABEL_109;
            }

            *(*(a1 + 376) + 1048) = obj_oid(v23);
          }

          doc_id_tree = 0;
          *a5 = *(a1 + 3616);
          goto LABEL_108;
        }

        v58 = *(a1 + 384);
        if (!v58)
        {
          v58 = *(a1 + 376);
        }

        v59 = *(v58 + 1044);
        v60 = *(v58 + 1048);
        v88 = 0u;
        v89 = 0u;
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v90 = 0u;
        v87 = pfkur_tree_key_cmp;
        DWORD2(v88) = 32;
        if (v59 == 2)
        {
          extended = btree_get_extended(a1, v59 & 0xFFFF0000, v60, a4, a3 != 0, &v87, a3, a5);
          v62 = extended;
          if (a3 && !extended)
          {
            doc_id_tree = 0;
            *(*(a1 + 376) + 1048) = obj_oid(*a5);
            goto LABEL_108;
          }

          if (!extended)
          {
            doc_id_tree = 0;
            goto LABEL_108;
          }

          v78 = *(v58 + 1048);
        }

        else
        {
          v62 = 22;
        }

        strerror(v62);
        log_err("%s:%d: %s Failed to get pfkur tree w/oid %llu (modify_xid %llu): %d (%s)\n", v79, v80, v81, v82, v83, v84, v85, "jfs_get_tree_in_snap");
        doc_id_tree = v62;
        goto LABEL_108;
      }

      return 45;
    }

    v37 = *(a1 + 376);
    if ((*(v37 + 56) & 0x20) == 0)
    {
      return 45;
    }

    v50 = *(v37 + 1040);
    if (a3 && *(a1 + 448))
    {
      return 30;
    }

    pthread_mutex_lock((a1 + 1544));
    v55 = *(a1 + 3608);
    if (v55)
    {
      if ((v50 & 0xC0000000) != 0)
      {
        if ((v50 & 0xC0000000) == 0x40000000)
        {
          v56 = *(a1 + 448);
          if (v56)
          {
            v57 = *(a1 + 376);
            goto LABEL_97;
          }

LABEL_92:
          obj_retain(v55);
          if (a3)
          {
            doc_id_tree = obj_modify(*(a1 + 3608), 2, a3, v63, v64, v65, v66, v67);
            v68 = *(a1 + 3608);
            if (doc_id_tree)
            {
              obj_release(v68);
LABEL_104:
              v38 = (a1 + 1544);
              goto LABEL_109;
            }

            *(*(a1 + 376) + 1032) = obj_oid(v68);
          }

          doc_id_tree = 0;
          *a5 = *(a1 + 3608);
          goto LABEL_104;
        }
      }

      else if (*(a1 + 440) == a4)
      {
        goto LABEL_92;
      }
    }

    v56 = *(a1 + 448);
    v57 = *(a1 + 376);
    if (!v56)
    {
      v56 = *(v57 + 1032);
    }

LABEL_97:
    v69 = *(v57 + 1040);
    *&v88 = 0;
    v89 = 0u;
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    v87 = fext_tree_key_cmp;
    *(&v88 + 1) = 0x20000001FLL;
    if (v69 == 2)
    {
      v70 = btree_get_extended(a1, v69 & 0xFFFF0000, v56, a4, a3 != 0, &v87, a3, a5);
      doc_id_tree = v70;
      if (a3 && !v70)
      {
        *(*(a1 + 376) + 1032) = obj_oid(*a5);
        goto LABEL_104;
      }

      if (!v70)
      {
        goto LABEL_104;
      }
    }

    else
    {
      doc_id_tree = 22;
    }

    strerror(doc_id_tree);
    log_err("%s:%d: %s Failed to get fext tree w/oid %llu (modify_xid %llu): %d (%s)\n", v71, v72, v73, v74, v75, v76, v77, "jfs_get_tree_in_snap");
    goto LABEL_104;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      pthread_mutex_lock((a1 + 1480));
      doc_id_tree = apfs_get_snap_meta_tree(a1, a3, a5);
      if (!doc_id_tree)
      {
        *(*(a1 + 376) + 152) = obj_oid(*a5);
      }

      v38 = (a1 + 1480);
      goto LABEL_109;
    }

    v24 = *(a1 + 3592);
    if (v24)
    {
      obj_retain(*(a1 + 3592));
      if (!a3)
      {
        goto LABEL_71;
      }

      v30 = obj_modify(v24, 0, a3, v25, v26, v27, v28, v29);
      if (!v30)
      {
        goto LABEL_71;
      }

      doc_id_tree = v30;
      obj_release(v24);
LABEL_30:
      if (*(a1 + 440) != a4 || (v24 = *(a1 + 3576)) == 0)
      {
        doc_id_tree = apfs_get_fsroot_tree(a1, a4, a3, a5);
        if (!doc_id_tree)
        {
          v46 = *(a1 + 440);
          v47 = v46 && *(a1 + 504) == 0;
          if (!v47 && v46 == a4)
          {
            v48 = *a5;
            obj_retain(v48);
            doc_id_tree = 0;
            *(a1 + 3576) = v48;
          }
        }

        return doc_id_tree;
      }

      obj_retain(*(a1 + 3576));
      if (!a3)
      {
        if (doc_id_tree)
        {
          return doc_id_tree;
        }

        goto LABEL_71;
      }

      goto LABEL_33;
    }

LABEL_29:
    doc_id_tree = 0;
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    goto LABEL_29;
  }

  if (a2 == 2)
  {
    pthread_mutex_lock((a1 + 1416));
    v10 = *(a1 + 3600);
    if (!v10)
    {
      doc_id_tree = apfs_get_extentref_tree(a1, *(*(a1 + 376) + 144), a3, a5);
      if (!doc_id_tree)
      {
        if (a3)
        {
          *(*(a1 + 376) + 144) = obj_oid(*a5);
        }

        v54 = *a5;
        *(a1 + 3600) = *a5;
        obj_retain(v54);
        doc_id_tree = 0;
      }

      goto LABEL_85;
    }

    obj_retain(v10);
    if (a3)
    {
      doc_id_tree = obj_modify(*(a1 + 3600), 2, a3, v11, v12, v13, v14, v15);
      v16 = *(a1 + 3600);
      if (doc_id_tree)
      {
        obj_release(v16);
LABEL_85:
        v38 = (a1 + 1416);
LABEL_109:
        pthread_mutex_unlock(v38);
        return doc_id_tree;
      }

      *(*(a1 + 376) + 144) = obj_oid(v16);
    }

    doc_id_tree = 0;
    *a5 = *(a1 + 3600);
    goto LABEL_85;
  }

  return doc_id_tree;
}

uint64_t sub_100047F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, int *a7, unsigned int a8, uint64_t a9)
{
  v14 = jobj_type_from_possibly_large_key(*a9, a1);
  if (a6 < a8 && v14 != 18)
  {
    return 22;
  }

  v23 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  v24 = *a1 >> 60;
  if (v24 <= 8)
  {
    switch(v24)
    {
      case 2uLL:
        result = 0;
        *(a9 + 16) = *(a5 + 4);
        *(a5 + 4) += a7[4];
        return result;
      case 6uLL:
        *(a9 + 16) = *a5;
        v99 = *a5 + *a7;
        v100 = v99 << 31 >> 31;
        if (v100 == v99 && (v100 & 0x8000000000000000) == 0)
        {
          result = 0;
          *a5 = v100;
          return result;
        }

        is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(*a9 + 392));
        v278 = *a5;
        v279 = *a7;
        v274 = *a9 + 4048;
        log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s dstream id %llu refcnt %u (delta: %d) would overflow\n", v102, v103, v104, v105, v106, v107, "jobj_refcnt_merge");
        return 0;
      case 7uLL:
        v49 = *a5;
        *(a9 + 16) = *a5;
        v50 = v49 + *a7;
        *a5 = v50;
        if (v50 < 0)
        {
          panic("can't have a negative refcnt on crypto state %llu refcnt %d\n", v23, v50);
        }

        return 0;
    }

    goto LABEL_54;
  }

  if (*a1 >> 60 <= 0xCuLL)
  {
    if (v24 != 9)
    {
      if (v24 == 10)
      {
        v25 = *(a9 + 84);
        if ((v25 & 2) != 0)
        {
          if ((v25 & 4) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v26 = *a5;
          v27 = *a5 + *a7;
          if (__CFADD__(*a5, *a7))
          {
            v28 = (*a7 >> 63) + 1;
          }

          else
          {
            v28 = *a7 >> 63;
          }

          v29 = v28 << 63 >> 63;
          if (v29 != v28 || v29 < 0)
          {
            if (nx_ratelimit_log_allowed(*(*a9 + 392)))
            {
              log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v30, v31, v32, v33, v34, v35, v36, "jobj_merge_maybe_clamp_64");
            }

            v27 = v26;
          }

          *a5 = v27;
          v37 = a5[1];
          v38 = *(a7 + 1);
          v39 = v37 + v38;
          if (__CFADD__(v37, v38))
          {
            v40 = (v38 >> 63) + 1;
          }

          else
          {
            v40 = v38 >> 63;
          }

          v41 = v40 << 63 >> 63;
          if (v41 != v40 || v41 < 0)
          {
            if (nx_ratelimit_log_allowed(*(*a9 + 392)))
            {
              log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v42, v43, v44, v45, v46, v47, v48, "jobj_merge_maybe_clamp_64");
            }

            v39 = v37;
          }

          a5[1] = v39;
          v25 = *(a9 + 84);
          if ((v25 & 4) != 0)
          {
LABEL_26:
            a5[2] = *(a7 + 2);
            if (*(a9 + 84))
            {
              goto LABEL_90;
            }

            goto LABEL_87;
          }
        }

        if (v25)
        {
LABEL_90:
          if ((*(a9 + 84) & 8) != 0)
          {
            *(a9 + 24) = *a5;
            *(a9 + 32) = a5[1];
          }

          result = 0;
          *(a9 + 16) = a5[2];
          return result;
        }

LABEL_87:
        v98 = *(a7 + 3);
        if (v98 <= 1)
        {
          v98 = 1;
        }

        a5[3] += v98;
        goto LABEL_90;
      }

      goto LABEL_54;
    }

    a5[1] = *(a7 + 1);
    if (*(a7 + 8))
    {
      result = 0;
      *(a5 + 8) = *(a7 + 8);
      return result;
    }

    return 0;
  }

  if (v24 != 13)
  {
    if (v24 == 14)
    {
      v51 = *(a1 + 8);
      if (v51 != 19)
      {
        if (v51 != 18)
        {
          v275 = *(a1 + 8);
          log_err("%s:%d: don't know how to merge refcounts on objects of expanded type %d\n", v15, v16, v17, v18, v19, v20, v21, "jobj_refcnt_merge");
          return 22;
        }

        v52 = *(a9 + 84);
        *(a9 + 84) = 0;
        if ((v52 & 0x800000) != 0)
        {
          result = 0;
          v113 = a7[12];
          a5[3] = *(a7 + 3);
          *(a5 + 12) = v113 | 0x80;
          a5[4] = *(a7 + 4);
          return result;
        }

        v53 = *(a5 + 12);
        if ((~v53 & 0x30) == 0)
        {
          sub_1000A6D44();
        }

        v54 = (a5[6] & 0x20) == 0;
        if ((v52 & 0x4000) == 0)
        {
          v54 = 1;
        }

        v55 = (v52 & 0x100) == 0 || (a5[6] & 0x10) == 0;
        v56 = 1;
        if (v55)
        {
          v57 = (v52 >> 12) & 1;
          if ((v53 & 0x20) != 0)
          {
            LOBYTE(v57) = (v52 & 0x60) == 32;
          }

          if (v54)
          {
            v56 = v57;
          }

          else
          {
            v56 = 1;
          }
        }

        v292 = a5[4];
        v58 = a6 - 52;
        v59 = a5[2];
        v291 = a5[1];
        if ((v53 & 8) != 0)
        {
          v297[0] = 0;
          LODWORD(v295) = 0;
          v293 = 0;
          if (!xf_get_from_blob(a5 + 26, v58, 3, 0, v297, &v295) && v295 == 8)
          {
            v293 = *v297[0];
          }

          v60 = *(a5 + 12);
        }

        else
        {
          v293 = 0;
          v60 = *(a5 + 12);
        }

        if ((v60 & 0x800) != 0)
        {
          v297[0] = 0;
          LODWORD(v295) = 0;
          v115 = xf_get_from_blob(a5 + 26, v58, 4, 0, v297, &v295);
          v114 = 0;
          if (!v115 && v295 == 8)
          {
            v114 = *v297[0];
          }

          v60 = *(a5 + 12);
        }

        else
        {
          v114 = 0;
        }

        if ((v60 & 0x200) != 0 && (v52 & 2) == 0)
        {
          result = 0;
          *(a9 + 16) = *a1 & 0xFFFFFFFFFFFFFFFLL;
          v116 = *(a9 + 84) | 0x400000;
          goto LABEL_305;
        }

        v288 = v114;
        if (v60 >= 0x1000)
        {
          v60 |= 0x100u;
          *(a5 + 12) = v60;
        }

        if (a5[4] == (*a1 & 0xFFFFFFFFFFFFFFFLL))
        {
          *(a5 + 12) = v60 | 0x400;
          a5[4] = 0;
        }

        v290 = (v52 >> 1) & 1;
        if (!(v290 | v56 & 1))
        {
          v289 = v59;
          v285 = a8;
          v287 = v58;
          v117 = *a1;
          v118 = *a5;
          v119 = *a5 + *a7;
          if (__CFADD__(*a5, *a7))
          {
            v120 = (*a7 >> 63) + 1;
          }

          else
          {
            v120 = *a7 >> 63;
          }

          v121 = v120 << 63 >> 63;
          if (v121 != v120 || v121 < 0)
          {
            if (nx_ratelimit_log_allowed(*(*a9 + 392)))
            {
              log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v122, v123, v124, v125, v126, v127, v128, "jobj_merge_maybe_clamp_64");
            }

            v119 = v118;
          }

          *a5 = v119;
          v129 = *a1;
          v130 = a5[1];
          v131 = *(a7 + 1);
          v132 = v130 + v131;
          if (__CFADD__(v130, v131))
          {
            v133 = (v131 >> 63) + 1;
          }

          else
          {
            v133 = v131 >> 63;
          }

          v134 = v133 << 63 >> 63;
          if (v134 != v133 || v134 < 0)
          {
            if (nx_ratelimit_log_allowed(*(*a9 + 392)))
            {
              log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v135, v136, v137, v138, v139, v140, v141, "jobj_merge_maybe_clamp_64");
            }

            v132 = v130;
          }

          v286 = v285 - 52;
          a5[1] = v132;
          v142 = *(a5 + 12);
          if (v142)
          {
            v143 = *a1;
            v144 = a5[2];
            v145 = *(a7 + 2);
            v146 = v144 + v145;
            if (__CFADD__(v144, v145))
            {
              v147 = (v145 >> 63) + 1;
            }

            else
            {
              v147 = v145 >> 63;
            }

            v148 = v147 << 63 >> 63;
            if (v148 != v147 || v148 < 0)
            {
              if (nx_ratelimit_log_allowed(*(*a9 + 392)))
              {
                log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v149, v150, v151, v152, v153, v154, v155, "jobj_merge_maybe_clamp_64");
              }

              v146 = v144;
            }

            a5[2] = v146;
            v142 = *(a5 + 12);
          }

          v58 = v287;
          if ((v142 & 4) != 0 && (a7[12] & 4) != 0)
          {
            v156 = *a9;
            v157 = *a1;
            v297[0] = 0;
            v295 = 0;
            v296 = 0;
            v158 = xf_get_from_blob(a5 + 26, v287, 1, 0, v297, &v296);
            v159 = 0;
            if (!v158 && v296 == 8)
            {
              v296 = 0;
              if (!xf_get_from_blob(a7 + 26, v286, 1, 0, &v295, &v296) && v296 == 8 && (v160 = *v295) != 0)
              {
                v280 = *v297[0];
                v159 = *v297[0] + v160;
                if (__CFADD__(*v297[0], v160))
                {
                  v161 = (v160 >> 63) + 1;
                }

                else
                {
                  v161 = v160 >> 63;
                }

                v162 = v161 << 63 >> 63;
                if (v162 != v161 || v162 < 0)
                {
                  if (nx_ratelimit_log_allowed(*(v156 + 392)))
                  {
                    log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v163, v164, v165, v166, v167, v168, v169, "jobj_merge_maybe_clamp_64");
                  }

                  v159 = v280;
                  v58 = v287;
                }
              }

              else
              {
                v159 = *v297[0];
              }
            }

            v297[0] = v159;
            v191 = xf_set_in_blob(a5 + 26, v58, 1, v297, 8);
            if (v191)
            {
              v192 = v191;
              if (nx_ratelimit_log_allowed(*(*a9 + 392)))
              {
                v193 = *a9 + 4048;
                v194 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                strerror(v192);
                v59 = v289;
                log_err("%s:%d: %s could not update clone size for dir-stats %llu: %s (%d)\n", v195, v196, v197, v198, v199, v200, v201, "exp_dir_stats_refcnt_merge");
              }
            }

            v142 = *(a5 + 12);
          }

          if ((v142 & 8) != 0 && (a7[12] & 8) != 0)
          {
            v202 = *a9;
            v283 = *a1;
            v297[0] = 0;
            v295 = 0;
            v296 = 0;
            v203 = 0;
            if (!xf_get_from_blob(a5 + 26, v58, 3, 0, v297, &v296) && v296 == 8)
            {
              v281 = v202;
              v296 = 0;
              if (!xf_get_from_blob(a7 + 26, v286, 3, 0, &v295, &v296) && v296 == 8 && (v204 = *v295) != 0)
              {
                v203 = *v297[0] + v204;
                if (__CFADD__(*v297[0], v204))
                {
                  v205 = (v204 >> 63) + 1;
                }

                else
                {
                  v205 = v204 >> 63;
                }

                v206 = v205 << 63 >> 63;
                if (v206 != v205 || v206 < 0)
                {
                  if (nx_ratelimit_log_allowed(*(v281 + 392)))
                  {
                    log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v207, v208, v209, v210, v211, v212, v213, "jobj_merge_maybe_clamp_64");
                  }

                  v58 = v287;
                  v59 = v289;
                }
              }

              else
              {
                v203 = *v297[0];
              }
            }

            v297[0] = v203;
            v214 = xf_set_in_blob(a5 + 26, v58, 3, v297, 8);
            if (v214)
            {
              v215 = v214;
              if (nx_ratelimit_log_allowed(*(*a9 + 392)))
              {
                v216 = *a9 + 4048;
                v217 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                strerror(v215);
                v59 = v289;
                log_err("%s:%d: %s could not update purgeable size for dir-stats %llu: %s (%d)\n", v218, v219, v220, v221, v222, v223, v224, "exp_dir_stats_refcnt_merge");
              }
            }

            v142 = *(a5 + 12);
          }

          if ((v142 & 0x800) != 0 && (*(a7 + 49) & 8) != 0)
          {
            v225 = *a9;
            v284 = *a1;
            v297[0] = 0;
            v295 = 0;
            v296 = 0;
            v226 = 0;
            if (!xf_get_from_blob(a5 + 26, v58, 4, 0, v297, &v296) && v296 == 8)
            {
              v282 = v225;
              v296 = 0;
              if (!xf_get_from_blob(a7 + 26, v286, 4, 0, &v295, &v296) && v296 == 8 && (v227 = *v295) != 0)
              {
                v226 = *v297[0] + v227;
                if (__CFADD__(*v297[0], v227))
                {
                  v228 = (v227 >> 63) + 1;
                }

                else
                {
                  v228 = v227 >> 63;
                }

                v229 = v228 << 63 >> 63;
                if (v229 != v228 || v229 < 0)
                {
                  if (nx_ratelimit_log_allowed(*(v282 + 392)))
                  {
                    log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v230, v231, v232, v233, v234, v235, v236, "jobj_merge_maybe_clamp_64");
                  }

                  v58 = v287;
                  v59 = v289;
                }
              }

              else
              {
                v226 = *v297[0];
              }
            }

            v297[0] = v226;
            v237 = xf_set_in_blob(a5 + 26, v58, 4, v297, 8);
            if (v237)
            {
              v238 = v237;
              if (nx_ratelimit_log_allowed(*(**a9 + 392)))
              {
                if (obj_type(*a9) != 13)
                {
                  v239 = *(*a9 + 384) + 212;
                }

                v240 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                strerror(v238);
                log_err("%s:%d: %s could not update purgeable rsrc size for dir-stats %llu: %s (%d)\n", v241, v242, v243, v244, v245, v246, v247, "exp_dir_stats_refcnt_merge");
                v59 = v289;
              }
            }
          }
        }

        if ((v52 & 0x8000) != 0)
        {
          *(a5 + 12) |= 2u;
        }

        if ((v52 & 4) != 0)
        {
          a5[4] = *(a7 + 4);
        }

        v248 = *(a5 + 12);
        if ((v248 & 8) != 0)
        {
          if ((v52 & 0x400) != 0 && (v53 & 0x40) == 0)
          {
            v249 = v248 | 0x40;
            v250 = 1024;
LABEL_238:
            *(a5 + 12) = v249;
            *(a9 + 84) |= v250;
            goto LABEL_239;
          }

          if ((v52 & 0x800) != 0 && (v53 & 0x40) != 0)
          {
            v249 = v248 & 0xFFFFFFBF;
            v250 = 2048;
            goto LABEL_238;
          }
        }

LABEL_239:
        if ((v52 & 1) == 0)
        {
          v251 = *(a7 + 5);
          if (v251 <= 1)
          {
            v251 = 1;
          }

          a5[5] += v251;
          v252 = v290;
          if ((v53 & 0x40) == 0)
          {
            v252 = 1;
          }

          if ((v252 & 1) == 0)
          {
            *(a5 + 12) &= ~0x40u;
            *(a9 + 84) |= 0x800u;
          }
        }

        if ((v52 & 8) == 0)
        {
          if ((v52 & 0x200) != 0)
          {
            *(a9 + 72) = a5[5];
            *(a9 + 80) = *(a5 + 12);
          }

          v253 = *(a9 + 84);
          if ((v53 & 0x20) == 0 && (v253 & 0x800) != 0)
          {
            *(a9 + 56) = v291 - v293;
            if ((*(a5 + 49) & 8) != 0)
            {
              *(a9 + 64) = v59 - v288;
            }
          }

LABEL_270:
          *(a9 + 16) = a5[4];
          if ((v53 & 0x20) == 0 || (v52 & 0xA0) != 0 || (v52 & 0x100) != 0 || (v297[0] = 0, LODWORD(v295) = 0, xf_get_from_blob(a5 + 26, v58, 2, 0, v297, &v295)) || v295 != 8 || !*v297[0])
          {
            if ((v52 & 0x2000) != 0 && (v53 & 0x40) != 0 && (v253 & 0xC00) == 0)
            {
              *(a9 + 16) = 0;
            }
          }

          else
          {
            *(a9 + 16) = *v297[0];
            *(a9 + 84) |= 0x100000u;
          }

          if ((v52 & 0x10) != 0)
          {
            v261 = *(a5 + 12);
            a5[3] = 0;
            *(a5 + 12) = v261 & 0xFFFFFF6F | 0x10;
            v297[0] = 0;
            xf_set_in_blob(a5 + 26, v58, 2, v297, 8);
            v262 = *(a5 + 12);
            *(a5 + 12) = v262 & 0xFFFFFFDF;
            if ((v52 & 4) == 0)
            {
              sub_1000A6D18();
            }

            *(a5 + 12) = v262 & 0xFFFFFBDF;
            *(a9 + 16) = v292;
          }

          if ((v52 & 0x80) != 0)
          {
            v297[0] = 0;
            xf_set_in_blob(a5 + 26, v58, 2, v297, 8);
            *(a5 + 12) &= ~0x20u;
          }

          if ((v52 & 0x10000) != 0)
          {
            v264 = *(a5 + 12) | 0x100;
          }

          else
          {
            if ((v52 & 0x20000) == 0)
            {
              if ((v52 & 0x200000) == 0)
              {
                goto LABEL_289;
              }

              goto LABEL_295;
            }

            v264 = a5[6] & 0xFFFFFEFF;
          }

          *(a5 + 12) = v264;
          if ((v52 & 0x200000) == 0)
          {
LABEL_289:
            if ((v52 & 0x40000) == 0)
            {
LABEL_290:
              if ((v52 & 0x80000) == 0)
              {
LABEL_298:
                if ((v52 & 0x100000) == 0 || (v53 & 0x10) != 0)
                {
                  if (!(v53 & 0x10 | v52 & 0x100000))
                  {
                    if ((v53 & 0x20) == 0)
                    {
                      return 0;
                    }

                    result = 0;
                    v116 = *(a9 + 84) | 0x40;
LABEL_305:
                    *(a9 + 84) = v116;
                    return result;
                  }
                }

                else
                {
                  if (nx_ratelimit_log_allowed(*(*a9 + 392)))
                  {
                    v276 = *a9 + 4048;
                    v277 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                    log_err("%s:%d: %s fixing DIR_STATS_IS_SHADOW flag for dir-stats %llu\n", v266, v267, v268, v269, v270, v271, v272, "exp_dir_stats_refcnt_merge");
                  }

                  *(a5 + 12) |= 0x110u;
                }

                result = 0;
                v116 = *(a9 + 84) | 0x20;
                goto LABEL_305;
              }

              v263 = a5[6] & 0xFFFFFDFF;
LABEL_297:
              *(a5 + 12) = v263;
              goto LABEL_298;
            }

LABEL_296:
            v263 = *(a5 + 12) | 0x200;
            goto LABEL_297;
          }

LABEL_295:
          v265 = *(a5 + 12);
          a5[3] = 0;
          *(a5 + 12) = v265 & 0xFFFFFE4F | 0x100;
          if ((v52 & 0x40000) == 0)
          {
            goto LABEL_290;
          }

          goto LABEL_296;
        }

        *(a9 + 24) = *a5;
        *(a9 + 32) = a5[1];
        *(a9 + 40) = a5[2];
        v254 = *(a5 + 12);
        if ((v254 & 4) != 0)
        {
          v297[0] = 0;
          LODWORD(v295) = 0;
          v255 = xf_get_from_blob(a5 + 26, v58, 1, 0, v297, &v295);
          v256 = 0;
          if (!v255 && v295 == 8)
          {
            v256 = *v297[0];
          }

          *(a9 + 48) = v256;
          v254 = *(a5 + 12);
          if ((v254 & 8) == 0)
          {
LABEL_255:
            if ((v254 & 0x800) == 0)
            {
LABEL_269:
              *(a9 + 72) = a5[5];
              *(a9 + 80) = *(a5 + 12);
              v253 = *(a9 + 84);
              goto LABEL_270;
            }

LABEL_265:
            v297[0] = 0;
            LODWORD(v295) = 0;
            v259 = xf_get_from_blob(a5 + 26, v58, 4, 0, v297, &v295);
            v260 = 0;
            if (!v259 && v295 == 8)
            {
              v260 = *v297[0];
            }

            *(a9 + 64) = v260;
            goto LABEL_269;
          }
        }

        else if ((v254 & 8) == 0)
        {
          goto LABEL_255;
        }

        v297[0] = 0;
        LODWORD(v295) = 0;
        v257 = xf_get_from_blob(a5 + 26, v58, 3, 0, v297, &v295);
        v258 = 0;
        if (!v257 && v295 == 8)
        {
          v258 = *v297[0];
        }

        *(a9 + 56) = v258;
        if ((a5[6] & 0x800) == 0)
        {
          goto LABEL_269;
        }

        goto LABEL_265;
      }

      *a5 |= *(a7 + 7) << 56;
      v108 = (a5 + 1);
      v109 = a6 - 8;
      v110 = a8 - 8;
      v297[0] = 0;
      v296 = 0;
      if (!xf_get_from_blob(a7 + 4, v110, 2, 0, v297, &v296) && v296 == 8)
      {
        v111 = *v297[0];
        v295 = v111;
        if (v111)
        {
          v297[0] = 0;
          v296 = 0;
          if (!xf_get_from_blob(v108, a6 - 8, 2, 0, v297, &v296) && v296 == 8 && *v297[0])
          {
            if (*v297[0] == v111)
            {
              goto LABEL_170;
            }

            v112 = xf_set_in_blob(v108, a6 - 8, 2, &v295, 8);
            if (!v112)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v112 = 22;
          }

          v294 = nx_is_panic_on_corruption_enabled(*(*a9 + 392));
          v170 = *a9 + 4048;
          v171 = *(a1 + 12);
          v172 = *(a1 + 20);
          strerror(v112);
          log_corrupt(v294, "%s:%d: %s clone mapping <%llu, %llu>: failed to update dir-stats key: %s (%d)\n", v173, v174, v175, v176, v177, v178, "jobj_refcnt_merge");
        }
      }

LABEL_170:
      v297[0] = 0;
      v296 = 0;
      if (xf_get_from_blob(a7 + 4, v110, 1, 0, v297, &v296))
      {
        return 0;
      }

      if (v296 != 8)
      {
        return 0;
      }

      v179 = *v297[0];
      v295 = v179;
      if (!v179)
      {
        return 0;
      }

      v297[0] = 0;
      v296 = 0;
      if (!xf_get_from_blob(v108, v109, 1, 0, v297, &v296) && v296 == 8 && *v297[0])
      {
        if (*v297[0] == v179)
        {
          return 0;
        }

        result = xf_set_in_blob(v108, v109, 1, &v295, 8);
        v180 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v180 = 22;
      }

      v181 = nx_is_panic_on_corruption_enabled(*(*a9 + 392));
      v182 = *a9 + 4048;
      v183 = *(a1 + 12);
      v184 = *(a1 + 20);
      strerror(v180);
      log_corrupt(v181, "%s:%d: %s clone mapping <%llu, %llu>: failed to update attribution tag: %s (%d)\n", v185, v186, v187, v188, v189, v190, "jobj_refcnt_merge");
      return 0;
    }

LABEL_54:
    v273 = *a1 >> 60;
    log_err("%s:%d: don't know how to merge refcounts on objects of type %d\n", v15, v16, v17, v18, v19, v20, v21, "jobj_refcnt_merge");
    return 22;
  }

  if (HIBYTE(*(a1 + 8)) != 2)
  {
    log_err("%s:%d: don't know how to merge refcounts on objects of file info type %llu\n", v15, v16, v17, v18, v19, v20, v21, "jobj_refcnt_merge");
    return 22;
  }

  v61 = *(a5 + 12);
  if (v61 >= 2)
  {
    *(a5 + 12) = v61 | 1;
  }

  *(a9 + 16) = *a5;
  v62 = a5[1];
  v63 = *(a7 + 1);
  v64 = v62 + v63;
  if (__CFADD__(v62, v63))
  {
    v65 = (v63 >> 63) + 1;
  }

  else
  {
    v65 = v63 >> 63;
  }

  v66 = v65 << 63 >> 63;
  if (v66 != v65 || v66 < 0)
  {
    if (nx_ratelimit_log_allowed(*(*a9 + 392)))
    {
      log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v67, v68, v69, v70, v71, v72, v73, "jobj_merge_maybe_clamp_64");
    }

    v64 = v62;
  }

  a5[1] = v64;
  v74 = a5[2];
  v75 = *(a7 + 2);
  v76 = v74 + v75;
  if (__CFADD__(v74, v75))
  {
    v77 = (v75 >> 63) + 1;
  }

  else
  {
    v77 = v75 >> 63;
  }

  v78 = v77 << 63 >> 63;
  if (v78 != v77 || v78 < 0)
  {
    if (nx_ratelimit_log_allowed(*(*a9 + 392)))
    {
      log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v79, v80, v81, v82, v83, v84, v85, "jobj_merge_maybe_clamp_64");
    }

    v76 = v74;
  }

  a5[2] = v76;
  v86 = *a5;
  v87 = *a7;
  v88 = *a5 + v87;
  if (__CFADD__(*a5, v87))
  {
    v89 = (v87 >> 63) + 1;
  }

  else
  {
    v89 = v87 >> 63;
  }

  v90 = v89 << 63 >> 63;
  if (v90 != v89 || v90 < 0)
  {
    if (nx_ratelimit_log_allowed(*(*a9 + 392)))
    {
      log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", v91, v92, v93, v94, v95, v96, v97, "jobj_merge_maybe_clamp_64");
    }

    v88 = v86;
  }

  result = 0;
  *a5 = v88;
  return result;
}

uint64_t match_jobj_type_to_tree_type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 >= 0x10)
  {
    if ((*(*(a1 + 376) + 57) & 2) == 0)
    {
      log_err("%s:%d: %s expanded obj type %hhu found on unsupported volume\n", a2, a3, a4, a5, a6, a7, a8, "match_jobj_expanded_type_to_tree_type");
      return 0;
    }

    if ((a2 & 0xFC) == 0x10)
    {
      if (apfs_has_secondary_fsroot(a1))
      {
        return 8;
      }

      else
      {
        return 1;
      }
    }

    log_warn("%s:%d: %s Warning: attempting to place unknown expanded type %hhu into fsroot.\n", a2, a3, a4, a5, a6, a7, a8, "match_jobj_expanded_type_to_tree_type");
    return 1;
  }

  v10 = a3;
  v9 = 3;
  if (a2 <= 5)
  {
    if (a2 == 1)
    {
      return v9;
    }

    if (a2 == 2)
    {
      return 2;
    }

    return v10;
  }

  if ((a2 - 6) < 2)
  {
    goto LABEL_18;
  }

  if (a2 != 8)
  {
    if (a2 == 11)
    {
      return v9;
    }

    return v10;
  }

  if ((*(*(a1 + 376) + 56) & 0x20) == 0)
  {
LABEL_18:
    if (a3 == 100)
    {
      return 1;
    }

    if (a3 == 101)
    {
      if ((*(*(a1 + 376) + 57) & 1) == 0)
      {
        panic("Requested forced secondary_fs_root but the tree is missing\n");
      }
    }

    else
    {
      if ((apfs_has_secondary_fsroot(a1) & 1) == 0)
      {
        return v10;
      }

      if (v10 != 1)
      {
        panic("type = %u, req_tree != fs_root\n", v8);
      }
    }

    return 8;
  }

  if (a3 != 1)
  {
    panic("sealed, fext, req_tree != fs_root");
  }

  return 5;
}

uint64_t insert_jobj(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a3 + 1))
  {
    sub_1000A6D70();
  }

  matched = match_jobj_type_to_tree_type(a1, *a3, a2, a4, a5, a6, a7, a8);
  if (matched != 5)
  {
    v20 = matched;
    v35 = 0;
    v36 = 0;
    tree_in_snap = jfs_get_tree_in_snap(a1, matched, a4, *(a1 + 440), &v36);
    if (tree_in_snap)
    {
      return tree_in_snap;
    }

    v28 = a3[1];
    if ((v28 - 1) >= 2)
    {
      if (v28 != 4)
      {
        log_err("%s:%d: %s X %d\n", v21, v22, v23, v24, v25, v26, v27, "insert_jobj");
        tree_in_snap = 22;
LABEL_14:
        obj_release(v36);
        return tree_in_snap;
      }

      v29 = 3;
    }

    else
    {
      v29 = 1;
    }

    v30 = sub_100049698(a1, a3, v20, &v35, "addition", v25, v26, v27);
    if (v30 || (v30 = create_or_modify_jobj(a1, v36, a3, a4, v29, v31, v32, v33), v30))
    {
      tree_in_snap = v30;
    }

    else
    {
      sub_100049740(a1, v20, v36, a3, a4, v29);
      tree_in_snap = 0;
      if (*a3 == 3)
      {
        *(a3 + 14) &= 0xFFFFFFFFFBFBFFFFLL;
      }
    }

    goto LABEL_14;
  }

  tree_in_snap = fext_tree_insert(a1, a4, a3);
  if (tree_in_snap)
  {
    log_err("%s:%d: %s failed to insert fext in fext_tree: %d\n", v12, v13, v14, v15, v16, v17, v18, "insert_jobj");
  }

  return tree_in_snap;
}

uint64_t sub_100049698(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 == 3)
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  if ((~*(a2 + 8) & 0xFFFFFFFFFFF0000) != 0 && (v8 & 0xFFFFFFFFFFF0000) != 0xFFFFFFFFFFF0000)
  {
    return 0;
  }

  v10 = *(a1 + 1108);
  if (v10)
  {
    return 0;
  }

  if (a3 == 1 && *(a1 + 3592))
  {
    v12 = *(a2 + 8);
    log_err("%s:%d: %s Preventing %s of objects to synthetic folder (id %lld, parent %lld)\n", a2, a3, a4, a5, a6, a7, a8, "prevent_synthetic_object_operation");
    return 45;
  }

  return v10;
}

void sub_100049740(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a4 + 8) == 2)
  {
    v24[7] = v6;
    v24[8] = v7;
    if (!*(a1 + 1108) && a2 == 1)
    {
      if (*(a1 + 3592))
      {
        v24[0] = 0;
        if (!jfs_get_tree_in_snap(a1, 4, a5, *(a1 + 440), v24))
        {
          if (v24[0] != a3 && create_or_modify_jobj(a1, v24[0], a4, a5, a6, v13, v14, v15))
          {
            if (nx_ratelimit_log_allowed(*(a1 + 392)))
            {
              v23 = *(a4 + 8);
              log_err("%s:%d: %s Shadow create_or_modify_jobj(jobj %p id %lld xid %lld op %d) failed with error %d\n", v16, v17, v18, v19, v20, v21, v22, "duplicate_jobj_op_to_shadow_fs_root");
            }
          }

          obj_release(v24[0]);
        }
      }
    }
  }
}

uint64_t remove_jobj(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  matched = match_jobj_type_to_tree_type(a1, *a3, a2, a4, a5, a6, a7, a8);
  if (matched == 5)
  {
    tree_in_snap = fext_tree_remove(a1, a4, *(a3 + 1), *(a3 + 2));
    if (tree_in_snap)
    {
      log_err("%s:%d: %s fext_tree_remove returned %d\n", v12, v13, v14, v15, v16, v17, v18, "remove_jobj");
    }
  }

  else
  {
    v20 = matched;
    v29 = 0;
    v30 = 0;
    tree_in_snap = jfs_get_tree_in_snap(a1, matched, a4, *(a1 + 440), &v30);
    if (!tree_in_snap)
    {
      v24 = sub_100049698(a1, a3, v20, &v29, "removal", v21, v22, v23);
      if (v24)
      {
        tree_in_snap = v24;
      }

      else
      {
        tree_in_snap = create_or_modify_jobj(a1, v30, a3, a4, 4, v25, v26, v27);
        if (!tree_in_snap)
        {
          sub_100049740(a1, v20, v30, a3, a4, 4);
        }
      }

      obj_release(v30);
    }
  }

  return tree_in_snap;
}

unsigned __int16 *key_val_to_jobj(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (jobj_validate_key_val(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v22 = *a2 >> 60;
  LODWORD(v23) = 40;
  switch(v22)
  {
    case 1:
      if (!a4)
      {
        return 0;
      }

      v24 = a4[24] + 80;
      goto LABEL_32;
    case 2:
      goto LABEL_36;
    case 3:
      LODWORD(v23) = 648;
      goto LABEL_36;
    case 4:
      if (!a4)
      {
        return 0;
      }

      v24 = *(a2 + 8) + a4[1] + 24;
      goto LABEL_32;
    case 5:
      if (!a4)
      {
        return 0;
      }

      v26 = a4[4];
      goto LABEL_19;
    case 6:
    case 12:
      LODWORD(v23) = 24;
      goto LABEL_36;
    case 7:
      if (!a4)
      {
        return 0;
      }

      if (a4[2] == 6)
      {
        v26 = HIBYTE(a4[11]) + a4[11];
      }

      else
      {
        v26 = a4[11];
      }

LABEL_19:
      v24 = v26 + 40;
      goto LABEL_32;
    case 8:
      LODWORD(v23) = 56;
      goto LABEL_36;
    case 9:
      if ((*(*(a1 + 376) + 56) & 9) != 0)
      {
        LODWORD(v23) = (*(a2 + 8) & 0x3FF) + 72;
        goto LABEL_36;
      }

      v24 = *(a2 + 8) + 72;
LABEL_32:
      LODWORD(v23) = v24;
      if (v24 >> 16)
      {
        v34 = 1;
      }

      else
      {
        v34 = v24 == 0;
      }

      if (!v34)
      {
        goto LABEL_36;
      }

      return 0;
    case 10:
      LODWORD(v23) = 96;
      goto LABEL_36;
    case 11:
      v24 = *(a2 + 8) + 32;
      goto LABEL_32;
    case 13:
      if (!a4)
      {
        return 0;
      }

      v25 = *(a2 + 15);
      if (v25 == 2)
      {
        LODWORD(v23) = 80;
      }

      else
      {
        if (v25 != 1)
        {
          return 0;
        }

        LODWORD(v23) = *(a4 + 2) + 32;
      }

      goto LABEL_36;
    case 14:
      if ((*(a2 + 8) & 0xFC) != 0x10)
      {
        is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(a1 + 392));
        log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s *** unknown expanded obj type %hhu\n", v28, v29, v30, v31, v32, v33, "jobj_size_for_large_key_val");
        return 0;
      }

      v23 = (0x48006000200050uLL >> (16 * (*(a2 + 8) & 0xFu))) & 0x78;
LABEL_36:
      if (v22 == 14)
      {
        LODWORD(v35) = *(a2 + 8);
        if (v35 <= 0xF)
        {
          v124 = *(a2 + 8);
          log_err("%s:%d: unknown expanded type (%hhu) on record (%u)\n", v13, v14, v15, v16, v17, v18, v19, "jobj_allocate");
          return 0;
        }
      }

      else
      {
        v35 = *a2 >> 60;
      }

      switch(v35)
      {
        case 1:
          v20 = _apfs_calloc_typed(1uLL, 0x50uLL, 0x10100406569770FuLL);
          if (!v20)
          {
            return v20;
          }

          if (v23 <= 0x4F)
          {
            sub_1000A6E4C();
          }

          v42 = _apfs_calloc_typed(1uLL, v23 - 80, 0xDA2D0A4CuLL);
          *(v20 + 9) = v42;
          if (v42)
          {
            goto LABEL_80;
          }

          v50 = v20;
          v51 = 80;
          goto LABEL_73;
        case 2:
          v36 = 0x10000407607B2BCLL;
          v37 = 40;
          goto LABEL_78;
        case 3:
          v52 = _apfs_zalloc(2u);
          goto LABEL_79;
        case 4:
          if (v23 <= 0x17)
          {
            sub_1000A6DF4();
          }

          v39 = v23;
          v40 = -753538664;
          goto LABEL_65;
        case 5:
          if (v23 <= 0x27)
          {
            sub_1000A6DC8();
          }

          v39 = v23;
          v40 = -2067986874;
          goto LABEL_65;
        case 6:
          v41 = 887226456;
          goto LABEL_54;
        case 7:
          if (v23 <= 0x27)
          {
            sub_1000A6EA4();
          }

          v39 = v23;
          v40 = -1260340143;
          goto LABEL_65;
        case 8:
          v36 = 0x1000040C6EC63FFLL;
          v37 = 56;
          goto LABEL_78;
        case 9:
          v20 = _apfs_calloc_typed(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
          if (!v20)
          {
            return v20;
          }

          if (v23 <= 0x47)
          {
            sub_1000A6E78();
          }

          v54 = _apfs_malloc_typed(v23 - 72, 0xEA9F5E2EuLL);
          *(v20 + 8) = v54;
          if (v54)
          {
            goto LABEL_80;
          }

          v50 = v20;
          v51 = 72;
LABEL_73:
          _apfs_free(v50, v51);
          return 0;
        case 10:
        case 18:
          v36 = 0x10A004019B037CALL;
          v37 = 96;
          goto LABEL_78;
        case 11:
          if (v23 <= 0x1F)
          {
            sub_1000A6E20();
          }

          v39 = v23;
          v40 = 173046394;
          goto LABEL_65;
        case 12:
          v41 = -753538664;
LABEL_54:
          v36 = v41 | 0x100004000000000;
          v37 = 24;
          goto LABEL_78;
        case 13:
          v38 = HIBYTE(*(a2 + 8));
          if (v38 == 2)
          {
            v53 = 1202085462;
LABEL_77:
            v36 = v53 | 0x10A004000000000;
            v37 = 80;
LABEL_78:
            v52 = _apfs_calloc_typed(1uLL, v37, v36);
          }

          else
          {
            if (v38 != 1)
            {
              v126 = HIBYTE(*(a2 + 8));
              log_err("%s:%d: *** Unknown file info type %llu\n", v13, v14, v15, v16, v17, v18, v19, "jobj_allocate");
              return 0;
            }

            if (v23 <= 0x1F)
            {
              sub_1000A6D9C();
            }

            v39 = v23;
            v40 = 130634920;
LABEL_65:
            v52 = _apfs_malloc_typed(v39, v40 | 0x100004000000000);
          }

LABEL_79:
          v20 = v52;
          if (!v52)
          {
            return v20;
          }

LABEL_80:
          v55 = *a2;
          *(v20 + 1) = *a2 & 0xFFFFFFFFFFFFFFFLL;
          v55 >>= 60;
          *v20 = v55;
          *(v20 + 1) = 1;
          v20[1] = v23;
          switch(v55)
          {
            case 1:
              *(v20 + 1) = *a4;
              *(v20 + 2) = *(a4 + 1);
              *(v20 + 6) = *(a4 + 4);
              *(v20 + 7) = *(a4 + 5);
              v56 = a4[24];
              v20[32] = v56;
              v57 = *(v20 + 9);
              v58 = (a4 + 25);
              goto LABEL_86;
            case 2:
              v75 = *(a4 + 1);
              v76 = *a4 & 0xFFFFFFFFFFFFFFFLL;
              *(v20 + 1) = *a4 >> 60;
              *(v20 + 8) = *(a4 + 4);
              *(v20 + 2) = v76;
              *(v20 + 3) = v75;
              return v20;
            case 3:
              *(v20 + 2) = *a4;
              *(v20 + 3) = *(a4 + 1);
              *(v20 + 4) = *(a4 + 2);
              *(v20 + 5) = *(a4 + 3);
              *(v20 + 6) = *(a4 + 4);
              *(v20 + 7) = *(a4 + 5);
              *(v20 + 18) = *(a4 + 14);
              *(v20 + 8) = *(a4 + 6);
              *(v20 + 19) = *(a4 + 15);
              *(v20 + 20) = *(a4 + 16);
              *(v20 + 21) = *(a4 + 17);
              *(v20 + 22) = *(a4 + 18);
              *(v20 + 23) = *(a4 + 19);
              v20[48] = a4[40];
              v20[49] = a4[41];
              *(v20 + 13) = *(a4 + 42);
              if (a5 < 0x5D)
              {
                return v20;
              }

              if (xf_init_with_blob(v20 + 204, a4 + 46, a5 - 92))
              {
                v125 = *(v20 + 1);
                log_debug("%s:%d: failed to init extended fields on inode %lld from blob (xfret %d).\n", v66, v67, v68, v69, v70, v71, v72, "key_val_to_jobj");
                return v20;
              }

              v114 = v20[204];
              if (!v20[204])
              {
                return v20;
              }

              v115 = 0;
              v116 = (*(v20 + 52) + 2);
              break;
            case 4:
              v73 = *(a2 + 8);
              v20[10] = v73;
              strlcpy(v20 + 24, (a2 + 10), v73);
              *(v20 + 4) = *a4;
              v63 = a4[1];
              v20[11] = v63;
              v64 = v20 + v20[10] + 24;
              v65 = a4 + 2;
              goto LABEL_106;
            case 5:
              v60 = *a4;
              *(v20 + 2) = *(a2 + 8);
              *(v20 + 3) = v60;
              v56 = a4[4];
              v20[16] = v56;
              v57 = (v20 + 17);
              v58 = (a4 + 5);
LABEL_86:
              strlcpy(v57, v58, v56);
              return v20;
            case 6:
              *(v20 + 4) = *a4;
              return v20;
            case 7:
              *(v20 + 4) = *a4;
              LODWORD(v85) = a4[11];
              v87 = a4[2];
              v86 = a4 + 2;
              if (v87 == 6)
              {
                v85 = (v85 >> 8) + v85;
              }

              else
              {
                v85 = v85;
              }

              v64 = (v20 + 10);
              v63 = v85 + 20;
              v65 = v86;
              goto LABEL_106;
            case 8:
              *(v20 + 2) = *(a2 + 8);
              v74 = *a4;
              *(v20 + 5) = *a4 & 0xFFFFFFFFFFFFFFLL;
              *(v20 + 12) = *(a4 + 4);
              *(v20 + 48) = HIBYTE(v74);
              return v20;
            case 9:
              if ((*(*(a1 + 376) + 56) & 9) != 0)
              {
                v88 = *(a2 + 8);
                *(v20 + 14) = v88 >> 10;
                v89 = v88 & 0x3FF;
                v90 = 12;
              }

              else
              {
                *(v20 + 14) = 0;
                v89 = *(a2 + 8);
                v90 = 10;
              }

              v20[31] = v89;
              strlcpy(*(v20 + 8), (a2 + v90), v89);
              *(v20 + 2) = *a4;
              *(v20 + 3) = *(a4 + 1);
              v20[30] = a4[8];
              if (a5 < 0x13)
              {
                xf_init((v20 + 16), 0);
              }

              else if (xf_init_with_blob(v20 + 16, a4 + 9, a5 - 18))
              {
                v127 = *(v20 + 1);
                log_debug("%s:%d: failed to init extended fields on drec %lld from blob.\n", v91, v92, v93, v94, v95, v96, v97, "key_val_to_jobj");
              }

              return v20;
            case 10:
              *(v20 + 12) = *a4;
              *(v20 + 3) = vextq_s8(*(a4 + 1), *(a4 + 1), 8uLL);
              return v20;
            case 11:
              v59 = *(a2 + 8);
              if (v59 + 32 > v23)
              {
                sub_1000A6ED0();
              }

              v20[12] = v59;
              strlcpy(v20 + 26, (a2 + 10), v59);
              goto LABEL_84;
            case 12:
LABEL_84:
              *(v20 + 2) = *a4;
              return v20;
            case 13:
              v61 = *(a2 + 8);
              *(v20 + 16) = HIBYTE(v61);
              *(&v62 + 1) = *(a2 + 8);
              *&v62 = v61;
              *(v20 + 2) = v62 >> 56;
              if (HIBYTE(v61) == 2)
              {
                *(v20 + 3) = *a4;
                *(v20 + 4) = *(a4 + 1);
                *(v20 + 5) = *(a4 + 2);
                v20[24] = a4[12];
                if (a5 < 0x1B)
                {
                  log_err("%s:%d: %s s_hash <%llu> finfo attribution tag value <%zu> is less than sizeof(j_file_attribution_tag_val_t) <%lu\n", v43, v44, v45, v46, v47, v48, v49, "key_val_to_jobj");
                  return v20;
                }

                v98 = xf_init_with_blob(v20 + 28, a4 + 13, a5 - 26);
                if (v98)
                {
                  v106 = *(v20 + 1);
                  strerror(v98);
                  log_debug("%s:%d: failed to init extended fields on attribution tag record with objid <%lld> from blob due to error <%d> %s\n", v107, v108, v109, v110, v111, v112, v113, "key_val_to_jobj");
                  return v20;
                }

                v118 = v20[28];
                if (v20[28])
                {
                  v119 = 0;
                  for (i = (*(v20 + 8) + 2); ; i += 2)
                  {
                    v121 = *i;
                    if (*(i - 2) == 1)
                    {
                      break;
                    }

                    v119 += (v121 + 7) & 0x1FFF8;
                    if (!--v118)
                    {
                      return v20;
                    }
                  }

                  if (v121 > 0)
                  {
                    v122 = *(v20 + 9) + (v119 + v121);
                    goto LABEL_134;
                  }

                  v128 = *(v20 + 2) >> 8;
                  log_err("%s:%d: %s size (%d) of FILE_INFO_TAG_EXT_TYPE_SIGNING_ID in attribution tag record with s_hash <%llu> <= 0 \n", v99, v100, v101, v102, v103, v104, v105, "key_val_to_jobj");
                }
              }

              else if (HIBYTE(v61) == 1)
              {
                v20[12] = *a4;
                v63 = *(a4 + 2);
                *(v20 + 26) = v63;
                v64 = v20 + 27;
                v65 = (a4 + 3);
LABEL_106:
                memcpy(v64, v65, v63);
              }

              return v20;
            case 14:
              if (a3 < 0xC)
              {
                goto LABEL_101;
              }

              if (sub_10004A47C(a1, v20, a2, a4, a5, v47, v48, v49))
              {
                return v20;
              }

              v77 = *(v20 + 1);
LABEL_101:
              log_err("%s:%d: %s cannot translate key-val (%llu) into valid jobj\n", v43, v44, v45, v46, v47, v48, v49, "key_val_to_jobj");
              jobj_release(v78, v20, v79, v80, v81, v82, v83, v84);
              return 0;
            default:
              return v20;
          }

          break;
        case 16:
          v53 = -624060581;
          goto LABEL_77;
        case 17:
          v36 = 0x100004089CA3EB1;
          v37 = 32;
          goto LABEL_78;
        case 19:
          v36 = 0x10A0040D41B49CCLL;
          v37 = 72;
          goto LABEL_78;
        default:
          log_err("%s:%d: *** Can't allocate unknown obj type %d\n", v13, v14, v15, v16, v17, v18, v19, "jobj_allocate");
          return 0;
      }

      break;
    default:
      v123 = *a2 >> 60;
      log_err("%s:%d: *** unknown obj type %d\n", v13, v14, v15, v16, v17, v18, v19, "jobj_size_for_key_val");
      return 0;
  }

  while (1)
  {
    v117 = *v116;
    if (*(v116 - 2) != 4)
    {
      v117 = (v117 + 7) & 0x1FFF8;
      goto LABEL_124;
    }

    if (*v116)
    {
      break;
    }

LABEL_124:
    v116 += 2;
    v115 += v117;
    if (!--v114)
    {
      return v20;
    }
  }

  v122 = *(v20 + 53) + (v115 + v117);
LABEL_134:
  *(v122 - 1) = 0;
  return v20;
}

void *sub_10004A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 8);
  if (v8 <= 0xF)
  {
    v34 = *(a3 + 8);
    v38 = *a3 >> 60;
    log_err("%s:%d: %s unknown expanded type (%hhu) on record (%u)\n", a2, a3, a4, a5, a6, a7, a8, "large_key_val_to_jobj");
    return 0;
  }

  v9 = a2;
  *a2 = v8;
  if (v8 <= 17)
  {
    if (v8 != 16)
    {
      v10 = *a4;
      *(a2 + 16) = *(a3 + 12);
      *(a2 + 24) = v10;
      return v9;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4;
    *(a2 + 40) = *(a4 + 8);
    *(a2 + 48) = *(a4 + 16);
    *(a2 + 52) = *(a4 + 20);
    if (a5 >= 0x19)
    {
      if (xf_init_with_blob((a2 + 56), (a4 + 24), a5 - 24))
      {
        v36 = v9[1];
        log_err("%s:%d: %s failed to init extended fields on purgeable %llu from blob\n", v18, v19, v20, v21, v22, v23, v24, "large_key_val_to_jobj");
      }

      return v9;
    }

    v32 = a2 + 56;
LABEL_20:
    xf_init(v32, 0);
    return v9;
  }

  if (v8 == 18)
  {
    *(a2 + 16) = *(a4 + 24);
    *(a2 + 24) = *a4;
    *(a2 + 32) = *(a4 + 8);
    *(a2 + 40) = *(a4 + 16);
    *(a2 + 56) = *(a4 + 32);
    *(a2 + 48) = *(a4 + 40);
    *(a2 + 92) = *(a4 + 48);
    if (a5 < 0x35)
    {
      v32 = a2 + 64;
      goto LABEL_20;
    }

    if (xf_init_with_blob((a2 + 64), (a4 + 52), a5 - 52))
    {
      v37 = v9[1];
      log_err("%s:%d: %s failed to init extended fields on dir-stats %llu from blob\n", v25, v26, v27, v28, v29, v30, v31, "large_key_val_to_jobj");
    }
  }

  else
  {
    if (v8 != 19)
    {
      return v9;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4 & 0xFFFFFFFFFFFFFFLL;
    *(a2 + 40) = *(a4 + 7);
    if (a5 < 9)
    {
      v32 = a2 + 48;
      goto LABEL_20;
    }

    if (xf_init_with_blob((a2 + 48), (a4 + 8), a5 - 8))
    {
      v35 = v9[2];
      v39 = v9[3];
      log_err("%s:%d: %s failed to init extended fields on clone mapping <%llu/%llu> from blob\n", v11, v12, v13, v14, v15, v16, v17, "large_key_val_to_jobj");
    }
  }

  return v9;
}

uint64_t lookup_jobj_in_snap(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, unint64_t a5, unsigned __int16 **a6, uint64_t a7, uint64_t a8)
{
  matched = match_jobj_type_to_tree_type(a1, *a4, a2, a4, a5, a6, a7, a8);
  v14 = _apfs_zalloc(3u);
  if (!v14)
  {
    return 12;
  }

  v15 = v14;
  v23 = 832;
  v24 = 3808;
  make_jkey_from_jobj(a1, a4, v14, &v23);
  v22 = 0;
  tree_in_snap = jfs_get_tree_in_snap(a1, matched, 0, a5, &v22);
  if (tree_in_snap)
  {
    v17 = tree_in_snap;
LABEL_6:
    _apfs_zfree(v15, 3u);
    return v17;
  }

  v17 = bt_lookup_variant(v22, a5, v15, &v23, 0x340u, (v15 + 832), &v24, 0, 0, a3);
  obj_release(v22);
  if (v17)
  {
    goto LABEL_6;
  }

  *a6 = key_val_to_jobj(a1, v15, v23, (v15 + 832), v24, v18, v19, v20);
  _apfs_zfree(v15, 3u);
  if (*a6)
  {
    return 0;
  }

  else
  {
    return nx_corruption_detected_int(*(a1 + 392));
  }
}

uint64_t initialize_phys_range_lock_state(uint64_t a1, unsigned int a2)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = a2;
  *(a1 + 92) = a2;
  v5 = _apfs_calloc_typed(a2, 0x10uLL, 0x1000040451B5BE8uLL);
  *a1 = v5;
  if (v5)
  {
    v6 = (a2 + 63) >> 6;
    *(a1 + 88) = v6;
    v7 = _apfs_calloc_typed(v6, 8uLL, 0x100004000313F17uLL);
    *(a1 + 72) = v7;
    if (v7)
    {
      v8 = _apfs_calloc_typed(*(a1 + 88), 8uLL, 0x100004000313F17uLL);
      *(a1 + 80) = v8;
      if (v8)
      {
        new_lock((a1 + 8));
        return 0;
      }

      _apfs_free(*a1, 16 * v4);
      v10 = *(a1 + 72);
      v11 = 8 * *(a1 + 88);
    }

    else
    {
      v10 = *a1;
      v11 = 16 * v4;
    }

    _apfs_free(v10, v11);
  }

  return 12;
}

uint64_t release_phys_range_lock_state(uint64_t a1)
{
  _apfs_free(*a1, 16 * *(a1 + 92));
  _apfs_free(*(a1 + 72), 8 * *(a1 + 88));
  _apfs_free(*(a1 + 80), 8 * *(a1 + 88));

  return free_lock((a1 + 8));
}

uint64_t jobj_type_from_possibly_large_key(uint64_t a1, uint64_t a2)
{
  v2 = *a2 >> 60;
  if (v2 == 14)
  {
    if (!a1 || (*(*(a1 + 376) + 57) & 2) != 0)
    {
      LODWORD(v2) = *(a2 + 8);
    }

    else
    {
      is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(a1 + 392));
      log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s expanded record found on unsupported volume\n", v4, v5, v6, v7, v8, v9, "jobj_type_from_possibly_large_key");
      LOBYTE(v2) = 15;
    }
  }

  return v2;
}

uint64_t iterate_jobjs_with_hint_and_snap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t (*a6)(__int128 *, uint64_t), uint64_t a7, _OWORD *a8, unsigned int a9)
{
  matched = match_jobj_type_to_tree_type(a1, *a5, a2, a4, a5, a6, a7, a8);
  if (matched == 5)
  {
    v17 = *(a5 + 2);
    if (v17 == -1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(a5 + 2);
    }

    if (v17 == -1 && a9 == 4)
    {
      v20 = a9 & 0xFFFF0000;
    }

    else
    {
      v20 = a9;
    }

    return fext_tree_iterate_fexts_with_flags(a1, a3, a4, *(a5 + 1), v18, a8, v20, a6, a7);
  }

  v22 = matched;
  v23 = _apfs_zalloc(3u);
  if (!v23)
  {
    return 12;
  }

  v24 = v23;
  v49 = 832;
  v47 = a6;
  if (!*(a5 + 1) && !*a5)
  {
    if ((a9 & 0x10000) == 0 && a5[1])
    {
      goto LABEL_16;
    }

LABEL_20:
    v25 = 1;
    goto LABEL_21;
  }

  if ((a9 & 0x10000) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v25 = 0;
LABEL_21:
  v52 = 0;
  v51 = 0u;
  memset(v50, 0, sizeof(v50));
  v48 = 0;
  if ((a9 & 0x20000) != 0)
  {
    v27 = v25;
  }

  else
  {
    v27 = 1;
  }

  v46 = v27;
  make_jkey_from_jobj(a1, a5, v23, &v49);
  if (v22 == 1)
  {
    v28 = *(a5 + 1);
    if ((~v28 & 0xFFFFFFFFFFF0000) == 0 || v28 == 2)
    {
      v22 = 4;
    }

    else
    {
      v22 = 1;
    }
  }

  tree_in_snap = jfs_get_tree_in_snap(a1, v22, a3, a4, &v48);
  if (tree_in_snap)
  {
    v26 = tree_in_snap;
    goto LABEL_38;
  }

  bt_iterator_init_with_hint(v50, v48, a4, a9, v24, v49, 0x340u, v24 + 104, 0xEE0u, a8);
  if ((v31 & 0xFFFFFFFD) != 0)
  {
    v26 = v31;
    goto LABEL_37;
  }

  if (bt_iterator_ended(v50))
  {
LABEL_36:
    v26 = 0;
    goto LABEL_37;
  }

  v35 = v25 | ((a9 & 0x20000) >> 17);
  while (1)
  {
    if (v35)
    {
      if ((v46 & 1) == 0)
      {
        if (*a5)
        {
          v36 = *a5;
          if (v36 != jobj_type_from_possibly_large_key(a1, v24))
          {
            goto LABEL_54;
          }
        }
      }
    }

    else if ((*v24 & 0xFFFFFFFFFFFFFFFLL) != *(a5 + 1) || *a5 && jobj_type_from_possibly_large_key(a1, v24) != *a5)
    {
      goto LABEL_36;
    }

    v37 = key_val_to_jobj(a1, v24, v51, v24 + 416, DWORD1(v51), v32, v33, v34);
    if (!v37)
    {
      break;
    }

    v38 = v37;
    v26 = v47(v37, a7);
    jobj_release(v26, v38, v39, v40, v41, v42, v43, v44);
    if (v26)
    {
      goto LABEL_37;
    }

LABEL_54:
    v45 = bt_iterator_next(v50);
    if ((a9 & 0x40000) == 0)
    {
      v26 = v45;
      if (v45)
      {
        goto LABEL_37;
      }
    }

    if (bt_iterator_ended(v50))
    {
      goto LABEL_36;
    }
  }

  if ((a9 & 0x40000) != 0)
  {
    goto LABEL_54;
  }

  v26 = 12;
LABEL_37:
  obj_release(v48);
LABEL_38:
  _apfs_zfree(v24, 3u);
  return v26;
}

uint64_t iterate_raw_jobjs_with_hint(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, size_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t *a9, int a10)
{
  v27[0] = a1;
  v27[1] = a6;
  v14 = *a4;
  v15 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  v27[2] = a7;
  v27[3] = v15;
  v16 = v14 >> 60;
  if (v14 >> 60 == 14)
  {
    LODWORD(v16) = a4[8];
  }

  v28 = v16;
  BYTE2(v28) = 0;
  *v26 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  if (v15 || v16)
  {
    if ((a10 & 0x20000) != 0)
    {
      BYTE2(v28) = 1;
    }
  }

  else
  {
    BYTE1(v28) = 1;
  }

  if ((~v14 & 0xFFFFFFFFFFF0000) == 0 || v15 == 2)
  {
    v18 = 4;
  }

  else
  {
    v18 = 1;
  }

  if (a2 == 1)
  {
    a2 = v18;
  }

  result = jfs_get_tree_in_snap(a1, a2, a3, *(a1 + 440), v26);
  if (!result)
  {
    if ((a10 & 0x4000) != 0)
    {
      v20 = _apfs_zalloc(3u);
      if (!v20)
      {
        return 12;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 440);
    v22 = a10 & 0x7000;
    switch(v22)
    {
      case 0x4000:
        v23 = bt_iterate_individual(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_10004AE84, v27, v20, v20 + 832);
        break;
      case 0x2000:
        v23 = bt_iterate_bulk(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_10004AE84, v27);
        break;
      case 0x1000:
        v23 = bt_iterate_per_node(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_10004AE84, v27);
        break;
      default:
        v24 = 22;
        if ((a10 & 0x4000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
    }

    v24 = v23;
    if ((a10 & 0x4000) == 0)
    {
LABEL_30:
      obj_release(*v26);
      if (v24 == 2 || v24 == 0x80000000)
      {
        result = 0;
      }

      else
      {
        result = v24;
      }

      if (a8)
      {
        *a8 = result == 0;
      }

      return result;
    }

LABEL_29:
    _apfs_zfree(v20, 3u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_10004AE84(void *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  v12 = a4;
  result = jobj_validate_key_val(*a5, a1, a2, a3, a4, a6, a7, a8);
  if (result)
  {
    return result;
  }

  v14 = *(a5 + 34);
  if (*(a5 + 33) != 1)
  {
    if ((*(a5 + 34) & 1) == 0)
    {
      if ((*a1 & 0xFFFFFFFFFFFFFFFLL) != *(a5 + 24) || *(a5 + 32) && jobj_type_from_possibly_large_key(*a5, a1) != *(a5 + 32))
      {
        return 0x80000000;
      }

      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (*(a5 + 34))
  {
LABEL_6:
    if (*(a5 + 32) && jobj_type_from_possibly_large_key(*a5, a1) != *(a5 + 32))
    {
      return 0;
    }
  }

LABEL_12:
  v16 = *(a5 + 8);
  v15 = *(a5 + 16);

  return v16(a1, v11, a3, v12, v15);
}

uint64_t apfs_cstrncmp(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = v4 - 2;
  if (v4 < 2)
  {
LABEL_11:
    if (a3 < a4)
    {
      LODWORD(v7) = -1;
    }

    else
    {
      LODWORD(v7) = 1;
    }

    if (a3 == a4)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    while (1)
    {
      v6 = *a1;
      v7 = v6 - *a2;
      if (v7)
      {
        break;
      }

      ++a1;
      ++a2;
      if (v6)
      {
        v8 = v5 == 0;
      }

      else
      {
        v8 = 1;
      }

      --v5;
      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  return v7;
}

uint64_t create_new_crypto_state_for_id(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 4)
  {
    panic("assertion failed: %s", "crypto_id == 4");
  }

  v5 = _apfs_calloc_typed(1uLL, 0x60uLL, 0x10A00405D85AB5CuLL);
  if (v5)
  {
    v6 = v5;
    v7 = _apfs_malloc_typed(0xD0uLL, 0x1000040B4E0BC51uLL);
    if (v7)
    {
      v8 = v7;
      *v6 = 4;
      *v7 = 2621703;
      *(v7 + 1) = 4;
      *(v7 + 4) = 1;
      wrap_crypto_state(a1, v6, v7);
      inserted = insert_jobj(a1, 1, v8, a2, v9, v10, v11, v12);
      crypto_obj_release(v6);
      _apfs_free(v8, 208);
      return inserted;
    }

    crypto_obj_release(v6);
  }

  return 12;
}

uint64_t get_new_crypto_id(uint64_t a1, unsigned int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  vol_crypto = get_vol_crypto(a1);
  if (vol_crypto <= 1)
  {
    if (!vol_crypto)
    {
      *a5 = 0;
LABEL_4:
      v13 = *(a1 + 504);
      if (!v13)
      {
        v13 = a1;
      }

      if ((*(*(v13 + 376) + 264) & 9) == 0)
      {
        panic("assertion failed: %s", "!((err == 0) && (*crypto_id == 0) && fs_is_content_protected(apfs))");
      }

      return 0;
    }

    v16 = *(a1 + 504);
    if (!v16)
    {
      v16 = a1;
    }

    if ((*(*(v16 + 376) + 264) & 9) != 0)
    {
      panic("assertion failed: %s", "fs_is_content_protected(apfs)");
    }

    if (*(a1 + 1108))
    {
      panic("assertion failed: %s", "!apfs->apfs_readonly");
    }

    v17 = _apfs_calloc_typed(1uLL, 0x60uLL, 0x10A00405D85AB5CuLL);
    if (v17)
    {
      v18 = v17;
      if ((*a5 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        panic("invalid crypto id");
      }

      v19 = _apfs_malloc_typed(0xD0uLL, 0x1000040B4E0BC51uLL);
      if (v19)
      {
        v20 = v19;
        add_explicit = *a5;
        if (!*a5)
        {
          if (!a4)
          {
            sub_1000A6EFC();
          }

          add_explicit = atomic_fetch_add_explicit((*(a1 + 376) + 176), 1uLL, memory_order_relaxed);
          *a5 = add_explicit;
        }

        *v18 = add_explicit;
        *v19 = 2621703;
        *(v19 + 1) = *a5;
        *(v19 + 4) = 1;
        if (crypto_state_init())
        {
          crypto_obj_release(v18);
          _apfs_free(v20, 208);
          return 1;
        }

        wrap_crypto_state(a1, v18, v20);
        v20[1] += v20[19];
        inserted = insert_jobj(a1, 1, v20, a4, v23, v24, v25, v26);
        if (inserted)
        {
          v14 = inserted;
          *a5 = 0;
          crypto_obj_release(v18);
          _apfs_free(v20, 208);
          return v14;
        }

        _apfs_free(v20, 208);
        if (*a5)
        {
          return 0;
        }

        goto LABEL_4;
      }

      _apfs_free(v18, 96);
    }

    return 12;
  }

  if (vol_crypto != 2)
  {
    if (*(a1 + 1108))
    {
      panic("assertion failed: %s", "!apfs->apfs_readonly");
    }

    if ((a3 & 2) != 0 || a2 <= 6 && ((1 << a2) & 0x46) != 0 || (v15 = apfs_kb_supports_class(a1, 4u), a2 == 4) && v15)
    {
      if (!a6)
      {
        panic("assertion failed: %s", "ino");
      }

      panic("assertion failed: %s", "ino_has_vnode(ino)");
    }
  }

  v14 = 0;
  *a5 = 4;
  return v14;
}

uint64_t cp_dec_ref(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    panic("assertion failed: %s", "xid");
  }

  if ((get_vol_crypto(a1) | 2) != 3)
  {
    return 0;
  }

  return sub_10004F224(a1, a2, a3, v6, v7, v8, v9, v10);
}

uint64_t fs_reset_dstream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v13 = a5;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  v9 = *(a2 + 76);
  if ((*(a2 + 64) & 8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  new_crypto_id = get_new_crypto_id(a1, v9, v10, a6, &v13, a2);
  if (!new_crypto_id)
  {
    *(a4 + 16) = v13;
    sub_10004C630(a1, a2);
    sub_10004C630(a1, a2);
    if ((*(a2 + 114) & 2) != 0)
    {
      sub_1000A6F28();
    }

    get_vol_crypto(a1);
  }

  return new_crypto_id;
}

uint64_t fs_create_dstream(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v43 = 0;
  memset(__src, 0, sizeof(__src));
  v41 = 0;
  if ((*(a2 + 96) & 0xF000) != 0x8000)
  {
    add_explicit = 0;
    v10 = 0;
    v11 = 0;
    inserted = 22;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = *(a1 + 376);
  if ((*(v8 + 57) & 2) == 0 || (~*(a2 + 84) & 0x40000020) != 0)
  {
    add_explicit = *(a2 + 8);
  }

  else
  {
    if (!a3)
    {
      sub_1000A6EFC();
    }

    add_explicit = atomic_fetch_add_explicit((v8 + 176), 1uLL, memory_order_relaxed);
  }

  v13 = fs_reset_dstream(a1, a2, a3, __src, add_explicit, a3);
  if (v13)
  {
    inserted = v13;
    v10 = 0;
    v11 = 0;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (xf_set((a2 + 408), 8, 32, __src, 40))
  {
    v36 = *(a2 + 8);
    log_err("%s:%d: %s *** failed to set dstream as an extended field of ino %lld (ret %d)\n", v14, v15, v16, v17, v18, v19, v20, "fs_create_dstream");
    v11 = 0;
    v10 = 1;
    inserted = 12;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v40 = 0;
  if (xf_get_ptr_and_size((a2 + 408), 8, 0, &v41, &v40) || v40 != 40)
  {
    v38 = *(a2 + 8);
    log_err("%s:%d: %s *** failed to fetch the dstream pointer for %lld (ret %d)\n", v22, v23, v24, v25, v26, v27, v28, "fs_create_dstream");
    v41 = 0;
    v10 = 1;
    inserted = 2;
  }

  else
  {
    v39[1] = *(a2 + 24);
    v39[0] = 1573126;
    v10 = 1;
    v39[2] = 1;
    inserted = insert_jobj(a1, 1, v39, a3, v25, v26, v27, v28);
    if (inserted)
    {
      v37 = *(a2 + 24);
      log_err("%s:%d: %s failed to insert new dstream_id %llu (ret %d)", v29, v30, v31, v32, v33, v34, v35, "fs_create_dstream");
      v41 = 0;
    }
  }

  v11 = 1;
  if (a4)
  {
LABEL_14:
    *a4 = inserted;
  }

LABEL_15:
  if (inserted)
  {
    if (v10)
    {
      cp_dec_ref(a1, add_explicit, a3);
    }

    if (v11)
    {
      xf_remove((a2 + 408), 8);
    }
  }

  return v41;
}

uint64_t dir_rec_alloc_with_hash(uint64_t a1, char a2, char *__s, size_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a8)
  {
    v12 = a4;
    *a8 = 0;
    if (a4)
    {
      if (__s[a4 - 1])
      {
        v12 = a4 + 1;
        goto LABEL_8;
      }
    }

    else
    {
      v12 = strlen(__s) + 1;
    }

    if (v12 != 1)
    {
LABEL_8:
      if (v12 > 0x2FE)
      {
        return 7;
      }

      v17 = _apfs_calloc_typed(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
      if (v17)
      {
        v18 = v17;
        v19 = _apfs_malloc_typed(v12, 0x47093A9uLL);
        *(v18 + 8) = v19;
        if (v19)
        {
          *v18 = 9;
          *(v18 + 1) = a2;
          *(v18 + 1) = v12 + 72;
          *(v18 + 1) = a6;
          memcpy(v19, __s, v12 - 1);
          *(*(v18 + 8) + v12 - 1) = 0;
          *(v18 + 31) = v12;
          v20 = *(*(a1 + 376) + 56);
          if (v20)
          {
            if (a5 == -1)
            {
              v22 = (v20 >> 3) & 1;
              goto LABEL_25;
            }
          }

          else if (a5 == -1 || (v20 & 8) == 0)
          {
            if ((v20 & 8) == 0)
            {
              v18[14] = 0;
LABEL_21:
              *(v18 + 30) = 0;
              *(v18 + 2) = a7;
              *(v18 + 3) = 0;
              xf_init((v18 + 8), 0);
              v16 = 0;
              *a8 = v18;
              return v16;
            }

            LODWORD(v22) = 1;
LABEL_25:
            v24 = -1;
            v23 = utf8_normalizeOptCaseFoldAndHash(*(v18 + 8), v12 - 1, v22, sub_10004BA54, &v24);
            if (v23)
            {
              v16 = v23;
              _apfs_free(*(v18 + 8), *(v18 + 31));
              _apfs_free(v18, 72);
              return v16;
            }

            v18[14] = v24 & 0x3FFFFF;
            goto LABEL_21;
          }

          v18[14] = a5;
          goto LABEL_21;
        }

        _apfs_free(v18, 72);
      }

      return 12;
    }
  }

  return 22;
}

uint64_t sub_10004BA54(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = crc32c(*a3, a1, a2);
  *a3 = result;
  return result;
}

uint64_t update_time(uint64_t a1, void *a2, int a3)
{
  if (!a1)
  {
    sub_1000A6FD8();
  }

  if (!a2)
  {
    sub_1000A6FAC();
  }

  v4 = a3;
  if (!a3)
  {
    sub_1000A6F80();
  }

  if (*(a1 + 1108))
  {
    sub_1000A6F54();
  }

  result = get_timestamp();
  if (v4)
  {
    a2[5] = result;
  }

  if ((v4 & 2) != 0)
  {
    a2[6] = result;
  }

  a2[14] |= 0x40000uLL;
  return result;
}

uint64_t apfs_inc_parent_nlink(uint64_t a1, uint64_t a2)
{
  __dst = 0;
  v3 = *(a1 + 376);
  if ((*(v3 + 57) & 2) != 0)
  {
    result = 0;
    ++*(a2 + 104);
  }

  else if ((*(v3 + 48) & 2) != 0)
  {
    result = xf_get((a2 + 408), 17, 0, &__dst, 8uLL);
    if (!result)
    {
      ++__dst;
      return xf_set((a2 + 408), 17, 0, &__dst, 8);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t apfs_reset_parent_nlink(uint64_t a1, uint64_t a2)
{
  __src = 0;
  v2 = *(a1 + 376);
  if ((*(v2 + 57) & 2) != 0)
  {
    result = 0;
    *(a2 + 104) = 0;
  }

  else if ((*(v2 + 48) & 2) != 0)
  {
    return xf_set((a2 + 408), 17, 0, &__src, 8);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t utf8_strlen_with_ascii_status(uint64_t a1, unint64_t a2, unsigned __int8 a3, _DWORD *a4, int *a5)
{
  if (!a1)
  {
    sub_1000A7004();
  }

  if (a4)
  {
    *a4 = 0;
  }

  v10 = 0;
  v11 = 0;
  v18 = 0;
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v12 = a2 - v11;
  if (a2 > v11)
  {
    v13 = (a1 + v11);
    while (1)
    {
      v14 = sub_10004BD80(v13, v12, &v18);
      v15 = v18;
      if ((v18 & 0x80000000) != 0)
      {
        v10 = 0;
        if (!a5)
        {
          return v10;
        }

        v16 = 92;
        goto LABEL_30;
      }

      if (!v18)
      {
        break;
      }

      if (a4 && v18 >= 0x80)
      {
        *a4 = 1;
      }

      if (v15 >= 0x2000)
      {
        if ((a3 & 2) != 0 && ((v15 & 0x7FFFFFFE) == 0x200E || v15 - 8234 < 6 || v15 - 8298 < 6 || (~v15 & 0xFFFE) == 0 || v15 == 65279 || v15 - 64976 <= 0x1F))
        {
          v10 = 0;
          if (!a5)
          {
            return v10;
          }

          v16 = 1;
LABEL_30:
          *a5 = v16;
          return v10;
        }

        v10 += a3 & ((v15 & 0xFFFF0000) != 0);
      }

      v11 += v14;
      ++v10;
      if (a2)
      {
        goto LABEL_5;
      }

LABEL_7:
      v13 = (a1 + v11);
      v12 = -1;
    }
  }

  if (a5)
  {
    v16 = 0;
    goto LABEL_30;
  }

  return v10;
}

uint64_t sub_10004BD80(char *a1, uint64_t a2, int *a3)
{
  *a3 = -1;
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  if (a2 == -1)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  v5 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v6 = 1;
LABEL_10:
    *a3 = v5;
    return v6;
  }

  if ((v5 - 194) <= 0x1D)
  {
    if (v4 != 1)
    {
      v7 = a1[1];
      if ((v7 & 0xC0) == 0x80)
      {
        v8 = v7 & 0x3F | ((v5 & 0x1F) << 6);
        v6 = 2;
        v5 = v8;
        goto LABEL_10;
      }
    }

    return 0;
  }

  if ((v5 & 0xF0) == 0xE0)
  {
    if (v4 < 3)
    {
      return 0;
    }

    if (v5 == 224)
    {
      if (a1[1] - 192 < 0xFFFFFFE0)
      {
        return 0;
      }

      goto LABEL_38;
    }

    if ((v5 - 225) > 0xB)
    {
      if (v5 == 237)
      {
        if (a1[1] > -97)
        {
          return 0;
        }

        goto LABEL_38;
      }
    }

    else if ((a1[1] & 0xC0) != 0x80)
    {
      return 0;
    }

    if ((~v5 & 0xEE) == 0 && (a1[1] & 0xC0) != 0x80)
    {
      return 0;
    }

LABEL_38:
    v11 = a1[2];
    if ((v11 & 0xC0) == 0x80)
    {
      v5 = ((v5 & 0xF) << 12) | ((a1[1] & 0x3F) << 6) | v11 & 0x3F;
      v6 = 3;
      goto LABEL_10;
    }

    return 0;
  }

  v6 = 0;
  if (v4 >= 4 && (v5 - 245) >= 0xFFFFFFFB)
  {
    if (v5 == 240)
    {
      v10 = a1[1];
      if ((v10 - 192) < 0xFFFFFFD0)
      {
        return 0;
      }
    }

    else
    {
      LOBYTE(v10) = a1[1];
      if ((v5 - 241) > 2)
      {
        if (v10 > -113)
        {
          return 0;
        }
      }

      else if ((v10 & 0xC0) != 0x80)
      {
        return 0;
      }
    }

    v12 = a1[2];
    if ((v12 & 0xC0) == 0x80)
    {
      v13 = a1[3];
      if ((v13 & 0xC0) == 0x80)
      {
        v5 = ((v5 & 7) << 18) | ((v10 & 0x3F) << 12) | ((v12 & 0x3F) << 6) | v13 & 0x3F;
        v6 = 4;
        goto LABEL_10;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t fs_lookup_name_with_parent_id(uint64_t a1, uint64_t a2, char *__s, size_t a4, uint64_t *a5, int *a6, void *a7)
{
  v42 = 0;
  v13 = *(*(a1 + 376) + 56);
  if ((v13 & 9) == 0)
  {
    v36[0] = 0;
    v16 = dir_rec_alloc_with_hash(a1, 0, __s, a4, -1, a2, 0, v36);
    if (!v16)
    {
      v16 = lookup_jobj_in_snap(a1, 1, a5, v36[0], *(a1 + 440), &v42, v14, v15);
      jobj_release(v16, v36[0], v17, v18, v19, v20, v21, v22);
    }

    goto LABEL_18;
  }

  if (a4)
  {
    if (__s[a4 - 1])
    {
      ++a4;
      goto LABEL_10;
    }
  }

  else
  {
    a4 = strlen(__s) + 1;
  }

  if (a4 == 1)
  {
    v23 = 0;
    v16 = 22;
    goto LABEL_19;
  }

LABEL_10:
  if (a4 > 0x2FE)
  {
    v23 = 0;
    v16 = 7;
    goto LABEL_19;
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36[0] = 4718601;
  v37 = 0u;
  v36[1] = a2;
  DWORD2(v39) = 0;
  v24 = a4 - 1;
  v41 = -1;
  v25 = utf8_normalizeOptCaseFoldAndHash(__s, a4 - 1, (v13 >> 3) & 1, sub_10004BA54, &v41);
  if (v25)
  {
    v16 = v25;
    if (v25 == 92)
    {
      v31 = __s;
      v32 = v24;
      v26 = iterate_jobjs_with_hint_and_snap(a1, 1, 0, *(a1 + 440), v36, sub_10004C218, &v31, a5, 4u);
      if (v26 == -1)
      {
        v16 = 0;
        if (*(&v32 + 1))
        {
          v42 = *(&v32 + 1);
        }
      }

      else if (v26)
      {
        v16 = v26;
      }

      else
      {
        v16 = 2;
      }

      v23 = -1;
      goto LABEL_19;
    }

LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v23 = v41 & 0x3FFFFF;
  v33 = 0;
  v31 = __s;
  *&v32 = v41 & 0x3FFFFFLL;
  *(&v32 + 1) = v24;
  v34 = a1;
  v35 = a7 != 0;
  v29 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x9000000000000000;
  v30 = v41 << 10;
  v28 = iterate_raw_jobjs_with_hint(a1, 1, 0, &v29, 0xCuLL, sub_10004C33C, &v31, 0, a5, 4100);
  if (v28 == -1)
  {
    v16 = 0;
    if (v33)
    {
      v42 = v33;
    }
  }

  else if (v28)
  {
    v16 = v28;
  }

  else
  {
    v16 = 2;
  }

LABEL_19:
  if (a7 && !v16)
  {
    *a7 = v42;
  }

  if (a6 && (v16 | 2) == 2)
  {
    *a6 = v23;
  }

  return v16;
}

uint64_t sub_10004C218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 + 1 != *(a1 + 62) || memcmp(*(a1 + 64), *a2, v2))
  {
    return 0;
  }

  v7 = _apfs_calloc_typed(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
  *(a2 + 16) = v7;
  if (!v7)
  {
    return 12;
  }

  v8 = _apfs_malloc_typed(*(a1 + 62), 0x76690F2EuLL);
  v9 = *(a2 + 16);
  *(v9 + 8) = v8;
  if (!v8)
  {
    _apfs_free(v9, 72);
    return 12;
  }

  *v9 = *a1;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  *(v9 + 8) = *(a1 + 64);
  v9[2] = v11;
  v9[3] = v12;
  v9[1] = v10;
  memcpy(*(*(a2 + 16) + 64), *(a1 + 64), *(a1 + 62));
  v13 = xf_deep_copy(*(a2 + 16) + 32, (a1 + 32));
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v13;
  _apfs_free(*(*(a2 + 16) + 64), *(a1 + 62));
  _apfs_free(*(a2 + 16), 72);
  *(a2 + 16) = 0;
  return v5;
}

uint64_t sub_10004C33C(uint64_t a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5)
{
  v20 = 0;
  v5 = *(a1 + 8);
  v6 = *(a5 + 8);
  if (v5 >> 10 < v6)
  {
    return 0;
  }

  if (v5 >> 10 != v6)
  {
    return 2;
  }

  v12 = *(a1 + 8) & 0x3FF;
  v13 = *(a5 + 16);
  v14 = *a5;
  if (v13 == (v5 & 0x3FF) && !strncmp((a1 + 12), *a5, v5 & 0x3FF))
  {
    v20 = 1;
  }

  else if (utf8_normalizeOptCaseFoldAndCompare(a1 + 12, (v12 - 1), v14, v13, (*(*(*(a5 + 32) + 376) + 56) >> 3) & 1, &v20) || (v20 & 1) == 0)
  {
    return 0;
  }

  if (*(a5 + 40) && (v19 = key_val_to_jobj(*(a5 + 32), a1, a2, a3, a4, v15, v16, v17), (*(a5 + 24) = v19) == 0))
  {
    return 12;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void fs_sb_dirty(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 484) & 4) != 0)
  {
    v4 = *(a1 + 376);
    if ((*(v4 + 264) & 4) == 0)
    {
      atomic_fetch_or_explicit((v4 + 264), 4uLL, memory_order_relaxed);
    }

    pthread_mutex_lock((a1 + 1288));
    *(a1 + 480) &= ~0x400000000uLL;
    pthread_mutex_unlock((a1 + 1288));
  }

  *(*(a1 + 376) + 1056) = a2;
  v5 = apfs_doc_id_index_supported(a1);
  v6 = *(a1 + 376);
  if (v5)
  {
    *(v6 + 1064) |= 0x10u;
  }

  *(v6 + 1120) = a2;

  obj_dirty(a1, a2, 0);
}

uint64_t ino_is_class_v(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 96) & 0xF000) != 0x8000)
  {
    return 0;
  }

  if (get_vol_crypto(a1) != 3 || (*(a2 + 64) & 8) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 76) & 0x1F;
  if (v4 == 3)
  {
    return 1;
  }

  else
  {
    return (v4 == 4) & ~apfs_kb_supports_class(a1, 4u);
  }
}

uint64_t ino_get_class_check(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a1 + 504);
  if (!v3)
  {
    v3 = a1;
  }

  if ((*(*(v3 + 376) + 264) & 9) != 0)
  {
    sub_1000A7030();
  }

  if (ino_is_class_v(a1, a2))
  {
    *a3 = 5;
    return 1;
  }

  else
  {
    v7 = *(a2 + 76);

    return cp_to_ino_class(v7, a3);
  }
}

uint64_t cp_to_ino_class(char a1, unsigned int *a2)
{
  v2 = a1 & 0x1F;
  if (v2 > 7 || v2 == 5)
  {
    return 0;
  }

  *a2 = v2;
  return 1;
}

uint64_t sub_10004C630(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_1000A7088();
  }

  if (!a2)
  {
    sub_1000A705C();
  }

  return result;
}

uint64_t evict_mapping_key_compare(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v6 = *a2 > *a4;
  if (*a2 < *a4)
  {
    v6 = -1;
  }

  *a6 = v6;
  return 0;
}

unint64_t sub_10004C674(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 - 2;
  if (a2 - 2) < 5 && ((0x1Du >> v4))
  {
    v5 = qword_1000B30C0[v4];
    v6 = qword_1000B30E8[v4];
  }

  else
  {
    v6 = 100;
    if (((a4 > 4) & ((*(*(a1 + 376) + 48) & 2) >> 1)) != 0)
    {
      v6 = 80;
    }

    v5 = 3;
  }

  return 3 * a3 * v5 + a4 + v6;
}

uint64_t sub_10004C6E4(uint64_t a1, int a2, unint64_t a3)
{
  if (a2 == 6)
  {
    return 0;
  }

  if (a2 == 2 || a2 == 4)
  {
    v4 = *(a1 + 392);
    if (!*(v4 + 648))
    {
      return 0;
    }

    v5 = 17920;
  }

  else
  {
    v4 = *(a1 + 392);
    v5 = 25600;
  }

  if (*(v4 + 640) == 1)
  {
    v6 = *(v4 + 656) == 0;
    v7 = 4000;
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 4000;
  }

  if (a3 / 0x64 < v7)
  {
    v7 = a3 / 0x64;
  }

  if (v7 <= 0x64)
  {
    return 100;
  }

  else
  {
    return v7;
  }
}

uint64_t fs_tx_can_log(uint64_t a1)
{
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  v2 = 1000000 * v5.tv_sec + SLODWORD(v5.tv_nsec) / 1000;
  atomic_fetch_add_explicit((a1 + 3824), 1u, memory_order_relaxed);
  v3 = v2 - *(a1 + 3816);
  if (*(a1 + 3824) >= 17)
  {
    if (v3 < 0xF4240)
    {
      result = 0;
      *(a1 + 3816) = v2;
      return result;
    }

    goto LABEL_5;
  }

  if (v3 > 0xF423F)
  {
LABEL_5:
    *(a1 + 3816) = v2;
    result = 1;
    *(a1 + 3824) = 1;
    return result;
  }

  return 1;
}

uint64_t sub_10004C838(uint64_t a1, int a2, uint64_t a3, unint64_t a4, int a5, uint64_t *a6)
{
  v8 = a2;
  v10 = (*(a1 + 392) + 488);
  v11 = *(a1 + 376);
  v12 = *(v11 + 72);
  if (v12 && v12 == *(v11 + 80))
  {
    v10 = (a1 + 424);
  }

  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v13 = sub_10004C674(a1, a2, a3, a4);
  spaceman_currently_available_space(a1, 0, &v69, 0, 0, 0);
  v14 = sub_10004C6E4(a1, v8, v69);
  pthread_mutex_lock((*(a1 + 392) + 504));
  v15 = spaceman_compare_currently_available_space(a1, v13, v14, 0, v10, &v68, &v67, &v64 + 1, &v66, &v65, &v64);
  if (v15 != 28)
  {
    v23 = v15;
    v61 = a5;
    if (v15)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v16 = *a6;
  if (*a6 && v64 != 1)
  {
    v23 = 28;
    goto LABEL_32;
  }

  v61 = a5;
  v59 = v8;
  v60 = a6;
  v17 = v10;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v63 = 0;
  v62 = 0;
  if (v16)
  {
    v21 = 10000000;
  }

  else
  {
    v21 = 250000000;
  }

  while (1)
  {
    if (HIBYTE(v64) != 1 || v16 || v66 < v68)
    {
      goto LABEL_21;
    }

    if (v18)
    {
      break;
    }

    if (v62 <= 31)
    {
      goto LABEL_16;
    }

LABEL_21:
    if (v64 != 1)
    {
      v23 = 28;
      goto LABEL_31;
    }

    v23 = 28;
    if (*(a1 + 1124) <= (v16 != 0) || ((v16 != 0) & v19) != 0)
    {
      goto LABEL_31;
    }

    v70.tv_sec = 0;
    v70.tv_nsec = v21;
    ++v20;
    v24 = *(a1 + 392);
    *(v24 + 496) += v13;
    v25 = cv_wait((v24 + 568), (v24 + 504), 8, "blocks_in_txn", &v70);
    *(*(a1 + 392) + 496) -= v13;
    v19 |= v25 == 35;
LABEL_25:
    v26 = spaceman_compare_currently_available_space(a1, v13, v14, 0, v17, &v68, &v67, &v64 + 1, &v66, &v65, &v64);
    if (v26 != 28)
    {
      v23 = v26;
      goto LABEL_31;
    }
  }

  if (v65 > v18 || v62 >= 32)
  {
    goto LABEL_21;
  }

LABEL_16:
  ++v62;
  pthread_mutex_unlock((*(a1 + 392) + 504));
  v63 = 0;
  v22 = tx_enter(*(a1 + 392), &v63);
  if (!v22)
  {
    if (!v18)
    {
      v18 = v63;
    }

    spaceman_free_up_some_blocks(*(a1 + 392), &v66, v63);
    tx_leave(*(a1 + 392), v63, 4);
    pthread_mutex_lock((*(a1 + 392) + 504));
    goto LABEL_25;
  }

  v23 = v22;
  pthread_mutex_lock((*(a1 + 392) + 504));
LABEL_31:
  v10 = v17;
  a6 = v60;
  v8 = v59;
  if (v23)
  {
LABEL_32:
    *a6 = 0;
    if (fs_tx_can_log(a1) || v8 == 2 && v13 <= 0x31 && *(a1 + 3828) <= 9)
    {
      if (v23 == 28)
      {
        memset(&v70, 0, 32);
        __strlcpy_chk();
        sub_10004D0BC(v8);
        v57 = *(a1 + 3808);
        v58 = *v10;
        v34 = *(a1 + 1124);
        spaceman_entitled_reserve_active(*(a1 + 392), 0);
        log_debug("%s:%d: %s %s: ENOSPC: ttype %s (r %lld d %lld tx %d) blocks %lld free %lld txn %lld # %d th %lld rr %lld sh %lld fq %lld lim %d %d freeup %d wait %d er %d\n", v35, v36, v37, v38, v39, v40, v41, "fs_tx_enter_internal");
        if (v8 == 2 && v13 <= 0x31)
        {
          ++*(a1 + 3828);
        }
      }

      else
      {
        log_err("%s:%d: %s failed to compare currently available space: error %d\n", v27, v28, v29, v30, v31, v32, v33, "fs_tx_enter_internal");
      }
    }

    pthread_mutex_unlock((*(a1 + 392) + 504));
    return v23;
  }

LABEL_37:
  atomic_fetch_add_explicit((a1 + 1124), 1u, memory_order_relaxed);
  pthread_mutex_unlock((*(a1 + 392) + 504));
  v42 = *(a1 + 392);
  if (v61)
  {
    v43 = tx_enter_frozen(v42, a6);
    if (v43)
    {
      v23 = v43;
      v55 = *(*(a1 + 392) + 384) + 212;
      log_err("%s:%d: %s tx_enter_frozen() failed: %d\n", v44, v45, v46, v47, v48, v49, v50, "fs_tx_enter_internal");
LABEL_52:
      pthread_mutex_lock((*(a1 + 392) + 504));
      atomic_fetch_add_explicit(v10, -v13, memory_order_relaxed);
      atomic_fetch_add_explicit((a1 + 1124), 0xFFFFFFFF, memory_order_relaxed);
      pthread_mutex_unlock((*(a1 + 392) + 504));
      *a6 = 0;
      return v23;
    }
  }

  else
  {
    v51 = tx_enter(v42, a6);
    if (v51)
    {
      v23 = v51;
      v56 = *(*(a1 + 392) + 384) + 212;
      log_err("%s:%d: %s tx_enter() failed: %d\n", v52, v53, v46, v47, v48, v49, v50, "fs_tx_enter_internal");
      goto LABEL_52;
    }
  }

  if (*(a1 + 3828))
  {
    *(a1 + 3828) = 0;
  }

  v23 = obj_modify(a1, 0, *a6, v46, v47, v48, v49, v50);
  if (v23)
  {
    tx_leave(*(a1 + 392), *a6, 0);
    goto LABEL_52;
  }

  return v23;
}

uint64_t fs_tx_leave_ext(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v12 = *(a1 + 392);
  v13 = (v12 + 488);
  v14 = *(a1 + 376);
  v15 = *(v14 + 72);
  if (v15 && v15 == *(v14 + 80))
  {
    v13 = (a1 + 424);
  }

  pthread_mutex_lock((v12 + 504));
  atomic_fetch_add_explicit((a1 + 1124), 0xFFFFFFFF, memory_order_relaxed);
  v23 = sub_10004C674(a1, a2, a3, a4);
  add_explicit = atomic_fetch_add_explicit(v13, -v23, memory_order_relaxed);
  if ((add_explicit - v23) < 0)
  {
    v48 = *v13;
    v49 = *(a1 + 1124);
    log_err("%s:%d: %s old reserve was %lld, num_blocks %lld. blocks_in_txn_counter %lld num_active_txns=%d\n", v16, v17, v18, v19, v20, v21, v22, "fs_tx_leave_ext");
    if (add_explicit < v23)
    {
      sub_1000A70B4();
    }
  }

  *(*(a1 + 376) + 256) = get_timestamp();
  fs_sb_dirty(a1, a5);
  v25 = *(a1 + 392);
  if (*(v25 + 496))
  {
    cv_wakeup((v25 + 568));
    v25 = *(a1 + 392);
  }

  pthread_mutex_unlock((v25 + 504));
  v50 = 0;
  v51 = 0;
  spaceman_currently_available_space(a1, 0, &v51, &v50, 0, 0);
  if (add_explicit)
  {
    v26 = (*(*(a1 + 376) + 48) & 2) == 0;
    *(*(a1 + 376) + 48);
  }

  else
  {
    v26 = 1;
  }

  if (!v26 && v51 >= 0xA01 && add_explicit + 4000 >= v50)
  {
    a6 |= 4u;
  }

  v27 = *(a1 + 392);
  v28 = v51 / 0x64;
  if (*(v27 + 640) == 1)
  {
    v26 = *(v27 + 656) == 0;
    v29 = 4000;
    if (v26)
    {
      v29 = 25600;
    }
  }

  else
  {
    v29 = 4000;
  }

  if (v28 >= v29)
  {
    v28 = v29;
  }

  if (v28 <= 0x64)
  {
    v28 = 100;
  }

  v30 = v28 + add_explicit - v23;
  v31 = *(a1 + 3832);
  if (v30 >= v50)
  {
    *(a1 + 3832) = v31 + 1;
    if (v31 <= 99)
    {
      sub_10004D0BC(a2);
      log_info("%s:%d: %s gettin' low on space: ttype %s num_blocks %lld blocks_in_txn %lld free_blocks %lld xid %lld\n", v32, v33, v34, v35, v36, v37, v38, "fs_tx_leave_ext");
    }
  }

  else if (v31 >= 100)
  {
    *(a1 + 3832) = 0;
  }

  if (!a5)
  {
    return 0;
  }

  ++*(a1 + 432);
  v46 = tx_leave(*(a1 + 392), a5, a6);
  if (v46)
  {
    log_err("%s:%d: %s tx_leave failed: %d\n", v39, v40, v41, v42, v43, v44, v45, "fs_tx_leave_ext");
  }

  return v46;
}

const char *sub_10004D0BC(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "UNKNOWN TXN TYPE";
  }

  else
  {
    return off_1000E4F80[a1 - 1];
  }
}

uint64_t apfs_deletefs_ext(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  if (*(a1 + 627) == 1)
  {
    v70 = *(a1 + 384) + 212;
    log_err("%s:%d: %s Request to delete volume %u was denied, nx is read only\n", a2, a3, a4, a5, a6, a7, a8, "apfs_deletefs_ext");
    return 30;
  }

  else
  {
    v11 = *(a1 + 376);
    if (*(v11 + 180) > a2 && (v12 = a3, v82 = 0, (a3 = *(v11 + 8 * a2 + 184)) != 0))
    {
      v13 = a2;
      v14 = obj_get(*(a1 + 392), 0, a3, &apfs_desc, 0, 0, 0, 0, &v82);
      if (v14)
      {
        v10 = v14;
        v77 = *(*(a1 + 376) + 8 * v8 + 184);
        v71 = *(a1 + 384) + 212;
        log_err("%s:%d: %s failed to get fsys idx=%u oid=%llu: %d\n", v15, v16, v17, v18, v19, v20, v21, "apfs_deletefs_ext");
      }

      else if (userfs_volume_is_mountable(v82, &v79, v16, v17, v18, v19, v20, v21))
      {
        if (*(v82[47] + 36) == v8)
        {
          if (*(a1 + 629) != 1)
          {
            goto LABEL_18;
          }

          v30 = v82[63];
          if (!v30)
          {
            v30 = v82;
          }

          if (*(v30[47] + 264))
          {
LABEL_18:
            pthread_mutex_lock((v82 + 161));
            if ((v82[60] & 0x20000004460) != 0 || *(v82 + 280) > 0 || *(v82 + 278) > 0 || *(v82 + 279) >= 1)
            {
              pthread_mutex_unlock((v82 + 161));
              log_err("%s:%d: %s can not delete a volume that is already mounted/deleting/replicating\n", v39, v40, v41, v42, v43, v44, v45, "apfs_deletefs_ext");
              v31 = 0;
              v10 = 16;
            }

            else
            {
              v76 = v82[47] + 704;
              log_info("%s:%d: %s Deleting volume %s, volume index %u\n", v32, v33, v34, v35, v36, v37, v38, "apfs_deletefs_ext");
              v47 = v82;
              v82[60] |= 0x400uLL;
              pthread_mutex_unlock((v47 + 161));
              v48 = tx_enter(a1, &v81);
              if (v48)
              {
                v10 = v48;
                v73 = *(a1 + 384) + 212;
                log_err("%s:%d: %s failed to enter transaction, error = %d\n", v49, v50, v51, v52, v53, v54, v55, "apfs_deletefs_ext");
                v31 = 0;
              }

              else
              {
                v56 = *(v82[47] + 216);
                v57 = obj_type_and_flags(v82);
                v58 = obj_size_phys(v82);
                v59 = obj_oid(v82);
                v60 = nx_reaper_add_ext(a1, v57, v58, 0, v59, v81, 1, &v80);
                if (v60)
                {
                  v10 = v60;
                  v74 = *(a1 + 384) + 212;
                  log_err("%s:%d: %s failed to add file system to reaper: %d\n", v61, v62, v63, v64, v65, v66, v67, "apfs_deletefs_ext");
                  v31 = 1;
                }

                else
                {
                  *(*(a1 + 376) + 8 * v13 + 184) = 0;
                  v68 = v82;
                  v69 = v82[47];
                  *(a1 + 656) += (*(v69 + 48) << 30) >> 31;
                  if (*(v69 + 964) != 1)
                  {
                    atomic_fetch_add_explicit((v68[49] + 648), -v56, memory_order_relaxed);
                  }

                  v10 = 0;
                  if (v12)
                  {
                    *v12 = v80;
                  }

                  v31 = 1;
                }
              }
            }
          }

          else
          {
            log_err("%s:%d: %s cannot delete encrypted volume in demo mode\n", v23, v24, v25, v26, v27, v28, v29, "apfs_deletefs_ext");
            v31 = 0;
            v10 = 1;
          }
        }

        else
        {
          v78 = *(*(a1 + 376) + 8 * v8 + 184);
          log_err("%s:%d: %s nx and apfs superblock disagree on fs_idx, nx_idx=%u, nx_oid=%llu, apfs_idx=%u\n", v23, v24, v25, v26, v27, v28, v29, "apfs_deletefs_ext");
          v31 = 0;
          v10 = 5;
        }

        if (v82)
        {
          obj_release(v82);
        }

        if (v31)
        {
          if (v10)
          {
            v46 = 0;
          }

          else
          {
            v46 = 5;
          }

          tx_leave(a1, v81, v46);
        }
      }

      else
      {
        v75 = *(v82[47] + 964);
        log_err("%s:%d: %s Volume is not mountable, it can't be deleted (volume role %d) \n", v23, v24, v25, v26, v27, v28, v29, "apfs_deletefs_ext");
        return 45;
      }
    }

    else
    {
      v72 = *(a1 + 384) + 212;
      log_err("%s:%d: %s Request to delete volume %u was denied, wrong volume index\n", a2, a3, a4, a5, a6, a7, a8, "apfs_deletefs_ext");
      return 22;
    }
  }

  return v10;
}

uint64_t apfs_is_volume_fsindex_allowed(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a2 != -1 && a2 <= 1)
  {
    v8 = 0;
    if (a1 == 1)
    {
      if (a2)
      {
        v8 = 1;
        log_err("%s:%d: Volume role %d is not allowed at fs index %d\n", a2, a3, a4, a5, a6, a7, a8, "apfs_is_volume_fsindex_allowed");
      }
    }
  }

  return v8;
}

uint64_t apfs_is_volume_role_allowed(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a3;
  if (a3 == 576)
  {
    if ((a5 & 1) == 0)
    {
      log_err("%s:%d: Volume role 0x%x is not allowed for an unencrypted volume\n", a2, a3, a4, a5, a6, a7, a8, "apfs_is_volume_role_allowed");
      return 1;
    }
  }

  else if (a3 == 768)
  {
    log_err("%s:%d: Volume role 0x%x is not supported", a2, a3, a4, a5, a6, a7, a8, "apfs_is_volume_role_allowed");
    return 45;
  }

  if (a2 != a3)
  {
    if (a2 <= 319)
    {
      if (a2 <= 127)
      {
        if (a2 != 4 && a2 != 16)
        {
          goto LABEL_7;
        }
      }

      else if (a2 != 128 && a2 != 192)
      {
        if (a2 == 256)
        {
          log_err("%s:%d: cannot change role of xART volume\n", a2, a3, a4, a5, a6, a7, a8, "apfs_is_volume_role_allowed");
          return 1;
        }

        goto LABEL_7;
      }
    }

    else if (a2 > 575)
    {
      if (a2 != 576 && a2 != 704 && a2 != 768)
      {
        goto LABEL_7;
      }
    }

    else if (a2 != 320)
    {
      if (a2 == 384)
      {
        log_err("%s:%d: cannot change role of Backup volume\n", a2, a3, a4, a5, a6, a7, a8, "apfs_is_volume_role_allowed");
        return 1;
      }

      if (a2 == 448)
      {
        log_err("%s:%d: cannot change role of SideCar volume\n", a2, a3, a4, a5, a6, a7, a8, "apfs_is_volume_role_allowed");
        return 1;
      }

      goto LABEL_7;
    }

    log_err("%s:%d: cannot change role of system-unique volume\n", a2, a3, a4, a5, a6, a7, a8, "apfs_is_volume_role_allowed");
    return 1;
  }

LABEL_7:
  if (a3)
  {
    if (apfs_is_volume_fsindex_allowed(a3, a4, a3, a4, a5, a6, a7, a8))
    {
      return 1;
    }

    v19 = v9 == 704;
    if (v9 <= 191)
    {
      if (((v9 - 1) > 0x3F || ((1 << (v9 - 1)) & 0x800000008000800BLL) == 0) && v9 != 128)
      {
        goto LABEL_104;
      }

      goto LABEL_27;
    }

    if (v9 <= 511)
    {
      if (v9 != 192 && v9 != 256 && v9 != 320)
      {
        goto LABEL_104;
      }
    }

    else if (v9 > 639)
    {
      if (v9 != 640 && v9 != 704)
      {
        goto LABEL_104;
      }
    }

    else if (v9 != 512 && v9 != 576)
    {
LABEL_104:
      log_err("%s:%d: Volume role 0x%x is not supported in container\n", v12, v13, v14, v15, v16, v17, v18, "apfs_is_volume_role_allowed");
      return 45;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_27:
  v20 = a1[47];
  if (!*(v20 + 180))
  {
    return 0;
  }

  v51 = v19;
  v21 = 0;
  memset(out, 0, 37);
  while (1)
  {
    v52 = 0;
    v22 = *(v20 + 8 * v21 + 184);
    if (v22)
    {
      break;
    }

LABEL_72:
    ++v21;
    v20 = a1[47];
    if (v21 >= *(v20 + 180))
    {
      return 0;
    }
  }

  v23 = obj_get(a1[49], 0, v22, &apfs_desc, 0, 0, 0, 0, &v52);
  v11 = v23;
  if (v23)
  {
    v43 = a1[48] + 212;
    strerror(v23);
    log_err("%s:%d: %s Failed to get fsys oid %lld - %s\n", v44, v45, v46, v47, v48, v49, v50, "apfs_is_volume_role_allowed");
    return v11;
  }

  v31 = 1;
  if (v9 > 191)
  {
    if (v9 > 511)
    {
      if (v9 == 512)
      {
        v32 = v52;
        v33 = *(v52[47] + 964);
        if (v33 == 512)
        {
          goto LABEL_66;
        }

        if (v51)
        {
          goto LABEL_47;
        }

        goto LABEL_79;
      }

      if (v9 != 640)
      {
        if (v9 == 704)
        {
          v33 = *(v52[47] + 964);
LABEL_47:
          if (v33 == 704)
          {
            goto LABEL_66;
          }

          v11 = 0;
        }

        goto LABEL_67;
      }

      if (*(v52[47] + 964) != 640)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v9 == 192)
      {
        v32 = v52;
        if (*(v52[47] + 964) == 192)
        {
          goto LABEL_66;
        }

        goto LABEL_79;
      }

      if (v9 != 256)
      {
        v32 = v52;
        if (*(v52[47] + 964) == 320)
        {
          goto LABEL_66;
        }

LABEL_79:
        obj_release(v32);
        goto LABEL_72;
      }

      if (*(v52[47] + 964) != 256)
      {
        goto LABEL_62;
      }
    }

LABEL_66:
    uuid_unparse((a1[47] + 72), out);
    log_err("%s:%d: %s Volume role 0x%x already exists in container uuid %s\n", v34, v35, v36, v37, v38, v39, v40, "apfs_is_volume_role_allowed");
    v31 = 0;
    v11 = 17;
LABEL_67:
    if (v9 > 255)
    {
      if (v9 == 256 || v9 == 640 || v9 == 704)
      {
        goto LABEL_70;
      }
    }

    else if (v9 <= 0x20 && ((1 << v9) & 0x100010110) != 0)
    {
      goto LABEL_70;
    }

    v41 = v52;
LABEL_71:
    obj_release(v41);
    if ((v31 & 1) == 0)
    {
      return v11;
    }

    goto LABEL_72;
  }

  if (v9 > 15)
  {
    if (v9 == 16)
    {
      if (*(v52[47] + 964) == 16)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (v9 == 32)
    {
      if (*(v52[47] + 964) != 32)
      {
        goto LABEL_62;
      }

      goto LABEL_66;
    }

    if (v9 != 128)
    {
      goto LABEL_67;
    }

    v32 = v52;
    if (*(v52[47] + 964) == 128)
    {
      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (v9 == 1)
  {
    v32 = v52;
    if (*(v52[47] + 964) == 1)
    {
      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (v9 != 4)
  {
    goto LABEL_67;
  }

  if (*(v52[47] + 964) == 4)
  {
    goto LABEL_66;
  }

LABEL_62:
  v11 = 0;
LABEL_70:
  v41 = v52;
  if (!v8)
  {
    goto LABEL_71;
  }

  log_err("%s:%d: %s Encrypted volume is not allowed with special role = 0X%x\n", v24, v25, v26, v27, v28, v29, v30, "apfs_is_volume_role_allowed");
  obj_release(v52);
  return 1;
}

uint64_t apfs_newfs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v330 = 0;
  *v331 = 0;
  v328 = 0;
  v329 = 0;
  memset(uu, 0, sizeof(uu));
  v326 = 0;
  v327 = 0;
  v324 = 0;
  v325 = 0;
  v323 = 0;
  uuid_clear(uu);
  *a5 = 0;
  if (!a2)
  {
    v314 = a4;
    v315 = 0;
    v304 = 0;
    v305 = a5;
    v317 = 0;
    v15 = 0;
    v318 = 0;
    v303 = 0;
    v16 = 0;
    v17 = 0;
    v322 = 0;
    LODWORD(v306) = 0;
    v307 = 0;
    v313 = 0;
    v308 = 0;
    v309 = 0;
    v320 = 2;
    v311 = 0;
    v312 = 8;
    v18 = 0xFFFFFFFFLL;
    v19 = 1073741826;
    v321 = 1073741826;
    v319 = 1073741826;
    v310 = 1073741826;
    goto LABEL_5;
  }

  v13 = *(*(a1 + 376) + 36);
  if (strnlen((a2 + 56), 0x100uLL) > 0xFF)
  {
    return 63;
  }

  if (!utf8_strlen_with_ascii_status(a2 + 56, 0, 0, 0, 0))
  {
    return 92;
  }

  v28 = *(a2 + 40);
  v19 = *(a2 + 492);
  v29 = *(a2 + 16);
  v30 = *(a2 + 24);
  if (v29 % v13)
  {
    v31 = v29 / v13 + 1;
  }

  else
  {
    v31 = v29 / v13;
  }

  if (v30 % v13)
  {
    v32 = v30 / v13 + 1;
  }

  else
  {
    v32 = v30 / v13;
  }

  v18 = *(a2 + 48);
  v33 = *(a2 + 52);
  v34 = *(a2 + 54);
  v35 = (v18 == 1) << 6;
  if (!v18)
  {
    v35 = 1;
  }

  if (*(a2 + 54))
  {
    v36 = 1;
  }

  else
  {
    v36 = v18 == -1;
  }

  if (v36)
  {
    v17 = *(a2 + 54);
  }

  else
  {
    v17 = v35;
  }

  v37 = v17 == 64 || v17 == 1;
  if (v37 && *(a2 + 452) > 0)
  {
    return 45;
  }

  v319 = *(a2 + 40);
  v314 = a4;
  v317 = v32;
  v38 = (v33 >> 6) & 1;
  v16 = (v33 >> 9) & 1;
  v312 = (v33 >> 2) & 3;
  v318 = (v33 >> 4) & 3;
  v322 = (v33 >> 7) & 1;
  v310 = *(a2 + 32);
  v311 = (v33 >> 8) & 1;
  HIDWORD(v309) = (a3 >> 5) & 1;
  HIDWORD(v308) = (a3 & 0x880) == 2176;
  LODWORD(v309) = (a3 >> 8) & 1;
  v313 = (v33 >> 10) & 1;
  LODWORD(v307) = *(a2 + 448);
  HIDWORD(v307) = *(a2 + 444);
  LODWORD(v308) = (a3 & 0x880) == 128;
  v320 = *(a2 + 36);
  v321 = *(a2 + 44);
  if (v33 & 1 | v16)
  {
    v15 = v33 & 1;
    if (v16)
    {
      if ((*(*(a1 + 376) + 1264) & 4) != 0)
      {
        return 22;
      }

      v316 = *(a2 + 48);
      v39 = (v33 >> 6) & 1;
      v40 = dev_crypto_type(*(a1 + 384));
      v38 = v39;
      v18 = v316;
      if (!v40)
      {
        return 22;
      }
    }

    v315 = v31;
    if (v38)
    {
      if (*(a2 + 440) > 0x80u)
      {
        return 22;
      }

      v305 = a5;
      LODWORD(v306) = *(a2 + 440);
      v303 = 1;
      v304 = a2 + 312;
    }

    else
    {
      v305 = a5;
      v306 = *(a2 + 440);
      v41 = strnlen((a2 + 312), 0x80uLL);
      is_volume_role_allowed = 22;
      if (v41 > 0x7F)
      {
        return is_volume_role_allowed;
      }

      v304 = a2 + 312;
      if (v41 != v306)
      {
        return is_volume_role_allowed;
      }

      v303 = 0;
    }
  }

  else
  {
    v303 = (v33 >> 6) & 1;
    v315 = v31;
    v305 = a5;
    if ((*(*(a1 + 376) + 1264) & 4) != 0 || !dev_crypto_type(*(a1 + 384)))
    {
      v304 = 0;
      v15 = 0;
      v16 = 0;
      LODWORD(v306) = 0;
      goto LABEL_5;
    }

    if ((a3 & 1) == 0)
    {
      v304 = 0;
      v16 = 0;
      LODWORD(v306) = 0;
      v15 = 1;
      goto LABEL_5;
    }

    v15 = 0;
    is_volume_role_allowed = 22;
    v304 = 0;
    if (v17 > 191)
    {
      if (v17 <= 319)
      {
        if (v17 != 192)
        {
          v16 = 0;
          LODWORD(v306) = 0;
          if (v17 != 256)
          {
            return is_volume_role_allowed;
          }

          goto LABEL_5;
        }
      }

      else if (v17 != 320 && v17 != 704)
      {
        v16 = 0;
        LODWORD(v306) = 0;
        if (v17 != 640)
        {
          return is_volume_role_allowed;
        }

        goto LABEL_5;
      }

      v16 = 0;
      LODWORD(v306) = 0;
      goto LABEL_5;
    }

    if (v17 > 0x20)
    {
      return is_volume_role_allowed;
    }

    v16 = 0;
    LODWORD(v306) = 0;
    if (((1 << v17) & 0x100010112) == 0)
    {
      return is_volume_role_allowed;
    }
  }

LABEL_5:
  v20 = (v15 | v16) != 0;
  is_volume_role_allowed = apfs_is_volume_role_allowed(a1, 0, v17, v18, (v15 | v16) != 0, v10, v11, v12);
  if (is_volume_role_allowed)
  {
    return is_volume_role_allowed;
  }

  v302 = v15;
  if (v320 != 2)
  {
    v288 = *(a1 + 384) + 212;
    log_warn("%s:%d: %s fs tree type 0x%x invalid, using virtual btree instead\n", v21, v22, v23, v24, v25, v26, v27, "apfs_newfs");
  }

  if (v319 != 1073741826)
  {
    v289 = *(a1 + 384) + 212;
    log_warn("%s:%d: %s extentref tree type 0x%x invalid, using physical btree instead\n", v21, v22, v23, v24, v25, v26, v27, "apfs_newfs");
  }

  if (v321 != 1073741826)
  {
    v290 = *(a1 + 384) + 212;
    log_warn("%s:%d: %s snapmeta tree type 0x%x invalid, using physical btree instead\n", v21, v22, v23, v24, v25, v26, v27, "apfs_newfs");
  }

  if (v322 && v19 != 1073741826)
  {
    v291 = *(a1 + 384) + 212;
    log_warn("%s:%d: %s fext tree type 0x%x invalid, using physical btree instead\n", v21, v22, v23, v24, v25, v26, v27, "apfs_newfs");
    v19 = 1073741826;
  }

  if ((((v15 | v16) != 0) & *(a1 + 629)) != 0)
  {
    return 1;
  }

  if (v318)
  {
    return 22;
  }

  if (v17 == 704 && (!v315 || v315 != v317))
  {
    v292 = *(a1 + 384) + 212;
    log_err("%s:%d: %s bad overprovisioning volume configuration: reserve %lld quota %lld\n", v21, v22, v23, v24, v25, v26, v27, "apfs_newfs");
    return 22;
  }

  v43 = *(a1 + 376);
  if (v18 == -1)
  {
    if (v17 == 64)
    {
      v45 = 1;
    }

    else
    {
      v45 = -1;
    }

    if (v17 == 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = v45;
    }

    if (v46 == -1)
    {
      v44 = *(v43 + 180);
      if (v44 < 3)
      {
        LODWORD(v18) = 2;
      }

      else
      {
        v47 = (v43 + 200);
        v48 = 2;
        while (*v47++)
        {
          if (v44 == ++v48)
          {
            LODWORD(v18) = *(v43 + 180);
            goto LABEL_93;
          }
        }

        LODWORD(v18) = v48;
LABEL_93:
        if ((v18 & 0x80000000) != 0)
        {
LABEL_96:
          if (v46 != -1)
          {
            LODWORD(v18) = v46;
            goto LABEL_98;
          }

          if (!v44)
          {
            goto LABEL_115;
          }

          v59 = 0;
          while (*(v43 + 184 + 8 * v59))
          {
            if (v44 == ++v59)
            {
              LODWORD(v18) = v44;
              goto LABEL_60;
            }
          }

          LODWORD(v18) = v59;
          goto LABEL_60;
        }
      }
    }

    else
    {
      LODWORD(v44) = *(v43 + 180);
      LODWORD(v18) = v46;
    }

    if (v18 < v44 && !*(v43 + 8 * v18 + 184))
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

LABEL_60:
  if ((v18 & 0x80000000) != 0)
  {
LABEL_115:
    v301 = *(v43 + 180);
    v296 = *(a1 + 384) + 212;
    log_err("%s:%d: %s no space for a new file system (slot %d, max %d)\n", v21, v22, v23, v24, v25, v26, v27, "apfs_newfs");
    return 34;
  }

  LODWORD(v44) = *(v43 + 180);
LABEL_98:
  if (v18 >= v44)
  {
    goto LABEL_115;
  }

  if (*(v43 + 8 * v18 + 184))
  {
    v293 = *(a1 + 384) + 212;
    log_err("%s:%d: %s existing file system (slot %d)\n", v21, v22, v23, v24, v25, v26, v27, "apfs_newfs");
    return 16;
  }

  v50 = v19;
  v51 = tx_enter(a1, &v328);
  if (v51)
  {
    is_volume_role_allowed = v51;
    v294 = *(a1 + 384) + 212;
    log_err("%s:%d: %s tx_enter() failed: %d\n", v52, v53, v54, v55, v56, v57, v58, "apfs_newfs");
    return is_volume_role_allowed;
  }

  if (v20)
  {
    v60 = *(a1 + 376);
    v61 = *(v60 + 1264);
    if ((v61 & 4) == 0)
    {
      if (dev_crypto_type(*(a1 + 384)))
      {
        goto LABEL_113;
      }

      v60 = *(a1 + 376);
      v61 = *(v60 + 1264);
    }

    *(v60 + 1264) = v61 | 4;
  }

LABEL_113:
  v62 = obj_create(*(a1 + 392), 0, 0, &apfs_desc, 0, 0, v328, v331);
  if (v62)
  {
    is_volume_role_allowed = v62;
    v295 = *(a1 + 384) + 212;
    log_err("%s:%d: %s failed to create fs: %d\n", v63, v64, v65, v66, v67, v68, v69, "apfs_newfs");
LABEL_157:
    v298 = *(a1 + 384) + 212;
    log_err("%s:%d: %s fs creation failed: %d ... cleaning up...\n", v70, v71, v72, v73, v74, v75, v76, "apfs_newfs");
    v329 = 0;
    if (*v331)
    {
      if (v325)
      {
        if (btree_delete(v325, v328, &v329))
        {
          log_err("%s:%d: %s failed to delete fs root tree after fs creation failed: %d\n", v149, v150, v151, v152, v153, v154, v155, "apfs_newfs");
        }

        obj_release(v325);
      }

      if (v326)
      {
        if (btree_delete(v326, v328, &v329))
        {
          log_err("%s:%d: %s failed to delete fs snap metadata tree after fs creation failed: %d\n", v156, v157, v158, v159, v160, v161, v162, "apfs_newfs");
        }

        obj_release(v326);
      }

      if (v327)
      {
        if (btree_delete(v327, v328, &v329))
        {
          log_err("%s:%d: %s failed to delete fs extentref tree after fs creation failed: %d\n", v163, v164, v165, v166, v167, v168, v169, "apfs_newfs");
        }

        obj_release(v327);
      }

      v170 = v324;
      if (v324 && supplemental_tree_destroy(*v331, v50, 5, v328, v324, &v329, v147, v148))
      {
        log_err("%s:%d: %s failed to delete fs fext tree after fs creation failed: %d\n", v171, v144, v145, v170, v146, v147, v148, "apfs_newfs");
      }

      if (v323)
      {
        if (btree_delete(v323, v328, &v329))
        {
          log_err("%s:%d: %s failed to delete fs clonegroup tree after fs creation failed: %d\n", v172, v173, v174, v175, v176, v177, v178, "apfs_newfs");
        }

        obj_release(v323);
      }

      v179 = *v331;
      v180 = *(*(*v331 + 376) + 128);
      if (v180)
      {
        v182 = omap_destroy(*v331, v180, v328, &v329);
        v179 = *v331;
        if (v182)
        {
          log_err("%s:%d: %s failed to destroy omap after fs creation failed: %d\n", v181, v144, v145, v170, v146, v147, v148, "apfs_newfs");
          v179 = *v331;
        }
      }

      if (*(v179 + 3600))
      {
        obj_release(*(v179 + 3600));
        v179 = *v331;
      }

      if (*(v179 + 3576))
      {
        obj_release(*(v179 + 3576));
        v179 = *v331;
      }

      jobj_release(v179, *(v179 + 488), v144, v145, v170, v146, v147, v148);
      jobj_release(v183, *(*v331 + 496), v184, v185, v186, v187, v188, v189);
    }

    if (v328)
    {
      tx_leave(a1, v328, 0);
      v328 = 0;
    }

    if (v329 && nx_reaper_wait(a1, v329))
    {
      v299 = *(a1 + 384) + 212;
      log_err("%s:%d: %s failed to wait on reaper: %d\n", v190, v191, v192, v193, v194, v195, v196, "apfs_newfs");
    }

    if (*v331)
    {
      if (tx_enter(a1, &v328))
      {
        v300 = *(a1 + 384) + 212;
        log_err("%s:%d: %s Couldn't reopen transaction to clean up: %d\n", v197, v198, v199, v200, v201, v202, v203, "apfs_newfs");
      }

      else
      {
        spaceman_fs_bounds_clear(a1, *v331, v328);
        obj_delete_and_free(*v331, v328);
        tx_leave(a1, v328, 0);
        v328 = 0;
      }

      obj_release(*v331);
    }

    return is_volume_role_allowed;
  }

  v77 = a1;
  v78 = !v20;
  v79 = *v331;
  if (!v314)
  {
    v78 = 1;
  }

  if ((v78 & 1) == 0)
  {
    *(*v331 + 1152) = v314;
  }

  *(*(v79 + 376) + 36) = v18;
  apfs_update_dev_name(v79);
  v80 = *(*v331 + 376);
  *(v80 + 964) = v17;
  uuid_copy((v80 + 1008), uu);
  v81 = *v331;
  *(*v331 + 3936) = 0;
  *(v81 + 3949) = (a3 & 8) != 0;
  apfs_set_formatted_by(*(v81 + 376), (a2 + 456), v328);
  if (a2 && !uuid_is_null(a2))
  {
    uuid_copy((*(*v331 + 376) + 240), a2);
    v113 = *v331;
    v114 = *(*v331 + 376);
    if (!strncmp((v114 + 240), "apfsuuid", 8uLL))
    {
      *(v114 + 255) = v18;
      v114 = *(v113 + 376);
    }

    v115 = sub_10004F020(v77, (v114 + 240));
    if (v115)
    {
      is_volume_role_allowed = v115;
      memset(out, 0, 37);
      uuid_unparse(a2, out);
      a1 = v77;
      v297 = *(v77 + 384) + 212;
      log_err("%s:%d: %s UUID %s is not allowed, error %d\n", v116, v117, v118, v119, v120, v121, v122, "apfs_newfs");
      goto LABEL_157;
    }
  }

  else
  {
    if (v17 == 768)
    {
      sub_1000A710C(a1, v82, v83, v84, v85, v86, v87, v88);
    }

    uuid_generate((*(*v331 + 376) + 240));
  }

  v95 = *v331;
  v96 = *(*v331 + 376);
  *(v96 + 176) = 16;
  *(v96 + 960) = 3;
  *(v96 + 966) = 0;
  if (v311)
  {
    *(v96 + 40) |= 0x10uLL;
  }

  if (v312 == 1)
  {
    v97 = 1;
  }

  else
  {
    if (v312 != 2)
    {
      goto LABEL_132;
    }

    v97 = 8;
  }

  *(v96 + 56) |= v97;
LABEL_132:
  if (v322)
  {
    *(v96 + 56) |= 0x20uLL;
  }

  if (v313)
  {
    *(v96 + 56) |= 0x80uLL;
    log_debug("%s:%d: %s allocated unwritten file extents are now supported\n", v95, v89, v90, v91, v92, v93, v94, "apfs_newfs");
    v95 = *v331;
    v96 = *(*v331 + 376);
  }

  *(v96 + 40) |= 2uLL;
  is_volume_role_allowed = spaceman_fs_bounds_set(v77, v95, v315, v317, v328);
  if (is_volume_role_allowed)
  {
    log_err("%s:%d: %s Could not set fs bounds for guarantee %lld and quota %lld: %d\n", v98, v99, v100, v101, v102, v103, v104, "apfs_newfs");
LABEL_156:
    a1 = v77;
    goto LABEL_157;
  }

  if (v20)
  {
    crypto_cache_create(*v331);
    v105 = meta_crypto_state_init(*v331, v328, v304, v306, *(*v331 + 376) + 96, *v331 + 536, *v331 + 632, *v331 + 920, 2 * v303);
    if (v105)
    {
      is_volume_role_allowed = v105;
      log_err("%s:%d: %s unable to create/store metadata crypto (%d)\n", v106, v107, v108, v109, v110, v111, v112, "apfs_newfs");
      goto LABEL_156;
    }
  }

  else
  {
    log_debug("%s:%d: %s FS will NOT be encrypted.\n", v98, v99, v100, v101, v102, v103, v104, "apfs_newfs");
    v123 = *v331;
    v124 = *(*v331 + 376);
    *(v124 + 264) |= 1uLL;
    meta_crypto_state_init(v123, 0, 0, 0, v124 + 96, (v123 + 67), (v123 + 79), (v123 + 115), 0);
    crypto_state_disable(*v331 + 536);
  }

  v125 = *v331;
  v126 = *(*v331 + 376);
  *(v126 + 116) = 0x4000000200000002;
  *(v126 + 124) = 1073741826;
  *(v126 + 1104) = 2;
  v127 = omap_create(v125, 0x40000000u, 0, v310, v328, &v330);
  if (v127)
  {
    is_volume_role_allowed = v127;
    log_err("%s:%d: %s fs omap initialization failed: %d\n", v128, v129, v130, v131, v132, v133, v134, "apfs_newfs");
    goto LABEL_156;
  }

  v135 = obj_oid(v330);
  *(*(*v331 + 376) + 128) = v135;
  obj_release(v330);
  v334 = xmmword_1000E4EE0;
  v335 = unk_1000E4EF0;
  v336 = xmmword_1000E4F00;
  v337 = unk_1000E4F10;
  v332 = off_1000E4EC0;
  v333 = unk_1000E4ED0;
  if (v322)
  {
    is_volume_role_allowed = authapfs_integrity_meta_create(*v331, *(a2 + 488), v328, 0, v139, v140, v141, v142);
    a1 = v77;
    if (is_volume_role_allowed)
    {
      goto LABEL_157;
    }

    HIDWORD(v333) = authapfs_hash_comparison_size(*(a2 + 488));
    DWORD2(v333) = *(a2 + 488);
    DWORD1(v333) |= 0x180u;
  }

  if (*(*(*v331 + 376) + 116) != 2)
  {
    is_volume_role_allowed = 22;
    goto LABEL_155;
  }

  extended = btree_create_extended(*v331, *(*(*v331 + 376) + 116) & 0xFFFF0000, 0, 0, 0, &v332, v328, &v325);
  if (extended)
  {
    is_volume_role_allowed = extended;
LABEL_155:
    log_err("%s:%d: %s fs root tree creation failed: %d\n", v136, v137, v138, v139, v140, v141, v142, "apfs_newfs");
    goto LABEL_156;
  }

  v211 = obj_oid(v325);
  v212 = *v331;
  v213 = *(*v331 + 376);
  *(v213 + 136) = v211;
  if (HIDWORD(v309))
  {
    *(v213 + 56) |= 0x200uLL;
    log_debug("%s:%d: %s expanded records are now supported\n", v204, v205, v206, v207, v208, v209, v210, "apfs_newfs");
    v212 = *v331;
    if (HIDWORD(v308))
    {
      *(*(*v331 + 376) + 48) |= 4uLL;
      log_debug("%s:%d: %s clone mapping is enabled for this volume\n", v204, v205, v206, v207, v208, v209, v210, "apfs_newfs");
      v212 = *v331;
    }
  }

  if (v309)
  {
    *(*(v212 + 376) + 48) |= 8uLL;
    log_debug("%s:%d: %s attribution tags are supported on this volume\n", v204, v205, v206, v207, v208, v209, v210, "apfs_newfs");
    v212 = *v331;
  }

  v214 = *(*(v212 + 376) + 120);
  v215 = v328;
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = apfs_key_compare;
  *&out[16] = 0x420000000FLL;
  if (v214 != 2)
  {
    is_volume_role_allowed = 22;
    goto LABEL_204;
  }

  v216 = btree_create_extended(v212, v214 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v328, &v327);
  if (v216)
  {
    is_volume_role_allowed = v216;
LABEL_204:
    log_err("%s:%d: %s fs extentref tree creation failed: %d\n", v204, v205, v206, v207, v208, v215, v210, "apfs_newfs");
    goto LABEL_156;
  }

  v223 = obj_oid(v327);
  v224 = *v331;
  v225 = *(*v331 + 376);
  *(v225 + 144) = v223;
  v226 = *(v225 + 124);
  v227 = v328;
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = apfs_key_compare;
  *&out[16] = 0x4200000010;
  if (v226 != 2)
  {
    is_volume_role_allowed = 22;
    goto LABEL_209;
  }

  v228 = btree_create_extended(v224, v226 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v328, &v326);
  if (v228)
  {
    is_volume_role_allowed = v228;
LABEL_209:
    log_err("%s:%d: %s fs snapshot metadata tree creation failed: %d\n", v217, v218, v219, v220, v221, v227, v222, "apfs_newfs");
    goto LABEL_156;
  }

  v232 = obj_oid(v326);
  v233 = *v331;
  *(*(*v331 + 376) + 152) = v232;
  if (v322)
  {
    v234 = supplemental_tree_create(v233, v50, 5, v328, &v324, v229, v230, v231);
    if (v234)
    {
      is_volume_role_allowed = v234;
      log_err("%s:%d: %s fs fext tree creation failed: %d\n", v235, v236, v237, v238, v239, v240, v241, "apfs_newfs");
      goto LABEL_156;
    }

    v233 = *v331;
    *(*(*v331 + 376) + 1032) = v324;
  }

  if ((HIDWORD(v309) & v308) == 1)
  {
    memset(&out[32], 0, 64);
    *out = off_1000E4F20;
    *&out[16] = unk_1000E4F30;
    v242 = btree_create_extended(v233, 0, 0, 0, 0, out, v328, &v323);
    if (v242)
    {
      is_volume_role_allowed = v242;
      strerror(v242);
      log_err("%s:%d: %s clonegroup tree creation failed: %s\n", v243, v244, v245, v246, v247, v248, v249, "apfs_newfs");
      goto LABEL_156;
    }

    v250 = obj_oid(v323);
    v251 = *(*v331 + 376);
    *(v251 + 1112) = v250;
    *(v251 + 1108) |= 1u;
    *(v251 + 1136) = 1024;
    *(v251 + 48) |= 4uLL;
    log_debug("%s:%d: %s clonegroups enabled for this volume\n", v252, v253, v254, v255, v256, v257, v258, "apfs_newfs");
    v233 = *v331;
  }

  name_checked = fs_obj_create_name_checked(v233, 1, 0, "root", 0, 2, 0x41EDu, SHIDWORD(v307), v307, 0, -1, 0, 0, (v233 + 488), v328, 0, 0xFFFFFFFF);
  if (name_checked)
  {
    is_volume_role_allowed = name_checked;
    log_err("%s:%d: %s fs root dir creation failed: %d\n", v260, v261, v262, v263, v264, v265, v266, "apfs_newfs");
    goto LABEL_156;
  }

  v267 = *(*v331 + 376);
  __strlcpy_chk();
  v268 = fs_obj_create_name_checked(*v331, 1, 0, "private-dir", 0, 3, 0x41A4u, 0, 0, 0, -1, 0, 0, (*v331 + 496), v328, 0, 0xFFFFFFFF);
  if (v268)
  {
    is_volume_role_allowed = v268;
    log_err("%s:%d: %s fs private dir creation failed: %d\n", v269, v270, v271, v272, v273, v274, v275, "apfs_newfs");
    goto LABEL_156;
  }

  if (v20)
  {
    if (v16)
    {
      return 22;
    }

    new_crypto_state_for_id = create_new_crypto_state_for_id(*v331, v328, 4);
    if (new_crypto_state_for_id)
    {
      is_volume_role_allowed = new_crypto_state_for_id;
      log_err("%s:%d: %s unable to create/store data sw crypto (%d)\n", v277, v278, v279, v280, v281, v282, v283, "apfs_newfs");
      goto LABEL_156;
    }

    if (!v302)
    {
      sub_1000A70E0();
    }

    v284 = *v331;
    *(*(*v331 + 376) + 264) |= 8uLL;
  }

  else
  {
    v284 = *v331;
  }

  *(*(v77 + 376) + 8 * v18 + 184) = obj_oid(v284);
  v285 = *(*v331 + 376);
  v285[140] = v328;
  v285[141] = (v285[7] >> 9) & 1 | 0xC;
  timestamp = get_timestamp();
  v287 = *v331;
  *(*(*v331 + 376) + 256) = timestamp;
  fs_sb_dirty(v287, v328);
  obj_release(v326);
  obj_release(v327);
  obj_release(v325);
  if (v323)
  {
    obj_release(v323);
  }

  *(v77 + 656) += (*(*(*v331 + 376) + 48) >> 1) & 1;
  tx_leave(v77, v328, 5);
  is_volume_role_allowed = 0;
  *v305 = *v331;
  return is_volume_role_allowed;
}

uint64_t sub_10004F020(void *a1, const unsigned __int8 *a2)
{
  v2 = a1[47];
  if (*(v2 + 180))
  {
    for (i = 0; i < *(v2 + 180); ++i)
    {
      v19 = 0;
      v6 = *(v2 + 8 * i + 184);
      if (v6)
      {
        v7 = obj_get(a1[49], 0, v6, &apfs_desc, 0, 0, 0, 0, &v19);
        if (v7)
        {
          v9 = v7;
          v10 = a1[48] + 212;
          strerror(v7);
          log_err("%s:%d: %s Failed to get fsys oid %lld - %s\n", v11, v12, v13, v14, v15, v16, v17, "apfs_is_volume_uuid_allowed");
          return v9;
        }

        v8 = uuid_compare(a2, (v19[47] + 240));
        obj_release(v19);
        if (!v8)
        {
          return 17;
        }

        v2 = a1[47];
      }
    }
  }

  return 0;
}

uint64_t apfs_free_data_blocks(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1[63])
  {
    v6 = a1[63];
  }

  else
  {
    v6 = a1;
  }

  v7 = spaceman_free(v6, 0, a3, a4, a2);
  v8 = v7;
  if (v7)
  {
    strerror(v7);
    log_err("%s:%d: %s spaceman_free failed for LBA %llx, size %llu : %d %s\n", v9, v10, v11, v12, v13, v14, v15, "apfs_free_data_blocks");
  }

  else
  {
    atomic_fetch_add_explicit((v6[47] + 232), a4, memory_order_relaxed);
    fs_sb_dirty(v6, a2);
  }

  return v8;
}

uint64_t fs_is_fully_unencrypted(uint64_t a1)
{
  v1 = *(a1 + 504);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(*(v1 + 376) + 264);
  if (v2)
  {
    LOBYTE(v2) = *(*(a1 + 376) + 976) == 0;
  }

  return v2 & 1;
}

uint64_t sub_10004F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  if (a2 + 1) < 7 && ((0x63u >> (a2 + 1)))
  {
    return 0;
  }

  v10 = *(a1 + 504);
  if (!v10)
  {
    v10 = a1;
  }

  if ((*(*(v10 + 376) + 264) & 9) != 0)
  {
    panic("assertion failed: %s", "fs_is_content_protected(apfs)");
  }

  LODWORD(v21) = 2622471;
  *(&v21 + 1) = a2;
  LODWORD(v22) = -1;
  inserted = insert_jobj(a1, 1, &v21, a3, a5, a6, a7, a8);
  if (!inserted)
  {
    if (v22 == 1)
    {
LABEL_12:
      BYTE1(v21) = 3;
      return remove_jobj(a1, 1, &v21, a3, v15, v16, v17, v18);
    }

    if (!v22)
    {
      log_debug("%s:%d: %s danger - crypto id %lld had refcnt %d\n", v12, v13, v14, v15, v16, v17, v18, "icp_dec_ref");
      LODWORD(v22) = 1;
      goto LABEL_12;
    }

    return 0;
  }

  v19 = inserted;
  log_debug("%s:%d: %s was NOT able to update/decrement crypto state %lld, err = %d\n", v12, v13, v14, v15, v16, v17, v18, "icp_dec_ref");
  return v19;
}

uint64_t sub_10004F388(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, char a6)
{
  needs_ctx();
  v11 = cpx_alloc(a3);
  v12 = v11;
  if (v11)
  {
    cpx_set_key_len(v11, a3);
    v13 = cpx_key(v12);
    memcpy(v13, a2, a3);
    cpx_set_use_offset_for_iv(v12, 1);
    if (a5)
    {
      cpx_set_aes_iv_key(v12, a4);
    }

    cpx_set_is_sep_wrapped_key(v12, a6 & 1);
  }

  return v12;
}

uint64_t load_wrapping_key(uint64_t a1, int a2, char a3, uint64_t a4)
{
  result = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  if (*(a1 + 96))
  {
    return result;
  }

  if (a3)
  {
    return result;
  }

  result = sub_10004F640(a1, &v17 + 1, &v17, &v16, &v19, &v18);
  if (result)
  {
    return result;
  }

  v8 = v18;
  v9 = v19;
  v23 = 0;
  result = 22;
  v20 = v24;
  v21 = 64;
  if (!v19 || !v18 || (v17 & 0x100) == 0)
  {
    return result;
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    goto LABEL_9;
  }

  memset(v24, 0, sizeof(v24));
  v22 = 0;
  result = (*(a1 + 80))(*(a1 + 88), 2, &v23);
  if (result)
  {
    return result;
  }

  if (!v23)
  {
    return 6;
  }

  result = (v9)(a1, &v20, 1, 1);
  if (result)
  {
    if (result != 2)
    {
      return result;
    }

    if (!a2)
    {
      return 2;
    }

    v12 = 1;
    result = (v8)(a1, &v20, 0, a4, 1);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = _apfs_calloc_typed(1uLL, 0x60uLL, 0x10A00405D85AB5CuLL);
  if (v13)
  {
    v10 = v13;
    v14 = v23;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *(v10 + 4) = 0u;
    *(v10 + 5) = 0u;
    v15 = sub_10004F388(v14, v20, v21, 0, 0, v22);
    *(v10 + 9) = v15;
    if (v15)
    {
      *(a1 + 96) = v10;
LABEL_9:
      v11 = *(v10 + 9);
      if (!v11)
      {
        return 1;
      }

      if ((v16 & 1) == 0)
      {
        cpx_set_is_composite_key(v11, 1);
      }

      return 0;
    }

    _apfs_free(v10, 96);
  }

  if (v12)
  {
    (v8)(a1, 0, 0, a4, 1);
  }

  return 12;
}

uint64_t sub_10004F640(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, uint64_t (**a5)(uint64_t a1, uint64_t a2), uint64_t (**a6)())
{
  result = 22;
  if (a4 && a3 && a1 && a2 && a5 && a6)
  {
    v14 = 0;
    result = (*(a1 + 80))(*(a1 + 88), 0, &v14);
    if (result == 45)
    {
LABEL_11:
      result = 0;
      *a4 = 0;
      *a3 = 0;
      *a2 = 1;
      *a5 = sub_100052EA4;
      *a6 = sub_100052EF0;
      return result;
    }

    if (result)
    {
      return result;
    }

    v13 = is_sw_crypto(v14);
    if (v14)
    {
      if (is_sw_crypto(v14) && v13)
      {
        goto LABEL_11;
      }
    }

    else if (v13)
    {
      goto LABEL_11;
    }

    return 45;
  }

  return result;
}

uint64_t unload_wrapping_key(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v10 = 0;
    v5 = sub_10004F640(a1, &v11 + 1, &v11, &v10, &v13, &v12);
    if (!v5)
    {
      v14 = 1;
      v6 = (v12)(a1, 0, &v14, a3, HIBYTE(v11));
      if ((v6 & 0xFFFFFFFD) != 0)
      {
        v5 = v6;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    v8 = *(v7 + 72);
    if (v8)
    {
      cpx_free(v8);
      v7 = *(a1 + 96);
    }

    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    _apfs_free(*(a1 + 96), 96);
    *(a1 + 96) = 0;
  }

  return v5;
}

pthread_mutex_t *container_keybag_alloc(uint64_t a1, uint64_t a2)
{
  v4 = _apfs_calloc_typed(1uLL, 0x68uLL, 0x10A004023E33C9EuLL);
  v5 = v4;
  if (v4)
  {
    new_lock(v4);
    uuid_clear(&v5[1]);
    *&v5[1].__opaque[16] = a1;
    *&v5[1].__opaque[24] = 0;
    *&v5[1].__opaque[8] = a2;
  }

  return v5;
}

void container_keybag_free(pthread_mutex_t *a1)
{
  if (a1)
  {
    unload_wrapping_key(a1, 0, 0);
    free_lock(a1);

    _apfs_free(a1, 104);
  }
}

uint64_t nx_container_keybag_helper(uint64_t a1, int a2, uuid_t dst)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *dst = *(*(a1 + 376) + 1296);
        break;
      case 4:
        *(*(a1 + 376) + 1296) = *dst;
        break;
      case 5:
        *dst = 1801812339;
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      uuid_copy(dst, (*(a1 + 376) + 72));
    }

    else if (a2 == 2)
    {
      *dst = *(a1 + 384);
    }
  }

  else
  {
    *dst = a1;
  }

  return 0;
}

uint64_t akserror_to_errno(uint64_t result)
{
  if (result > -536870161)
  {
    switch(result)
    {
      case 0xE007C006:
      case 0xE007C007:
      case 0xE007C009:
      case 0xE007C010:
      case 0xE007C022:
        return 22;
      case 0xE007C008:
        return 13;
      case 0xE007C00A:
      case 0xE007C00D:
      case 0xE007C00F:
      case 0xE007C01A:
        return 5;
      case 0xE007C00B:
      case 0xE007C00C:
      case 0xE007C011:
      case 0xE007C012:
      case 0xE007C014:
      case 0xE007C015:
      case 0xE007C016:
      case 0xE007C017:
      case 0xE007C01B:
      case 0xE007C01C:
      case 0xE007C01D:
      case 0xE007C01E:
      case 0xE007C020:
        return 1;
      case 0xE007C00E:
        return 36;
      case 0xE007C013:
      case 0xE007C018:
      case 0xE007C019:
        return 92;
      case 0xE007C01F:
        return 30;
      case 0xE007C021:
        return 45;
      default:
        if (result == -536870160)
        {
          return 2;
        }

        if (!result)
        {
          return result;
        }

        break;
    }

    return 1;
  }

  if (result > -536870187)
  {
    if (result > -536870182)
    {
      if (result != -536870181)
      {
        if (result == -536870170)
        {
          return 45;
        }

        return 1;
      }

      return 28;
    }

    if (result == -536870186)
    {
      return 60;
    }

    v1 = 728;
LABEL_15:
    if (result == (v1 | 0xE0000000))
    {
      return 16;
    }

    return 1;
  }

  if (result > -536870199)
  {
    if (result == -536870198)
    {
      return 5;
    }

    v1 = 725;
    goto LABEL_15;
  }

  if (result != -536870211)
  {
    if (result == -536870206)
    {
      return 22;
    }

    return 1;
  }

  return 12;
}

uint64_t sub_10004FB68(pthread_mutex_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v6 = a6;
  if (a4)
  {
    v11 = *(a4 + 18) != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = a5 == 2 && (a3 | a4) == 0;
  v13 = a5 == 1 && (a3 | a4) == 0;
  if (a6)
  {
    pthread_mutex_lock(a1);
  }

  v86 = 0;
  v87 = 0;
  v85 = 0;
  v78 = 0u;
  *v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v73 = 0;
  if (v11)
  {
    if (a3)
    {
      v14 = 0;
    }

    else
    {
      v17 = *(a4 + 18);
      v14 = v17 + 24;
      if (((v17 + 24) & 0xF) != 0)
      {
        v14 = v17 - ((v17 + 24) & 0xF) + 40;
      }
    }
  }

  else
  {
    v15 = (*&a1[1].__opaque[8])(*&a1[1].__opaque[16], 3, &v75);
    if (v15 || !v76 || !v75)
    {
      if (v15)
      {
        wrapping_key = v15;
      }

      else
      {
        wrapping_key = 2 * (a3 != 0);
      }

      if (!v6)
      {
        return wrapping_key;
      }

LABEL_30:
      pthread_mutex_unlock(a1);
      return wrapping_key;
    }

    if (a3)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }
  }

  v77 = 0;
  wrapping_key = sub_1000507FC(a1, v14, &v85, &v75, &v86, &v87, &v77, &v73);
  if (wrapping_key)
  {
    if (!v6)
    {
      return wrapping_key;
    }

    goto LABEL_30;
  }

  v19 = 0;
  if (a3 == 0 && v86 != 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0;
  }

  v74 = v20;
  v71 = a3 == 0 && v86 != 0;
  if (v71)
  {
    wrapping_key = tx_enter(v86, &v74);
    if (wrapping_key)
    {
      goto LABEL_49;
    }

    v19 = v74;
  }

  wrapping_key = load_wrapping_key(a1, v11, v13, v19);
  if (wrapping_key)
  {
    goto LABEL_39;
  }

  v24 = v87;
  *&v78 = "APFS/container";
  *(&v78 + 1) = v87 + 32;
  v72 = v87 + 32;
  v79[0] = v77 - 32;
  v79[1] = sub_1000509E4;
  *&v80 = sub_100052EF8;
  v25 = v86;
  *(&v80 + 1) = sub_10005304C;
  *&v81 = v85;
  if (!v71)
  {
    v25 = 0;
  }

  *(&v81 + 1) = *&a1[1].__opaque[24];
  *&v82 = v25;
  *(&v82 + 1) = v74;
  *(&v83 + 1) = &v75;
  v84 = v87;
  LODWORD(v83) = v73;
  if (a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = a3;
  }

  v88[0] = 0;
  v69 = a4 && !*(a4 + 16) && *(a4 + 18) == 0;
  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = v12;
  }

  v65 = v27;
  if (v27 != 1)
  {
    goto LABEL_67;
  }

  if (sub_1000509E4(&v78, v88))
  {
    goto LABEL_150;
  }

  if (v88[0])
  {
    goto LABEL_74;
  }

  if (!v82)
  {
LABEL_150:
    if (a4 && *(a4 + 18))
    {
      goto LABEL_67;
    }

LABEL_74:
    if (v88[0] != 1)
    {
LABEL_118:
      wrapping_key = 2;
      goto LABEL_39;
    }

    goto LABEL_75;
  }

  if (!a4 || !*(a4 + 18))
  {
    log_err("%s:%d: malformed %s keybag%s\n", v28, v29, v30, v31, v32, v33, v34, "keybag_operation");
    goto LABEL_74;
  }

  log_err("%s:%d: malformed %s keybag%s\n", v28, v29, v30, v31, v32, v33, v34, "keybag_operation");
LABEL_67:
  bzero(v72, v79[0]);
  *(v24 + 4) = 0x1000000002;
LABEL_75:
  if (!v26)
  {
LABEL_114:
    if ((v65 & 1) == 0)
    {
      goto LABEL_141;
    }

    if (!a4)
    {
      if (!v12)
      {
        wrapping_key = 0;
LABEL_144:
        if (wrapping_key == 0 && v71)
        {
          wrapping_key = (*&a1[1].__opaque[8])(*&a1[1].__opaque[16], 4, &v75);
        }

        goto LABEL_39;
      }

LABEL_127:
      if (v80)
      {
        wrapping_key = (v80)(&v78);
        if (!wrapping_key)
        {
          v62 = *(v24 + 17);
          v63 = *(v24 + 9);
          v61 = *(v24 + 16);
          log_debug("%s:%d: wrote %s keybag (v%d, %d keys, %d bytes)\n", v28, v29, v30, v31, v32, v33, v34, "keybag_operation");
          goto LABEL_144;
        }
      }

      else
      {
        wrapping_key = 45;
      }

      v60 = *(v24 + 9);
      log_err("%s:%d: unable to write %d-byte %s keybag (%d)\n", v28, v29, v30, v31, v32, v33, v34, "keybag_operation");
      goto LABEL_39;
    }

LABEL_116:
    if (!*(v24 + 17))
    {
      goto LABEL_141;
    }

    goto LABEL_127;
  }

  v64 = 0;
  uu2 = (v24 + 48);
  v67 = a2;
  v68 = v12;
  v70 = v24;
  while (1)
  {
    v35 = *(v24 + 9);
    if (v35 >= 0x11)
    {
      break;
    }

    v38 = 0;
    if (a4)
    {
      goto LABEL_87;
    }

LABEL_95:
    if (!v38)
    {
      goto LABEL_118;
    }

    v49 = *(a3 + 18);
    v50 = v49 + 24;
    v51 = v38[9];
    v52 = v49 - ((v49 + 24) & 0xF) + 40;
    if ((v50 & 0xF) == 0)
    {
      v52 = v50;
    }

    if (((v51 + 24) & 0xF) != 0)
    {
      v53 = v51 - ((v51 + 24) & 0xF) + 40;
    }

    else
    {
      v53 = v51 + 24;
    }

    if (v53 > v52)
    {
      wrapping_key = 40;
      goto LABEL_39;
    }

    memcpy(a3, v38, v53);
LABEL_113:
    if (!v69)
    {
      goto LABEL_114;
    }
  }

  v36 = *(v26 + 16);
  v37 = &v72[v35];
  v38 = uu2;
  while (uuid_compare(v26, v38) || v36 && v38[8] != v36)
  {
    v39 = v38[9];
    v40 = v39 + 24;
    v41 = v39 - ((v39 + 24) & 0xF) + 40;
    if ((v40 & 0xF) == 0)
    {
      v41 = v40;
    }

    v38 = (v38 + v41);
    if (v38 >= v37)
    {
      v38 = 0;
      break;
    }
  }

  v12 = v68;
  v24 = v70;
  if (!a4)
  {
    goto LABEL_95;
  }

LABEL_87:
  if (v38)
  {
    v42 = v6;
    v43 = v38[9];
    v44 = v43 + 24;
    v45 = v43 - ((v43 + 24) & 0xF) + 40;
    if ((v44 & 0xF) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = v44;
    }

    v47 = *(a4 + 18);
    if (*(a4 + 18))
    {
      v48 = v47 + 24;
      if (((v47 + 24) & 0xF) != 0)
      {
        v48 = v47 - ((v47 + 24) & 0xF) + 40;
      }
    }

    else
    {
      v48 = 0;
    }

    v54 = *(v24 + 9);
    if (v48 - v46 + v54 > v79[0])
    {
      wrapping_key = 28;
      LODWORD(v6) = v42;
      a2 = v67;
      goto LABEL_39;
    }

    if (v48 == v46)
    {
      memcpy(v38, a4, v46);
      v6 = v42;
      a2 = v67;
      v24 = v70;
    }

    else
    {
      memmove(v38, v38 + v46, v72 - (v38 + v46) + v54);
      if (v48 < v46)
      {
        bzero(&v72[*(v70 + 9) + v48 - v46], v46 - v48);
      }

      if (*(a4 + 18))
      {
        memcpy(&v72[*(v70 + 9) - v46], a4, v48);
        v24 = v70;
        *(v70 + 9) += v48 - v46;
      }

      else
      {
        v24 = v70;
        --*(v70 + 17);
        *(v70 + 9) -= v46;
        v64 = 1;
      }

      v6 = v42;
      a2 = v67;
      v12 = v68;
    }

    goto LABEL_113;
  }

  v55 = *(a4 + 18);
  if (!*(a4 + 18))
  {
    if (v69)
    {
      wrapping_key = 0;
    }

    else
    {
      wrapping_key = 2;
    }

    if (v69 & v64)
    {
      goto LABEL_140;
    }

    goto LABEL_144;
  }

  v56 = v55 + 24;
  v57 = v55 - ((v55 + 24) & 0xF) + 40;
  if ((v56 & 0xF) != 0)
  {
    v58 = v57;
  }

  else
  {
    v58 = v56;
  }

  v59 = *(v24 + 9);
  if (v58 + v59 > v79[0])
  {
    wrapping_key = 28;
    goto LABEL_39;
  }

  memcpy(&v72[v59], a4, v58);
  ++*(v24 + 17);
  *(v24 + 9) += v58;
LABEL_140:
  if (v65)
  {
    goto LABEL_116;
  }

LABEL_141:
  if (*(&v80 + 1))
  {
    wrapping_key = (*(&v80 + 1))(&v78);
    if (!wrapping_key)
    {
      log_debug("%s:%d: wiped %s keybag\n", v28, v29, v30, v31, v32, v33, v34, "keybag_operation");
      goto LABEL_144;
    }
  }

  else
  {
    wrapping_key = 45;
  }

  log_err("%s:%d: unable to wipe %s keybag (%d)\n", v28, v29, v30, v31, v32, v33, v34, "keybag_operation");
LABEL_39:
  if (v71)
  {
    if (v74 == a2)
    {
      v21 = 0;
    }

    else
    {
      v21 = 5;
    }

    v22 = tx_leave(v86, v74, v21);
    if (wrapping_key)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22 == 0;
    }

    if (v23)
    {
      wrapping_key = wrapping_key;
    }

    else
    {
      wrapping_key = v22;
    }
  }

LABEL_49:
  _apfs_free(v87, v77);
  if (v6)
  {
    goto LABEL_30;
  }

  return wrapping_key;
}

uint64_t nx_keybag_delete(pthread_mutex_t *a1, uint64_t a2, unsigned __int8 *src, unsigned __int16 a4)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  uuid_copy(&v8, src);
  LODWORD(v9) = a4;
  if (a1)
  {
    return sub_10004FB68(a1, a2, 0, &v8, 0, 1);
  }

  else
  {
    return 12;
  }
}

uint64_t apfs_container_keybag_helper(uint64_t a1, int a2, unsigned __int8 *a3)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *a3 = *(a1 + 3768);
        break;
      case 4:
        *(a1 + 3768) = *a3;
        break;
      case 5:
        *a3 = 1919247219;
        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v5 = *(a1 + 392);
        goto LABEL_11;
      case 1:
        if (is_sw_crypto(*(a1 + 392)))
        {
          v6 = (*(a1 + 376) + 240);
        }

        else
        {
          v6 = (*(*(a1 + 392) + 376) + 72);
        }

        uuid_copy(a3, v6);
        break;
      case 2:
        v5 = *(*(a1 + 392) + 384);
LABEL_11:
        *a3 = v5;
        break;
    }
  }

  return 0;
}

void apfs_keybag_init(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  *dst = 0u;
  if (!a1)
  {
    sub_1000A71E8();
  }

  v3 = *(a1 + 376);
  if (!v3)
  {
    sub_1000A71BC();
  }

  v4 = *(a1 + 392);
  if (!v4)
  {
    sub_1000A7190();
  }

  v5 = *(v4 + 928);
  if (!v5)
  {
    sub_1000A7164();
  }

  uuid_copy(dst, (v3 + 240));
  LODWORD(v16[0]) = 1048579;
  v7 = sub_10004FB68(v5, 0, dst, 0, 0, 1);
  if (v7 != 2)
  {
    if (!v7)
    {
      *(a1 + 3768) = *(v16 + 8);
      *(a1 + 3760) = container_keybag_alloc(a1, apfs_container_keybag_helper);
      return;
    }

    log_err("%s:%d: failed to get apfs volume keybag, err = %d\n", v8, v9, v10, v11, v12, v13, v14, "apfs_keybag_get");
    goto LABEL_12;
  }

  if (!a2 || apfs_keybag_create(a1, a2))
  {
LABEL_12:
    *(a1 + 3760) = 0;
    log_err("%s:%d: failed to initialize volume keybag, err = %d\n", v8, v9, v10, v11, v12, v13, v14, "apfs_keybag_init");
  }
}

uint64_t apfs_keybag_create(void *a1, uint64_t a2)
{
  v3 = a1[142];
  if (v3)
  {
    v4 = *(v3 + 280);
    v5 = *(v3 + 288);
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  a1[471] = v4;
  a1[472] = v5;
  v6 = sub_100051308(a1, a2);
  if (v6)
  {
    v14 = v6;
    log_err("%s:%d: failed to add apfs unlock records range in nx keybag, err = %d\n", v7, v8, v9, v10, v11, v12, v13, "apfs_keybag_create");
  }

  else
  {
    v15 = container_keybag_alloc(a1, apfs_container_keybag_helper);
    a1[470] = v15;
    if (v15)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return v14;
}

uint64_t apfs_keybag_iter_setup(uint64_t a1, void *a2)
{
  v9 = 0;
  result = 22;
  if (a1 && a2)
  {
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v10[0] = 0;
    v10[1] = 0;
    if (!sub_1000507FC(a1, 0, &v15, v10, &v14, &v13, &v12, &v11))
    {
      wrapping_key = load_wrapping_key(a1, 0, 0, 0);
      v6 = v12;
      if (!wrapping_key)
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        v16[0] = "APFS/container";
        v16[1] = v13 + 32;
        v16[2] = v12 - 32;
        v16[3] = sub_1000509E4;
        v16[4] = 0;
        v16[5] = 0;
        *&v17 = v15;
        *(&v17 + 1) = *(a1 + 96);
        v18 = v14;
        *(&v19 + 1) = v10;
        v20 = v13;
        LODWORD(v19) = v11;
        if (!sub_1000509E4(v16, &v9) && v9 == 1)
        {
          result = 0;
          v7 = v13;
          v8 = v13 + 48;
          a2[1] = v6;
          a2[2] = v7;
          *a2 = v8;
          return result;
        }
      }

      _apfs_free(v13, v6);
    }

    return 2;
  }

  return result;
}

uint64_t sub_1000507FC(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, void *a5, void *a6, size_t *a7, uint64_t a8)
{
  v9 = *(a1 + 88);
  if (!v9)
  {
    return 22;
  }

  result = (*(a1 + 80))(v9, 1, a1 + 64);
  if (!result)
  {
    result = (*(a1 + 80))(*(a1 + 88), 2, a3);
    if (!result)
    {
      result = (*(a1 + 80))(*(a1 + 88), 3, a4);
      if (!result)
      {
        result = (*(a1 + 80))(*(a1 + 88), 5, a8);
        if (!result)
        {
          *a5 = 0;
          v18 = (*(a1 + 80))(*(a1 + 88), 0, a5);
          if (v18 && v18 != 45)
          {
            if (!*(a4 + 8))
            {
              if (a2)
              {
                return 30;
              }

              else
              {
                return 2;
              }
            }

            *a5 = 0;
          }

          v19 = *(a4 + 8);
          v20 = v19 * dev_block_size(*a3);
          *a7 = v20;
          if (a2 >= 1 && *a5)
          {
            if (*(a4 + 8))
            {
              v21 = 0;
            }

            else
            {
              v21 = 48;
            }

            v22 = (v21 + a2) % dev_block_size(*a3);
            if (*(a4 + 8))
            {
              v23 = 0;
            }

            else
            {
              v23 = 48;
            }

            if (v22)
            {
              v24 = dev_block_size(*a3);
              if (*(a4 + 8))
              {
                v25 = 0;
              }

              else
              {
                v25 = 48;
              }

              v26 = v23 + a2 + v24 - (v25 + a2) % dev_block_size(*a3);
            }

            else
            {
              v26 = v23 + a2;
            }

            v20 = *a7 + v26;
            *a7 = v20;
          }

          if (!a6)
          {
            return 0;
          }

          v27 = _apfs_malloc_typed(v20, 0x756179F4uLL);
          *a6 = v27;
          if (v27)
          {
            result = 0;
          }

          else
          {
            result = 12;
          }

          if (a2 >= 1 && v27)
          {
            bzero(v27, *a7);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000509E4(uint64_t a1, char *a2)
{
  v4 = *(a1 + 96);
  v5 = *(*(a1 + 88) + 8);
  v6 = dev_block_size(*(a1 + 48));
  v7 = *(a1 + 88);
  if (!*v7 || !v7[1])
  {
    return 2;
  }

  v8 = v6;
  cpx_setcpoff(*(*(a1 + 56) + 72), *v7);
  v9 = *(a1 + 88);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(a1 + 56);
  data = dev_read_data(*(a1 + 48));
  if (data)
  {
    v21 = data;
    log_err("%s:%d: dev_read_data failed with error %d\n", v14, v15, v16, v17, v18, v19, v20, "container_kb_get");
    return v21;
  }

  v23 = *(*(a1 + 88) + 8);
  v24 = dev_block_size(*(a1 + 48));
  if (fletcher64_verify_cksum(v4, (v4 + 8), v23 * v24 - 8, 0, v25, v26))
  {
    log_err("%s:%d: Checksum failure\n", v27, v28, v29, v30, v31, v32, v33, "container_kb_get");
LABEL_26:
    v21 = 0;
    *a2 = 0;
    return v21;
  }

  v34 = *(v4 + 24);
  if (v34 != 1801812339 && v34 != 1835754873 && v34 != 1919247219)
  {
    v38 = *(v4 + 32);
    v39 = **(a1 + 8);
LABEL_25:
    v40 = *(v4 + 24);
    log_err("%s:%d: %s: version error, bag->mk_obj.o_type %u != %u and %u, or locker->kl_version %u != %u, or size %lu != keybag_version_upgrade %lu\n", v27, v28, v29, v30, v31, v32, v33, "container_kb_get");
    goto LABEL_26;
  }

  if (*(v4 + 32) != 2 && (**(a1 + 8) != 2 || v5 * v8 == 32))
  {
    goto LABEL_25;
  }

  v35 = *(v4 + 36);
  v36 = v35 > 0xF && v5 * v8 - 32 >= v35;
  v37 = v36;
  *a2 = v37;
  if (!v36)
  {
    log_err("%s:%d: %d >= %lu && %d <= %lu\n", v27, v28, v29, v30, v31, v32, v33, "container_kb_get");
  }

  return 0;
}

uint64_t apfs_keybag_iter_alloc(uint64_t a1, void *a2)
{
  if (!a1)
  {
    sub_1000A7214();
  }

  apfs_keybag_init(a1, 0);
  if (!*(a1 + 3760))
  {
    return 2;
  }

  v4 = _apfs_calloc_typed(1uLL, 0x18uLL, 0x10A0040319E9F20uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  pthread_mutex_lock(*(a1 + 3760));
  v6 = apfs_keybag_iter_setup(*(a1 + 3760), v5);
  if (v6)
  {
    pthread_mutex_unlock(*(a1 + 3760));
    _apfs_free(v5, 24);
  }

  else
  {
    *a2 = v5;
  }

  return v6;
}

uint64_t apfs_keybag_iter_next(unint64_t *a1, uuid_t dst, void *a3, int a4)
{
  v4 = a1[2] + *(a1[2] + 36) + 32;
  v5 = *a1;
  if (*a1 >= v4)
  {
    return 0;
  }

  while (a4 && *(v5 + 16) != a4)
  {
    v8 = *(v5 + 18);
    v9 = v8 + 24;
    v10 = v8 - ((v8 + 24) & 0xF) + 40;
    if ((v9 & 0xF) == 0)
    {
      v10 = v9;
    }

    v5 += v10;
    if (v5 >= v4)
    {
      return 0;
    }
  }

  uuid_copy(dst, v5);
  v12 = *(v5 + 18);
  if (a3)
  {
    *a3 = v5 + 24;
    a3[1] = v12;
  }

  v13 = v12 + 24;
  v14 = v12 - ((v12 + 24) & 0xF) + 40;
  if ((v13 & 0xF) == 0)
  {
    v14 = v13;
  }

  *a1 = v5 + v14;
  return 1;
}

uint64_t apfs_keybag_iter_free(uint64_t a1, uint64_t a2)
{
  _apfs_free(*(a2 + 16), *(a2 + 8));
  _apfs_free(a2, 24);
  v4 = *(a1 + 3760);

  return pthread_mutex_unlock(v4);
}

uint64_t apfs_keybag_lookup_record(uint64_t a1, unsigned __int8 *uu, __int16 a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000A726C();
  }

  if (uuid_is_null(uu))
  {
    sub_1000A7240();
  }

  apfs_keybag_init(a1, 0);
  v8 = *(a1 + 3760);
  if (!v8)
  {
    return 2;
  }

  return sub_100050E58(v8, uu, a3, a4);
}

uint64_t sub_100050E58(pthread_mutex_t *a1, const unsigned __int8 *a2, __int16 a3, uint64_t a4)
{
  bzero(dst, 0x228uLL);
  if (!a1)
  {
    return 2;
  }

  uuid_copy(dst, a2);
  v17 = a3;
  __n = 512;
  result = sub_10004FB68(a1, 0, dst, 0, 0, 1);
  if (!result)
  {
    if (a4)
    {
      if (*(a4 + 8) >= __n)
      {
        memcpy(*a4, &__n_6, __n);
        result = 0;
        *(a4 + 8) = __n;
      }

      else
      {
        v15 = *(a4 + 8);
        log_err("%s:%d: output buffer too small: len %zu, must be at least %d\n", v9, __n, v10, v11, v12, v13, v14, "container_keybag_lookup_record");
        return 22;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nx_keybag_lookup_record(uint64_t a1, unsigned __int8 *uu, __int16 a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000A72C4();
  }

  if (uuid_is_null(uu))
  {
    sub_1000A7298();
  }

  v8 = *(a1 + 928);

  return sub_100050E58(v8, uu, a3, a4);
}

uint64_t sub_100050FE4(uint64_t a1, uint64_t a2, void *a3)
{
  memset(v44, 0, sizeof(v44));
  bzero(dst, 0x228uLL);
  v6 = AKS_FV_service();
  if (!v6)
  {
    return 6;
  }

  v7 = v6;
  if (!*(v6 + 64))
  {
    return 6;
  }

  uuid_copy(dst, (*(a1 + 376) + 240));
  v46 = 11;
  if (a3)
  {
    v8 = a3[1];
    if (*a3)
    {
      __memcpy_chk();
    }

    v47 = v8;
    v10 = sub_10004FB68(*(*(a1 + 392) + 928), a2, 0, dst, 0, 1);
    v19 = a3;
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_16:
    v9 = (*(v7 + 64))(v44, 5, 0, 0, 0, v19, 0);
    if (v9)
    {
      v28 = 2;
      do
      {
        if (!v28)
        {
          panic("failed to commit proposed wvek record, err = 0x%x\n", v9);
        }

        log_err("%s:%d: failed to commit proposed wvek record, err = 0x%x (%d more retries)\n", v21, v22, v23, v24, v25, v26, v27, "apfs_commit_update_volume_key");
        --v28;
        v9 = (*(v7 + 64))(v44, 5, 0, 0, 0, v19, 0);
      }

      while (v9);
    }

    uuid_copy(dst, (*(a1 + 376) + 240));
    v46 = 10;
    if (*v19)
    {
      v29 = v19[1];
      __memcpy_chk();
    }

    v47 = v19[1];
    if (sub_10004FB68(*(*(a1 + 392) + 928), a2, 0, dst, 0, 1))
    {
      log_err("%s:%d: failed to update wvek record in nx keybag, err = %d\n", v30, v31, v32, v33, v34, v35, v36, "apfs_commit_update_volume_key");
      v9 = 0;
    }

    else if (nx_keybag_delete(*(*(a1 + 392) + 928), a2, (*(a1 + 376) + 240), 0xBu))
    {
      log_err("%s:%d: failed to clean-up proposed wvek record in nx keybag, err = %d\n", v37, v38, v39, v40, v41, v42, v43, "apfs_commit_update_volume_key");
    }

    goto LABEL_13;
  }

  v47 = 512;
  v10 = sub_10004FB68(*(*(a1 + 392) + 928), 0, dst, 0, 0, 1);
  if (!v10)
  {
    v18 = _apfs_calloc_typed(1uLL, 0x10uLL, 0x1080040FC6463CFuLL);
    if (!v18)
    {
      v9 = 12;
      goto LABEL_12;
    }

    v19 = v18;
    *v18 = &v48;
    v18[1] = v47;
    goto LABEL_16;
  }

LABEL_11:
  v9 = v10;
LABEL_12:
  log_err("%s:%d: failed to add proposed wvek record in nx keybag, err = %d\n", v11, v12, v13, v14, v15, v16, v17, "apfs_commit_update_volume_key");
  v19 = a3;
LABEL_13:
  if (v19 != a3)
  {
    _apfs_free(v19, 16);
  }

  return v9;
}

uint64_t sub_100051308(void *a1, uint64_t a2)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (!a1)
  {
    sub_1000A7374();
  }

  v3 = a1[471];
  v4 = a1[472];
  v5 = a1[142];
  if (v5)
  {
    v6 = (v5 + 4);
    v7 = v5[32];
    v8 = v5[1];
    v3 -= v7 / dev_block_size(*v5);
  }

  else
  {
    v9 = a1[47];
    if (!v9)
    {
      sub_1000A7348();
    }

    v10 = a1[49];
    if (!v10)
    {
      sub_1000A731C();
    }

    v8 = *(v10 + 928);
    if (!v8)
    {
      sub_1000A72F0();
    }

    v6 = (v9 + 240);
  }

  uuid_copy(&v12, v6);
  LODWORD(v13) = 1048579;
  *(&v13 + 1) = v3;
  *&v14 = v4;
  return sub_10004FB68(v8, a2, 0, &v12, 0, 1);
}

uint64_t apfs_keybag_aks_remove_unlock_records(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v49 = 0;
  v6 = *(a1 + 376);
  v7 = *(v6 + 964) == 1 && uuid_is_null((v6 + 1008)) == 0;
  if (!*(a1 + 3760) || is_sw_crypto(*(a1 + 392)))
  {
    return 0;
  }

  v9 = AKS_FV_service();
  if (!v9)
  {
    return 6;
  }

  v10 = v9;
  if (!*(v9 + 64))
  {
    return 6;
  }

  v11 = _apfs_calloc_typed(1uLL, 0x58uLL, 0x1000040624EA6DBuLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  *src = 0;
  v54 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v13 = apfs_keybag_iter_alloc(a1, v49);
  v14 = *v49;
  if (v13 || !apfs_keybag_iter_next(*v49, src, v48, a3))
  {
    v8 = 0;
    goto LABEL_32;
  }

  v15 = a3 == 3 && v7;
  do
  {
    bzero(dst, 0x228uLL);
    memset(v47, 0, sizeof(v47));
    if (!v15)
    {
      goto LABEL_18;
    }

    if ((*(v10 + 56))(v47, v48, v12))
    {
      log_err("%s:%d: failed to get unlock record's aks state, err = 0x%x\n", v16, v17, v18, v19, v20, v21, v22, "apfs_keybag_aks_remove_unlock_records");
LABEL_18:
      v23 = 1;
      goto LABEL_19;
    }

    v23 = v12[20] != 1;
LABEL_19:
    uuid_copy(dst, src);
    v51 = a3;
    v52 = 0;
    v24 = sub_10004FB68(*(a1 + 3760), a2, 0, dst, 0, 0);
    if (v24)
    {
      v8 = v24;
      log_err("%s:%d: failed to delete unlock record in apfs keybag, err = %d\n", v25, v26, v27, v28, v29, v30, v31, "apfs_keybag_aks_remove_unlock_records");
      goto LABEL_32;
    }

    if (v23 && (*(v10 + 64))(v47, 11, 0, 0, v48, 0, 0))
    {
      log_err("%s:%d: failed to remove unlock record's aks state, err = 0x%x\n", v32, v33, v34, v35, v36, v37, v38, "apfs_keybag_aks_remove_unlock_records");
    }
  }

  while ((apfs_keybag_iter_next(v14, src, v48, a3) & 1) != 0);
  v8 = sub_100051308(a1, a2);
  if (v8)
  {
    log_err("%s:%d: failed to update nx keybag, err = %d\n", v39, v40, v41, v42, v43, v44, v45, "apfs_keybag_aks_remove_unlock_records");
  }

LABEL_32:
  if (v14)
  {
    apfs_keybag_iter_free(a1, v14);
  }

  _apfs_free(v12, 88);
  return v8;
}

uint64_t apfs_keybag_set_create_update_record(uint64_t a1, uint64_t a2, unsigned __int8 *uu, uint64_t a4, unsigned __int8 *a5, uint64_t a6, int a7, unint64_t a8, uint64_t a9)
{
  LODWORD(v9) = a7;
  v279 = 0;
  v280 = 0;
  v277 = 0;
  v278 = 0;
  v275 = 0;
  v276 = 0;
  __dst = 0;
  v274 = 0;
  v270 = 0;
  v271 = 0;
  v272 = 0;
  memset(dst, 0, sizeof(dst));
  memset(src, 0, sizeof(src));
  is_null = uuid_is_null(uu);
  v17 = uuid_is_null(a5);
  bzero(v284, 0x228uLL);
  v267 = 0;
  v268 = 0;
  v269 = 0;
  if (!a1)
  {
    sub_1000A76B8();
  }

  if (!a2)
  {
    sub_1000A768C();
  }

  v25 = a4 != 0;
  if (a4 && *(a4 + 8) >= 0x201uLL)
  {
    v259 = *(a4 + 8);
    log_err("%s:%d: Invalid data1 key length %lu\n", v18, v19, v20, v21, v22, v23, v24, "apfs_keybag_set_create_update_record");
    return 22;
  }

  if (a6 && *(a6 + 8) >= 0x201uLL)
  {
    v260 = *(a6 + 8);
    log_err("%s:%d: Invalid data2 key length %lu\n", v18, v19, v20, v21, v22, v23, v24, "apfs_keybag_set_create_update_record");
    return 22;
  }

  v265 = a2;
  v27 = 0;
  v28 = is_null != 0;
  v26 = 22;
  if ((a4 != 0) == v28 || (a6 != 0) == (v17 != 0))
  {
    goto LABEL_14;
  }

  if ((v9 - 6) < 0xFFFFFFFB)
  {
    v27 = 0;
    v26 = 22;
    goto LABEL_14;
  }

  if (*(a1 + 1136))
  {
    v263 = 0;
    goto LABEL_55;
  }

  v31 = *(a1 + 392);
  if (!v31)
  {
    sub_1000A7660();
  }

  if (!*(v31 + 928))
  {
    sub_1000A7634();
  }

  if (!*(v31 + 376))
  {
    sub_1000A7608();
  }

  v32 = *(a1 + 376);
  if (!v32)
  {
    sub_1000A75DC();
  }

  v33 = *(v32 + 964);
  if (v9 == 2)
  {
    if (v33 == 1)
    {
      goto LABEL_35;
    }

LABEL_47:
    if ((*(v32 + 264) & 1) == 0)
    {
      goto LABEL_51;
    }

    v35 = 0;
    goto LABEL_49;
  }

  if (*(v32 + 964) > 0xFFu)
  {
    if (v33 == 256 || v33 == 704 || v33 == 640)
    {
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (v33 > 0x20)
  {
    goto LABEL_47;
  }

  if (((1 << v33) & 0x100010110) != 0)
  {
    goto LABEL_46;
  }

  if (v33 != 1)
  {
    goto LABEL_47;
  }

LABEL_35:
  v34 = *(a1 + 3936);
  v35 = v34 != 0;
  if (*(v32 + 264))
  {
LABEL_49:
    if (!*(v32 + 976) || v35)
    {
      goto LABEL_53;
    }

LABEL_51:
    v36 = is_sw_crypto(v31);
    v37 = 0;
    v35 = 0;
    if (!a4 || v36)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (!v34)
  {
    goto LABEL_51;
  }

  v35 = 1;
LABEL_53:
  v37 = v265;
LABEL_54:
  v263 = v35;
  apfs_keybag_init(a1, v37);
LABEL_55:
  v264 = *(a1 + 3760);
  if (!v264)
  {
    if (*(a1 + 1136))
    {
      v27 = 0;
      v26 = 92;
      goto LABEL_14;
    }

    v45 = is_sw_crypto(*(a1 + 392));
    v27 = 0;
    v26 = 92;
    if (a4 || v45)
    {
      goto LABEL_14;
    }
  }

  v38 = v9 & 6;
  v39 = 64;
  if (v38 == 2 && (a8 & 2) != 0)
  {
    v268 = 4;
    v39 = 68;
  }

  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        v262 = 4;
        v40 = *(a4 + 8);
        v277 = *a4;
        v278 = v40;
        uuid_copy(dst, uu);
        LOBYTE(v9) = 0;
        v41 = 0;
        v27 = 0;
        v26 = 13;
      }

      else
      {
        v63 = apfs_keybag_lookup_record(a1, a5, 3, 0);
        v26 = v63;
        if (v63)
        {
          if (v63 == 2)
          {
            v26 = 2;
            log_err("%s:%d: Cannot add a hint, there is no wkek associated to it, err = %d\n", v64, v65, v66, v67, v68, v69, v70, "apfs_keybag_set_create_update_record");
          }

          else
          {
            memset(out, 0, 37);
            uuid_unparse(a5, out);
            log_err("%s:%d: failed to lookup existing wkek for uuid = %s, err = %d\n", v81, v82, v83, v84, v85, v86, v87, "apfs_keybag_set_create_update_record");
          }

          v27 = 0;
          goto LABEL_14;
        }

        v262 = v9 & 6;
        v80 = *(a6 + 8);
        v277 = *a6;
        v278 = v80;
        uuid_copy(dst, a5);
        LOBYTE(v9) = 0;
        v41 = 0;
        v27 = 0;
      }

      goto LABEL_96;
    }

    out[0] = 0uLL;
    v46 = AKS_FV_service();
    if (v46)
    {
      v47 = v46;
      v48 = *(v46 + 32);
      if (v48)
      {
        if (*(v46 + 24))
        {
          if (!v48(&v267, 2, &v280) && v280)
          {
            v277 = _apfs_calloc_typed(1uLL, v280, 0xF9C2921EuLL);
            if (v277 && (v278 = v280, (*&out[0] = _apfs_calloc_typed(1uLL, v280, 0xD7FEA3DAuLL)) != 0))
            {
              *(&out[0] + 1) = v280;
              v55 = apfs_keybag_lookup_record(a1, uu, 3, out);
              if (v55)
              {
                v26 = v55;
                _apfs_free(*&out[0], v280);
                log_err("%s:%d: failed to lookup rec to re-wrap, err = %d\n", v56, v57, v58, v59, v60, v61, v62, "apfs_keybag_set_create_update_record");
              }

              else
              {
                v9 = (*(v47 + 24))(&v267, a4, out, a5, a6, &v277);
                _apfs_free(*&out[0], v280);
                if (!v9)
                {
                  v262 = v38;
                  uuid_copy(dst, a5);
                  v41 = 0;
                  v27 = 0;
                  v26 = 0;
LABEL_96:
                  v25 = 1;
LABEL_101:
                  v88 = 1;
                  goto LABEL_102;
                }

                log_err("%s:%d: failed to re-wrap, err = 0x%x\n", v157, v158, v159, v160, v161, v162, v163, "apfs_keybag_set_create_update_record");
                v26 = akserror_to_errno(v9);
              }
            }

            else
            {
              v26 = 12;
            }

            goto LABEL_159;
          }

          log_err("%s:%d: %s failed to get wkek len from AKS (%ld): %d\n", v280, v49, v50, v51, v52, v53, v54, "apfs_keybag_set_create_update_record");
        }
      }
    }

    v26 = 6;
LABEL_159:
    v27 = 0;
    goto LABEL_14;
  }

  v262 = v9 & 6;
  if (v9 == 1)
  {
    if (a4)
    {
      v42 = *(a4 + 8);
      v277 = *a4;
      v278 = v42;
      uuid_copy(dst, uu);
    }

    if (a6)
    {
      v43 = *(a6 + 8);
      v275 = *a6;
      v276 = v43;
      uuid_copy(src, a5);
      v44 = *(a1 + 1136);
      LOBYTE(v9) = 0;
      v27 = 0;
      if (v44)
      {
        v41 = *(v44 + 8);
      }

      else
      {
        v41 = *(*(a1 + 392) + 928);
      }
    }

    else
    {
      LOBYTE(v9) = 0;
      v41 = 0;
      v27 = 0;
    }

    v26 = 13;
    goto LABEL_101;
  }

  v71 = AKS_FV_service();
  v72 = uuid_is_null(a5);
  v27 = 0;
  v26 = 22;
  if (a6 || !v72)
  {
    goto LABEL_14;
  }

  if ((a8 & 8) != 0)
  {
    v268 = v39;
  }

  if (is_sw_crypto(*(a1 + 392)))
  {
    if (*(*(a1 + 376) + 964) == 1)
    {
      if (!(a4 | *(a1 + 3936)))
      {
LABEL_93:
        log_err("%s:%d: can not create kek and vek without a secret\n", v73, v74, v75, v76, v77, v78, v79, "apfs_keybag_set_create_update_record");
        return 22;
      }
    }

    else if (!a4)
    {
      goto LABEL_93;
    }
  }

  if (!v71)
  {
    goto LABEL_178;
  }

  v121 = v71[4];
  if (!v121 || !v71[2] || !*v71)
  {
    goto LABEL_178;
  }

  if (v121(&v267, 2, &v280) || !v280)
  {
    log_err("%s:%d: failed to get wkek len from AKS (%ld): %d\n", v122, v123, v124, v125, v126, v127, v128, "apfs_keybag_set_create_update_record");
LABEL_178:
    v27 = 0;
    v26 = 6;
    goto LABEL_14;
  }

  if ((v71[4])(&v267, 1, &v279) || !v279)
  {
    log_err("%s:%d: failed to get wvek len from AKS (%ld): %d\n", v129, v130, v131, v132, v133, v134, v135, "apfs_keybag_set_create_update_record");
    goto LABEL_178;
  }

  v136 = v71;
  if (is_sw_crypto(*(a1 + 392)))
  {
    if (!a4 && v263)
    {
      goto LABEL_146;
    }

    goto LABEL_181;
  }

  if (a4)
  {
LABEL_181:
    v164 = *(a1 + 376);
    v165 = *(v164 + 964);
    if (v165 > 0xFF)
    {
      if (*(v164 + 964) > 0x2BFu)
      {
        if (v165 != 768 && v165 != 704)
        {
          goto LABEL_202;
        }
      }

      else if (v165 != 256 && v165 != 640)
      {
        goto LABEL_202;
      }
    }

    else if (v165 > 0x20 || ((1 << v165) & 0x100010110) == 0)
    {
LABEL_202:
      if (!uuid_compare(uu, (v164 + 240)))
      {
        v192 = *(*(a1 + 376) + 964);
        v26 = 22;
        if (v192 == 1 || v192 == 64)
        {
          return v26;
        }
      }

      if ((a8 & 8) != 0)
      {
        v280 = 0;
      }

      else
      {
        v277 = _apfs_calloc_typed(1uLL, v280, 0x1DC934A5uLL);
        if (!v277)
        {
          goto LABEL_230;
        }

        v278 = v280;
      }

      v137 = 1;
      goto LABEL_147;
    }

    v261 = *(v164 + 964);
LABEL_46:
    log_err("%s:%d: %s invalid operation (%d) on volume role (0x%x)\n", v18, v19, v20, v21, v22, v23, v24, "apfs_keybag_set_create_update_record");
    return 22;
  }

LABEL_146:
  v137 = 0;
LABEL_147:
  v275 = _apfs_calloc_typed(1uLL, v279, 0x869AEDEDuLL);
  if (!v275)
  {
    goto LABEL_230;
  }

  v276 = v279;
  if (is_sw_crypto(*(a1 + 392)))
  {
    goto LABEL_149;
  }

  __dst = _apfs_calloc_typed(1uLL, v279, 0x7C6165AAuLL);
  if (!__dst)
  {
LABEL_230:
    v26 = 12;
LABEL_231:
    v27 = 64;
    goto LABEL_14;
  }

  v274 = v279;
  v166 = nx_keybag_lookup_record(*(a1 + 392), (*(a1 + 376) + 240), 2, &__dst);
  if (!v166)
  {
    if (!nx_keybag_lookup_record(*(a1 + 392), (*(a1 + 376) + 240), 5, &__dst))
    {
      v209 = sub_100050FE4(a1, v265, 0);
      if (v209)
      {
        v26 = v209;
        log_err("%s:%d: failed to fix-up and replace stale-invalid wvek with committed-proposed wvek, err = %d\n", v210, v211, v212, v213, v214, v215, v216, "apfs_keybag_set_create_update_record");
        goto LABEL_266;
      }
    }

    if ((v137 & 1) == 0)
    {
      sub_1000A73A0();
    }

    v174 = 0;
    goto LABEL_213;
  }

  v26 = v166;
  if (v166 != 2)
  {
    memset(out, 0, 37);
    uuid_unparse((*(a1 + 376) + 240), out);
    log_err("%s:%d: failed to lookup existing wvek for uuid = %s, err = %d\n", v167, v168, v169, v170, v171, v172, v173, "apfs_keybag_set_create_update_record");
    goto LABEL_266;
  }

LABEL_149:
  v27 = 64;
  v270 = _apfs_calloc_typed(1uLL, 0x40uLL, 0x1136D688uLL);
  if (!v270)
  {
    v26 = 12;
    goto LABEL_14;
  }

  v271 = 64;
  if (!v263)
  {
    if (!v137)
    {
      if (is_sw_crypto(*(a1 + 392)))
      {
        sub_1000A73CC();
      }

      v175 = (*v136)(&v267, 0, 0, *(a1 + 376) + 240, &v275, &v270);
      if (!v175)
      {
LABEL_236:
        if (!is_sw_crypto(*(a1 + 392)))
        {
          v201 = (v136[8])(&v267, 5, 0, 0, 0, &v275, 0);
          if (v201)
          {
            v183 = v201;
            log_err("%s:%d: failed to commit new sys bound vek, err = 0x%x\n", v202, v203, v204, v205, v206, v207, v208, "apfs_keybag_set_create_update_record");
            goto LABEL_252;
          }
        }

        v25 = 0;
        goto LABEL_262;
      }

      v183 = v175;
LABEL_251:
      log_err("%s:%d: failed to generate new vek, err = 0x%x\n", v176, v177, v178, v179, v180, v181, v182, "apfs_keybag_set_create_update_record");
      goto LABEL_252;
    }

    v174 = 1;
LABEL_213:
    if ((a8 & 8) != 0)
    {
      v277 = uu;
      v278 = 16;
    }

    else
    {
      v184 = sub_100052974(a1, a9, uu, &v277);
      if (v184)
      {
        v26 = v184;
        if (v184 != 2)
        {
          memset(out, 0, 37);
          uuid_unparse(uu, out);
          log_err("%s:%d: failed to lookup existing wkek for uuid = %s, err = %d\n", v217, v218, v219, v220, v221, v222, v223, "apfs_keybag_set_create_update_record");
          goto LABEL_266;
        }

        if (uuid_compare(uu, (*(a1 + 376) + 240)))
        {
          v26 = 2;
          log_err("%s:%d: failed to find existing wkek, err = %d\n", v185, v186, v187, v188, v189, v190, v191, "apfs_keybag_set_create_update_record");
          goto LABEL_266;
        }

        v224 = is_sw_crypto(*(a1 + 392)) ? 2 : 0;
        v225 = (v136[2])(&v267, v224, a4, uu, &v277);
        if (v225)
        {
          v183 = v225;
          log_err("%s:%d: failed to generate new kek, err = 0x%x\n", v226, v227, v228, v229, v230, v231, v232, "apfs_keybag_set_create_update_record");
          goto LABEL_252;
        }
      }
    }

    if (v174)
    {
      v233 = (*v136)(&v267, a4, &v277, *(a1 + 376) + 240, &v275, &v270);
      if (!v233)
      {
        if (!is_sw_crypto(*(a1 + 392)))
        {
          v234 = (v136[8])(&v267, 5, 0, 0, 0, &v275, 0);
          if (v234)
          {
            v183 = v234;
            log_err("%s:%d: failed to commit new kek bound vek, err = 0x%x\n", v235, v236, v237, v238, v239, v240, v241, "apfs_keybag_set_create_update_record");
            goto LABEL_252;
          }
        }

        uuid_copy(dst, uu);
        v25 = 1;
LABEL_262:
        nx_dev = apfs_get_nx_dev(a1);
        *(a1 + 536) = 0u;
        *(a1 + 552) = 0u;
        *(a1 + 568) = 0u;
        *(a1 + 584) = 0u;
        *(a1 + 600) = 0u;
        *(a1 + 616) = 0u;
        v243 = sub_10004F388(nx_dev, v270, v271, 0, 0, v272);
        *(a1 + 608) = v243;
        if (!v243)
        {
          v26 = 12;
          log_err("%s:%d: failed to store vek into crypto state, err = %d\n", v244, v245, v246, v247, v248, v249, v250, "apfs_keybag_set_create_update_record");
          goto LABEL_266;
        }

        if (is_sw_crypto(*(a1 + 392)))
        {
          v88 = 1;
          cpx_set_is_composite_key(*(a1 + 608), 1);
        }

        else
        {
          if ((cpx_is_sep_wrapped_key() & 1) == 0)
          {
            panic("HW CRYPTO: [create]: CP_RAW_KEY_WRAPPEDKEY is NOT set");
          }

          v88 = 1;
        }

LABEL_270:
        v9 = (a8 >> 3) & 1;
        uuid_copy(src, (*(a1 + 376) + 240));
        v26 = 0;
        v41 = *(*(a1 + 392) + 928);
        v27 = 64;
LABEL_102:
        v89 = v264;
        v90 = !v25;
        v91 = v9 | !v25;
        if (v91)
        {
          if (!v41)
          {
            goto LABEL_129;
          }

          goto LABEL_104;
        }

        out[0] = 0uLL;
        memset(uua, 0, sizeof(uua));
        if (!v264)
        {
          sub_1000A7558();
        }

        if (!v277)
        {
          sub_1000A752C();
        }

        if (!v278)
        {
          sub_1000A7500();
        }

        pthread_mutex_lock(v264);
        uuid_copy(v284, dst);
        if (v262 == 4)
        {
          v102 = 4;
        }

        else
        {
          v102 = 3;
        }

        v285 = v102;
        v103 = v278;
        if (v277)
        {
          __memcpy_chk();
        }

        v286 = v103;
        v104 = sub_10004FB68(v264, v265, 0, v284, 0, 0);
        if (v104)
        {
          v26 = v104;
          log_err("%s:%d: failed to add/update unlock record in apfs keybag, err = %d\n", v105, v106, v107, v108, v109, v110, v111, "apfs_keybag_set_create_update_record");
        }

        else
        {
          v112 = sub_100051308(a1, v265);
          if (!v112)
          {
            uuid_parse("64C0C6EB-0000-11AA-AA11-00306543ECAC", out);
            uuid_parse("C064EBC6-0000-11AA-AA11-00306543ECAC", uua);
            v120 = !uuid_compare(dst, out) || !uuid_compare(dst, uua);
            if (!*(a1 + 1136))
            {
              v146 = is_sw_crypto(*(a1 + 392));
              if (v262 != 4 && !v120 && !v146)
              {
                v147 = AKS_FV_service();
                v148 = (*(v147 + 64))(&v267, 22, 0, 0, &v277, 0, 0);
                if (v148)
                {
                  v156 = 2;
                  do
                  {
                    if (!v156)
                    {
                      panic("failed to commit updated wkek record, err = 0x%x\n", v148);
                    }

                    log_err("%s:%d: failed to commit updated wkek record, err = 0x%x (%d more retries)\n", v149, v150, v151, v152, v153, v154, v155, "apfs_keybag_set_create_update_record");
                    --v156;
                    v148 = (*(v147 + 64))(&v267, 22, 0, 0, &v277, 0, 0);
                  }

                  while (v148);
                }
              }
            }

            v26 = 0;
            v89 = v264;
            if (!v41)
            {
LABEL_129:
              if (v91)
              {
                goto LABEL_14;
              }

              goto LABEL_130;
            }

LABEL_104:
            if (!v275)
            {
              sub_1000A75B0();
            }

            if (!v276)
            {
              sub_1000A7584();
            }

            if (*(a1 + 1136))
            {
              v92 = 1;
            }

            else
            {
              v92 = v88;
            }

            if (((v92 | v90) & 1) != 0 || is_sw_crypto(*(a1 + 392)))
            {
              uuid_copy(v284, src);
              v285 = 2;
              v93 = v276;
              if (v275)
              {
                __memcpy_chk();
              }

              v286 = v93;
              v94 = sub_10004FB68(v41, v265, 0, v284, 0, 1);
            }

            else
            {
              v94 = sub_100050FE4(a1, v265, &v275);
            }

            v26 = v94;
            if (v94)
            {
              log_err("%s:%d: failed to add/update wvek record in nx keybag, err = %d\n", v95, v96, v97, v98, v99, v100, v101, "apfs_keybag_set_create_update_record");
            }

            goto LABEL_129;
          }

          v26 = v112;
          log_err("%s:%d: failed to apfs update unlock records range in nx keybag, err = %d\n", v113, v114, v115, v116, v117, v118, v119, "apfs_keybag_set_create_update_record");
        }

LABEL_130:
        pthread_mutex_unlock(v89);
        goto LABEL_14;
      }

      v183 = v233;
      goto LABEL_251;
    }

    if (is_sw_crypto(*(a1 + 392)))
    {
      sub_1000A73F8();
    }

    v283 = 0;
    memset(out, 0, sizeof(out));
    if ((v136[7])(&v267, &__dst, out))
    {
      return 1;
    }

    if ((BYTE4(out[2]) & 8) == 0)
    {
      return 13;
    }

    if ((BYTE4(out[2]) & 4) == 0)
    {
      v251 = (v136[8])(&v267, 3, 0, a4, &v277, &__dst, &v275);
      if (v251)
      {
        goto LABEL_275;
      }

      memcpy(__dst, v275, v276);
      v274 = v276;
    }

    v251 = (v136[8])(&v267, 2, 0, a4, &v277, &__dst, &v275);
    if (!v251)
    {
      uuid_copy(dst, uu);
      v88 = 0;
      v25 = 1;
      goto LABEL_270;
    }

LABEL_275:
    v183 = v251;
    log_err("%s:%d: can not bind kek to vek, err = 0x%x\n", v252, v253, v254, v255, v256, v257, v258, "apfs_keybag_set_create_update_record");
    goto LABEL_252;
  }

  if (v137)
  {
    sub_1000A74D4();
  }

  if (!*(*(a1 + 3936) + 608))
  {
    sub_1000A74A8();
  }

  if (__dst)
  {
    sub_1000A7424();
  }

  __dst = _apfs_calloc_typed(1uLL, v279, 0xC7ED7D23uLL);
  if (!__dst)
  {
    goto LABEL_230;
  }

  v274 = v279;
  v138 = nx_keybag_lookup_record(*(*(a1 + 3936) + 392), (*(*(a1 + 3936) + 376) + 240), 2, &__dst);
  if (!v138)
  {
    if (!*(*(a1 + 3936) + 608))
    {
      sub_1000A747C();
    }

    if (!__dst)
    {
      sub_1000A7450();
    }

    v193 = (v136[10])(&v267, &__dst, *(a1 + 376) + 240, &v275, &v270);
    if (v193)
    {
      v183 = v193;
      log_err("%s:%d: failed to generate new sibling vek, err = 0x%x\n", v194, v195, v196, v197, v198, v199, v200, "apfs_keybag_set_create_update_record");
LABEL_252:
      v26 = akserror_to_errno(v183);
      goto LABEL_231;
    }

    goto LABEL_236;
  }

  v26 = v138;
  memset(out, 0, 37);
  uuid_unparse((*(*(a1 + 3936) + 376) + 240), out);
  log_err("%s:%d: failed to lookup sibling wvek for uuid = %s, err = %d\n", v139, v140, v141, v142, v143, v144, v145, "apfs_keybag_set_create_update_record");
LABEL_266:
  v27 = 64;
LABEL_14:
  if (v280 && v277)
  {
    _apfs_free(v277, v280);
  }

  v29 = v279;
  if (v279 && v275)
  {
    _apfs_free(v275, v279);
    v29 = v279;
  }

  if (v29 && __dst)
  {
    _apfs_free(__dst, v29);
  }

  if (v27 && v270)
  {
    _apfs_free(v270, v27);
  }

  return v26;
}

uint64_t sub_100052974(uint64_t a1, uint64_t a2, unsigned __int8 *uu, uint64_t a4)
{
  if (a2)
  {
    if (**(a2 + 40))
    {
      v7 = 0;
      v8 = *(a2 + 32);
      while (1)
      {
        result = apfs_keybag_lookup_record(*(v8 + 8 * v7), uu, 3, a4);
        if (result != 2)
        {
          break;
        }

        if (++v7 >= **(a2 + 40))
        {
          return 2;
        }
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return apfs_keybag_lookup_record(a1, uu, 3, a4);
  }

  return result;
}

uint64_t apfs_vek_remove_aks_state(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  if ((*(*(a1 + 376) + 264) & 1) != 0 || is_sw_crypto(*(a1 + 392)))
  {
    return 22;
  }

  v4 = AKS_FV_service();
  if (!v4)
  {
    return 6;
  }

  v5 = *(v4 + 64);
  if (!v5)
  {
    return 6;
  }

  v6 = v5(v15, 6, 0, 0, 0, a2, 0);
  if (v6)
  {
    v14 = v6;
    log_err("%s:%d: failed to remove vek state, error = 0x%x\n", v7, v8, v9, v10, v11, v12, v13, "apfs_vek_remove_aks_state");
    return akserror_to_errno(v14);
  }

  else
  {
    log_debug("%s:%d: removed vek state\n", v7, v8, v9, v10, v11, v12, v13, "apfs_vek_remove_aks_state");
    return 0;
  }
}

uint64_t apfs_keybag_purge(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000A77C0();
  }

  if (!a2)
  {
    sub_1000A7794();
  }

  if (!*(a1 + 376))
  {
    sub_1000A7768();
  }

  apfs_keybag_init(a1, 0);
  if (!*(a1 + 3760))
  {
    return 2;
  }

  if (!is_sw_crypto(*(a1 + 392)))
  {
    if (apfs_keybag_aks_remove_unlock_records(a1, a2, 3))
    {
      log_err("%s:%d: failed to aks remove unlock records, err = %d\n", v4, v5, v6, v7, v8, v9, v10, "apfs_keybag_purge");
    }

    if (apfs_keybag_aks_remove_unlock_records(a1, a2, 6))
    {
      log_err("%s:%d: failed to aks remove marked unlock records, err = %d\n", v11, v12, v13, v14, v15, v16, v17, "apfs_keybag_purge");
    }
  }

  pthread_mutex_lock(*(a1 + 3760));
  v18 = sub_10004FB68(*(a1 + 3760), a2, 0, 0, 3, 0);
  if (v18)
  {
    v26 = v18;
    log_err("%s:%d: failed to wipe unlock records in apfs keybag, err = %d\n", v19, v20, v21, v22, v23, v24, v25, "apfs_keybag_purge");
  }

  else
  {
    v42 = 0;
    *dst = 0u;
    v41 = 0u;
    v27 = *(a1 + 1136);
    if (v27)
    {
      v28 = (v27 + 32);
      v29 = *(v27 + 8);
    }

    else
    {
      v30 = *(a1 + 376);
      if (!v30)
      {
        sub_1000A773C();
      }

      v31 = *(a1 + 392);
      if (!v31)
      {
        sub_1000A7710();
      }

      v29 = *(v31 + 928);
      if (!v29)
      {
        sub_1000A76E4();
      }

      v28 = (v30 + 240);
    }

    uuid_copy(dst, v28);
    LODWORD(v41) = 3;
    v26 = sub_10004FB68(v29, a2, 0, dst, 0, 1);
    if (v26)
    {
      log_err("%s:%d: failed to destroy apfs unlock records range in nx keybag, err = %d\n", v32, v33, v34, v35, v36, v37, v38, "apfs_keybag_purge");
    }

    else
    {
      *(a1 + 3768) = 0u;
    }
  }

  pthread_mutex_unlock(*(a1 + 3760));
  return v26;
}

uint64_t apfs_remove_volume_key(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 392);
  v24 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v5 = is_sw_crypto(v4);
  if (!v5)
  {
    v24 = v26;
    v25 = 512;
    v6 = nx_keybag_lookup_record(*(a1 + 392), (*(a1 + 376) + 240), 2, &v24);
    if ((v6 & 0xFFFFFFFD) != 0)
    {
      v14 = v6;
      log_err("%s:%d: %s failed to get volume key, error = %d, tag %d\n", v7, v8, v9, v10, v11, v12, v13, "apfs_remove_volume_key");
      return v14;
    }

    if (!v24 || !v25)
    {
      sub_1000A77EC();
    }
  }

  v15 = nx_keybag_delete(*(v4 + 928), a2, (*(a1 + 376) + 240), 2u);
  if ((v15 & 0xFFFFFFFD) != 0)
  {
    v14 = v15;
    log_err("%s:%d: %s failed to delete volume key, error = %d, tag %d\n", v16, v17, v18, v19, v20, v21, v22, "apfs_remove_volume_key");
  }

  else
  {
    if (!v5)
    {
      apfs_vek_remove_aks_state(a1, &v24);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_100052EA4(uint64_t a1, uint64_t a2)
{
  uuid_copy(*a2, (a1 + 64));
  uuid_copy((*a2 + 16), (a1 + 64));
  *(a2 + 8) = 32;
  return 0;
}

uint64_t sub_100052EF8(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(v2 + 36) + 32;
  v4 = v3 % dev_block_size(*(a1 + 48));
  v5 = *(v2 + 36);
  v6 = dev_block_size(*(a1 + 48));
  if (v4)
  {
    v7 = (v5 + 32) / v6 + 1;
  }

  else
  {
    v7 = (v5 + 32) / v6;
  }

  v19 = 0;
  v8 = *(a1 + 64);
  if (v8)
  {
    if (!spaceman_alloc(v8, 8, v7, *(a1 + 72), &v19, 0))
    {
      v9 = *(a1 + 88);
      v10 = v9[1];
      if (v10)
      {
        if (*v9)
        {
          spaceman_free(*(a1 + 64), 0, *v9, v10, *(a1 + 72));
          v9 = *(a1 + 88);
        }
      }

      *v9 = v19;
      *(*(a1 + 88) + 8) = v7;
      goto LABEL_12;
    }

    return 28;
  }

  if (*(*(a1 + 88) + 8) < v7)
  {
    return 28;
  }

LABEL_12:
  *(v2 + 8) = 0;
  *(v2 + 16) = *(a1 + 72);
  *(v2 + 24) = *(a1 + 80);
  *(v2 + 28) = 0;
  v12 = *(*(a1 + 88) + 8);
  v13 = dev_block_size(*(a1 + 48));
  fletcher64_set_cksum(v2, (v2 + 8), v12 * v13 - 8, 0, v14, v15);
  *(*(*(a1 + 56) + 72) + 12) = **(a1 + 88);
  v16 = *(a1 + 88);
  v17 = v16[1];
  v18 = *(a1 + 56);
  return dev_write_data(*(a1 + 48), *v16);
}

uint64_t sub_10005304C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1[1] && *v1)
  {
    v3 = dev_block_size(*(a1 + 48));
    v4 = _apfs_calloc_typed(1uLL, v3, 0xA8AB1E48uLL);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 88);
      if (v6[1])
      {
        v7 = 0;
        do
        {
          dev_write_data(*(a1 + 48), v7 + *v6);
          ++v7;
          v6 = *(a1 + 88);
        }

        while (v7 < v6[1]);
      }

      v8 = dev_block_size(*(a1 + 48));
      _apfs_free(v5, v8);
      v9 = *(a1 + 64);
      if (!v9)
      {
        dev_barrier(*(a1 + 48));
        return 0;
      }
    }

    else
    {
      v9 = *(a1 + 64);
      if (!v9)
      {
        return 0;
      }
    }

    spaceman_free(v9, 0, **(a1 + 88), *(*(a1 + 88) + 8), *(a1 + 72));
    **(a1 + 88) = 0;
    *(*(a1 + 88) + 8) = 0;
  }

  return 0;
}

_WORD *cpx_alloc(uint64_t a1)
{
  v1 = a1;
  result = _apfs_calloc_typed(1uLL, a1 + 24, 0x7B363F79uLL);
  if (result)
  {
    result[4] = v1;
  }

  return result;
}

uint64_t cpx_set_use_offset_for_iv(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = *(result + 4) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t cpx_set_is_composite_key(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = *(result + 4) & 0xFFFFFFDF | v2;
  return result;
}

void cpx_free(unsigned __int16 *a1)
{
  v2 = a1[4];
  bzero(a1 + 10, v2);

  _apfs_free(a1, v2 + 24);
}

uint64_t cpx_set_key_len(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (v2 >= a2)
  {
    LOWORD(v2) = a2;
  }

  *(result + 10) = v2;
  return result;
}

uint64_t io_get_device_block_size(int a1)
{
  v12 = 0;
  memset(&v11, 0, sizeof(v11));
  bzero(&v13, 0x878uLL);
  if (!ioctl(a1, 0x40046418uLL, &v12))
  {
    return v12;
  }

  if (!fstatfs(a1, &v13))
  {
    return v13.f_bsize;
  }

  if (!fstat(a1, &v11))
  {
    return v11.st_blksize;
  }

  v2 = __error();
  strerror(*v2);
  log_err("%s:%d: can't get the device block size (%s). assuming 512\n", v3, v4, v5, v6, v7, v8, v9, "io_get_device_block_size");
  return 512;
}

uint64_t dev_crypto_type(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 72) + 168))();
  }

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

uint64_t dev_write_data(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 72) + 64);

    return v2();
  }

  else
  {
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: data write (%zu blocks) over superblock!\n", v5, v6, v7, v8, v9, v10, "dev_write_data");
    return 5;
  }
}

uint64_t fd_dev_read_poll(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000A7818();
  }

  result = aio_error((a2 + 8));
  if (result == -1)
  {
    return *__error();
  }

  return result;
}

uint64_t sub_100053608(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
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

uint64_t sub_100053648(int *a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
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

    log_err("%s:%d: failed to read blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", a2, a3, a4, a5, a9, a7, a8, "fd_dev_read_extended");
    return v11;
  }

  else if (a6)
  {

    return sub_1000547DC(a1, a2, a3, a4, a5, a9, a7, a8);
  }

  else
  {

    return sub_1000544FC(a1, a2, a3, a4, a5, a9, a7, a8);
  }
}

uint64_t sub_100053724(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000A7844();
  }

  v4 = (a2 + 8);
  aiocblist = (a2 + 8);
  if (aio_suspend(&aiocblist, 1, 0) || (v8 = aio_return(v4), v8 == -1))
  {
    v5 = *__error();
  }

  else
  {
    v9 = v8;
    if (v8 >= *(a2 + 32))
    {
      v5 = 0;
    }

    else
    {
      v5 = 5;
    }

    v10 = *(a2 + 88);
    if (v10)
    {
      v11 = *(v10 + 72);
      if (v11)
      {
        v12 = *(a1 + 84);
        v13 = *(a2 + 24);
        *(v11 + 12) = *(a2 + 16) / v12;
        userfs_data_cryptor(v10, v13, v13, v9, *(a2 + 16), v12, 0);
      }
    }
  }

  v6 = *a2;
  if (*a2)
  {
    *(a2 + 96) = v5;
    v6(a2);
  }

  return v5;
}

uint64_t sub_1000537F8(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a7 & 0xFFFFFFFA) != 0 || (a6 != 0) == a7 < 4)
  {
    if ((a6 != 0) != a7 < 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 22;
    }

    if ((a7 & 0xFFFFFFFA) != 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = v10;
    }

    log_err("%s:%d: failed to write blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", a2, a3, a4, a5, a6, a7, a8, "fd_dev_write_extended");
    return v11;
  }

  else
  {

    return sub_1000548EC(a1, a2, a3, a4, a5, a7, a7, a8);
  }
}

uint64_t sub_10005389C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a1 + 36);
    if (v11)
    {
      result = sub_100054704(a1, *(a1 + 40), v11, v10, *(a1 + 48), a6, a7, a8);
      if (result)
      {
        return result;
      }

      *(a1 + 36) = 0;
    }
  }

  fsync(*a1);
  v13 = *(a1 + 4);
  if ((v13 & 0x80000000) == 0)
  {
    fsync(v13);
  }

  if (!a2 && (*(a1 + 88) & 2) != 0)
  {
    v16 = xmmword_1000B3110;
    v17 = 2;
    v15 = ioctl(*a1, 0x80186416uLL, &v16);
  }

  else
  {
    v14 = *a1;
    if ((*(a1 + 64) & 0xF000) == 0x8000)
    {
      v15 = fcntl(v14, 51, 0);
    }

    else
    {
      v15 = ioctl(v14, 0x20006416uLL, 0);
    }
  }

  if (v15 == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100053998(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 112);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (!v5)
  {
    sub_1000A7870();
  }

  if (v6 < a3)
  {
    sub_1000A78C8();
  }

  if (!a4)
  {
    sub_1000A789C();
  }

  v9 = *(a1 + 192);
  if (!v9)
  {
    return 45;
  }

  if (a4 != 1)
  {
    return 22;
  }

  v11 = *(a1 + 200);
  if (v11 < *(a1 + 204) && *(a1 + 208) == 1)
  {
    goto LABEL_11;
  }

  result = sub_100053A60(a1);
  if (!result)
  {
    v11 = *(a1 + 200);
    v9 = *(a1 + 192);
LABEL_11:
    result = 0;
    *(a1 + 200) = v11 + 1;
    v13 = *(a1 + 84);
    v14 = (v9 + 16 * v11);
    *v14 = v13 * a2;
    v14[1] = v13 * a3;
    *(a1 + 208) = 1;
  }

  return result;
}

uint64_t sub_100053A60(uint64_t a1)
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

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v19 = v1;
  v4 = *(a1 + 208);
  v20 = v3;
  v21 = v4;
  if (ioctl(*a1, 0x80406459uLL, &v19) == -1)
  {
    v5 = *__error();
    if (v5)
    {
      v13 = *(a1 + 192);
      v17 = *(v13 + 2);
      v18 = *(v13 + 3);
      v16 = *v13;
      v15 = *(a1 + 200);
      log_err("%s:%d: hinting %d blocks from hint_list failed w/: %d (entry %lld:%lld ; %lld:%lld)\n", v6, v7, v8, v9, v10, v11, v12, "fd_dev_hint_flush");
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

uint64_t sub_100053B44(uint64_t a1)
{
  v5 = strlen((a1 + 212));
  v6 = *(a1 + 24);
  if (!v6)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v7 = *(a1 + 36);
  if (!v7)
  {
    v15 = 0;
LABEL_9:
    _apfs_free(v6, (*(a1 + 84) * *(a1 + 32)));
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  v15 = sub_100054704(a1, *(a1 + 40), v7, v6, *(a1 + 48), v2, v3, v4);
  if (v15)
  {
    log_err("%s:%d: Hit an error flushing the cache, %d dev_name = %s\n", v8, v9, v10, v11, v12, v13, v14, "fd_dev_close");
  }

  *(a1 + 36) = 0;
  v6 = *(a1 + 24);
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 192))
  {
    v15 = sub_100053A60(a1);
    if (v15)
    {
      log_err("%s:%d: Hit an error flushing the hint list, %d dev_name = %s\n", v16, v17, v18, v19, v20, v21, v22, "fd_dev_close");
    }

    _apfs_free(*(a1 + 192), 16 * *(a1 + 204));
    *(a1 + 192) = 0;
  }

  _apfs_free(a1, v5 + 216);
  return v15;
}

uint64_t sub_100053C64(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t dev_init_with_fd(int a1, unsigned int **a2)
{
  bzero(&v10, 0x400uLL);
  *a2 = 0;
  if (fcntl(a1, 50, &v10))
  {
    LOBYTE(v10) = 0;
  }

  if (v10 ^ 0x7665642F | v11 ^ 0x2F)
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  v5 = strlen(&v10 + v4);
  v6 = _apfs_calloc_typed(1uLL, v5 + 216, 0xC2501DC2uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  *(v6 + 4) = -1;
  *v6 = a1;
  strlcpy(v6 + 212, &v10 + v4, v5 + 1);
  v8 = sub_100053DE8(v7);
  if (v8)
  {
    _apfs_free(v7, v5 + 216);
  }

  else
  {
    *a2 = v7;
  }

  return v8;
}