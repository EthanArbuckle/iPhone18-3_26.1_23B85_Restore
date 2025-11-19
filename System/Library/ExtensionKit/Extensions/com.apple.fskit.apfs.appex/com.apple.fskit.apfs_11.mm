uint64_t sub_100089D34(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v8 = a3;
  v9 = *(a1 + 8);
  if (*(a3 + 8) > *(v9 + 16))
  {
    v46 = *(a3 + 8);
    fsck_printf_err("omap entry (oid 0x%llx): invalid ok_xid (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
    v10 = 92;
    v11 = 359;
LABEL_18:
    fsck_fail_func(v11, 92);
    return v10;
  }

  if (!a5)
  {
    return 0;
  }

  v16 = *(v9 + 36);
  v17 = *a5;
  if (*a5 >= 0x800)
  {
    v47 = *a5;
    fsck_printf_warn("omap entry (oid 0x%llx): invalid ov_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
    fsck_fail_func(0x168, -3);
    v17 = *a5;
  }

  v18 = v17 >> 5;
  if (v18 >= 2)
  {
    fsck_printf_err("omap entry (oid 0x%llx): invalid crypto key index (%u) given ov_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *v8);
    v10 = 92;
    v11 = 1151;
    goto LABEL_18;
  }

  if (v18 != 1 || a2 && *(*(a2 + 40) + 1096))
  {
LABEL_13:
    if (((v17 >> 8) & 7) >= 2)
    {
      fsck_printf_err("omap entry (oid 0x%llx): invalid tweak type (%u) given ov_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *v8);
      v10 = 92;
      v11 = 1231;
      goto LABEL_18;
    }

    v25 = a5[1];
    if (!v25 || (a3 = v25 / v16, v25 % v16))
    {
      v48 = a5[1];
      fsck_printf_err("omap entry (oid 0x%llx): invalid ov_size (%u)\n", a2, a3, a4, a5, a6, a7, a8, *v8);
      v10 = 92;
      v11 = 361;
      goto LABEL_18;
    }

    if ((v17 & 1) == 0)
    {
      v26 = *(a5 + 1);
      v27 = *(*(a1 + 8) + 40);
      if (v27 - a3 < v26 || v27 <= a3 || v26 < 1 || v27 <= v26)
      {
        v49 = *(a5 + 1);
        fsck_printf_err("omap entry (oid 0x%llx): invalid ov_paddr (%llu)\n", v26, a3, a4, a5, a6, a7, a8, *v8);
        v10 = 92;
        v11 = 362;
        goto LABEL_18;
      }

      if ((v17 & 0xE0) == 0x20)
      {
        v31 = 36;
      }

      else
      {
        v31 = 14;
      }

      if (a2)
      {
        v32 = *(*(a2 + 40) + 8);
      }

      else
      {
        v32 = 0;
      }

      v33 = a2 == 0;
      v34 = a2 != 0;
      if (v33)
      {
        v35 = 13;
      }

      else
      {
        v35 = 3;
      }

      if (v33)
      {
        v31 = 0;
      }

      mark_object_allocated(a1, v26, a3, v32, 0, *v8, v8[1], v35, v31, 1u);
      v36 = omap_sv_mark(v34, *v8, 0);
      if (v36)
      {
        v44 = v36;
        fsck_printf_warn("object (oid 0x%llx): Unable to mark omap entry for omap space verification \n", v37, v38, v39, v40, v41, v42, v43, *v8);
        fsck_fail_func(0x3D0, v44);
      }
    }

    return 0;
  }

  fsck_printf_err("omap entry (oid 0x%llx): invalid crypto key index (%u) on %s\n", a2, a3, a4, a5, a6, a7, a8, *v8);
  v10 = 92;
  fsck_fail_func(0x4B0, 92);
  if (fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) crypto key index? ", v19, v20, v21, v22, v23, v24, *v8))
  {
    *a5 &= 0xFFFFFF1F;
    *a8 = 1;
    v17 = *a5;
    goto LABEL_13;
  }

  return v10;
}

uint64_t fsck_omap_snap(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v13 = *(a2 + 72);
  v40 = *(a2 + 104);
  v41 = *(a2 + 120);
  v39 = 0;
  if (!*(v13 + 56))
  {
    v16 = 0;
    goto LABEL_5;
  }

  v37.i64[0] = 0;
  omap_snap_tree = get_omap_snap_tree(a1, a2, v37.i64);
  if (omap_snap_tree)
  {
    return omap_snap_tree;
  }

  if (*(state + 46))
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_10008A20C;
  }

  v15 = fsck_tree(v37.i64[0], 0, v26, a3, &v39, 1);
  if (!v15)
  {
    v16 = v39;
    if (HIDWORD(v39))
    {
      fsck_printf_err("om: invalid om_snap_count (overflow)\n", a2, a3, a4, a5, a6, a7, a8, v36);
      v15 = 92;
      v27 = 375;
LABEL_28:
      v34 = 92;
      goto LABEL_29;
    }

LABEL_5:
    v17 = *(v13 + 36);
    v18 = v16;
    if (v16 != v17)
    {
      fsck_printf_err("om: om_snap_count (%u) is not equal to the number of snapshots found (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *(v13 + 36));
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix om_snap_count (oid 0x%llx)? ", v19, v20, v21, v22, v23, v24, *(v13 + 8)))
      {
        v15 = 92;
        v27 = 376;
        goto LABEL_28;
      }

      v18 = v39;
      *(v13 + 36) = v39;
    }

    if (v18)
    {
      v25 = *(a3 + 64);
    }

    else
    {
      v25 = 0;
    }

    if ((*(state + 46) & 1) != 0 || *(v13 + 64) == v25)
    {
      if (v16 == v17)
      {
        return 0;
      }
    }

    else
    {
      fsck_printf_err("om: om_most_recent_snap (%llu) is not equal to the largest snapshot xid (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *(v13 + 64));
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix om_most_recent_snap (oid 0x%llx)? ", v28, v29, v30, v31, v32, v33, *(v13 + 8)))
      {
        v15 = 92;
        v27 = 671;
        goto LABEL_28;
      }

      *(v13 + 64) = v25;
    }

    v37 = v40;
    v38 = v41;
    v15 = write_obj(a1, a2, v13, &v37, v40, a10);
    if (!v15)
    {
      fsck_fail_add_repair();
      return v15;
    }

    v27 = 377;
    v34 = v15;
LABEL_29:
    fsck_fail_func(v27, v34);
  }

  return v15;
}

uint64_t sub_10008A20C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a2 + 40);
  v14 = *(v13 + 1000);
  memset(v152, 0, sizeof(v152));
  v150 = 3808;
  v151 = 832;
  v15 = *a5;
  v16 = *a3;
  *(a7 + 64) = *a3;
  *(a2 + 56) = v16;
  if (v15)
  {
    fsckPrint(fsck_apfs_ctx, 215, a3, a4, a5, a6, a7, a8, v138);
  }

  else if ((v15 & 2) == 0)
  {
    v17 = v15;
    if (*a3 > *(a1[1] + 16))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  omap_sv_disable(1);
  v18 = *a3;
  if (*a3 > *(a1[1] + 16))
  {
    if (v15)
    {
LABEL_10:
      fsck_printf_err("omap snapshot: invalid key (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, v18);
      v20 = 92;
      fsck_fail_func(0x174, 92);
LABEL_50:
      v67 = 0;
LABEL_51:
      v77 = *(a2 + 14) & (v15 | v67);
      goto LABEL_52;
    }

    v13 = *(a2 + 40);
LABEL_9:
    memset(v167, 0, sizeof(v167));
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v162 = 0u;
    v161 = 0u;
    v160 = 0u;
    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    memset(&v156[1], 0, 64);
    v19 = *(a7 + 32) + 1;
    *(a7 + 32) = v19;
    v156[0] = 0;
    v140 = *(v13 + 216);
    fsckPrint(fsck_apfs_ctx, 214, a3, a4, a5, a6, a7, a8, v19);
    v18 = *a3;
    goto LABEL_10;
  }

  v17 = *a5;
LABEL_12:
  if (v17 >= 4)
  {
    fsck_printf_warn("omap snapshot: invalid oms_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, v17);
    fsck_fail_func(0x175, -3);
  }

  if (*(a5 + 4))
  {
    fsck_printf_warn("omap snapshot: invalid oms_pad (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a5 + 4));
    fsck_fail_func(0x176, -10);
  }

  if (*(a5 + 8))
  {
    fsck_printf_warn("omap snapshot: oms_oid should be unused but has value (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, *(a5 + 8));
    fsck_fail_func(0x312, -2);
  }

  if (v15)
  {
    v20 = 0;
    goto LABEL_50;
  }

  v21 = *(a2 + 40);
  if (v14 && ((*(v21 + 264) & 1) != 0 && !*(v21 + 976) || *(a2 + 24)))
  {
    v22 = *a3;
    v155 = 0;
    memset(v156, 0, 24);
    v23 = copy_obj(a1, a2, 0, v14, v22, 0, 29, 0, &v155, v156, 0);
    if (v23)
    {
      v20 = v23;
      if (v23 != 2)
      {
LABEL_34:
        if (v155)
        {
          free(v155);
        }

        if (v20)
        {
          goto LABEL_50;
        }

        v21 = *(a2 + 40);
        goto LABEL_38;
      }

      fsck_printf_debug("snap_meta_ext: object (oid 0x%llx): no record for snapshot (xid 0x%llx)\n", v24, v25, v26, v27, v28, v29, v30, v14);
    }

    else
    {
      v31 = v155;
      v32 = *(v155 + 8);
      if (v32 < 2)
      {
        if (v32)
        {
          if (*(v155 + 5) == v22 || (fsck_printf_warn("snap_meta_ext: (0x%llx:0x%llx): invalid xid (0x%llx)\n", v24, v25, v26, v27, v28, v29, v30, v14), fsck_fail_func(0x35F, 92), !fsckAskPrompt(fsck_apfs_ctx, "Fix sme_snap_xid (xid 0x%llx)? ", v33, v34, v35, v36, v37, v38, *(v31 + 5))))
          {
            v20 = 0;
          }

          else
          {
            *(v31 + 5) = v22;
            v20 = 1;
          }

          if (*(v31 + 9))
          {
            fsck_printf_warn("snap_meta_ext: (0x%llx:0x%llx): unknown flags (%u)\n", v24, v25, v26, v27, v28, v29, v30, v14);
            fsck_fail_func(0x360, -3);
          }

          if (uuid_is_null(v31 + 48))
          {
            fsck_printf_warn("snap_meta_ext: (0x%llx:0x%llx): sme_uuid is NULL\n", v117, v118, v119, v120, v121, v122, v123, v14);
            fsck_fail_func(0x361, 92);
          }

          if (v20)
          {
            v153 = *v156;
            v154 = *&v156[16];
            v20 = write_obj(a1, a2, v155, &v153, *v156, v124);
            if (v20)
            {
              fsck_fail_func(0x362, v20);
            }

            else
            {
              fsck_fail_add_repair();
            }
          }

          goto LABEL_34;
        }
      }

      else
      {
        fsck_printf_warn("snap_meta_ext: (0x%llx:0x%llx): unknown version (%u)\n", v24, v25, v26, v27, v28, v29, v30, v14);
        fsck_fail_func(0x35E, -6);
      }
    }

    v20 = 0;
    goto LABEL_34;
  }

LABEL_38:
  inited = tree_init_ext(v152, a1, a2, *(v21 + 124) & 0xC0000000, *(v21 + 124), 16, 0, *(a1[1] + 36), 0, 0, 0, *(v21 + 152), jkey_compare);
  v40 = malloc_type_calloc(1uLL, 0x340uLL, 0xAF9E5F5EuLL);
  v41 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x3A80B5D4uLL);
  v48 = v41;
  if (inited || !v40 || !v41)
  {
    memset(v167, 0, sizeof(v167));
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v162 = 0u;
    v161 = 0u;
    v160 = 0u;
    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    memset(&v156[1], 0, 64);
    v68 = *(a7 + 32) + 1;
    *(a7 + 32) = v68;
    v156[0] = 0;
    v142 = *(*(a2 + 40) + 216);
    fsckPrint(fsck_apfs_ctx, 214, v42, v43, v44, v45, v46, v47, v68);
    if (inited)
    {
      v20 = inited;
    }

    else
    {
      v20 = 12;
    }

    v69 = strerror(v20);
    fsck_printf_err("unable to init snap_meta tree for extentref_tree_oid lookup: %s\n", v70, v71, v72, v73, v74, v75, v76, v69);
    fsck_fail_func(0x2B0, v20);
    if (v48)
    {
      free(v48);
    }

    if (v40)
    {
      free(v40);
    }

    goto LABEL_50;
  }

  *v40 = *a3 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v49 = tree_lookup(v152, 0, 0, v40, &v151, 0x340u, v41, &v150);
  v56 = *a3;
  if (v49)
  {
    v20 = v49;
    memset(v167, 0, sizeof(v167));
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v162 = 0u;
    v161 = 0u;
    v160 = 0u;
    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    memset(&v156[1], 0, 64);
    v57 = *(a7 + 32) + 1;
    *(a7 + 32) = v57;
    v156[0] = 0;
    v141 = *(*(a2 + 40) + 216);
    fsckPrint(fsck_apfs_ctx, 214, v50, v51, v52, v53, v54, v55, v57);
    v58 = *a3;
    strerror(v20);
    fsck_printf_err("Could not lookup cached extent_ref_tree information at snap xid (0x%llx): %s\n", v59, v60, v61, v62, v63, v64, v65, v58);
    fsck_fail_func(0x2B7, 92);
    v66 = 0;
    v67 = 0;
    goto LABEL_104;
  }

  v148 = v40;
  memset(v167, 0, sizeof(v167));
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v163 = 0u;
  v162 = 0u;
  v161 = 0u;
  v160 = 0u;
  v159 = 0u;
  v158 = 0u;
  v157 = 0u;
  memset(&v156[1], 0, 64);
  ++*(a7 + 32);
  v156[0] = 0;
  __strlcpy_chk();
  v143 = *(*(a2 + 40) + 216);
  fsckPrint(fsck_apfs_ctx, 214, v79, v80, v81, v82, v83, v84, *(a7 + 32));
  v147 = *(v48 + 10);
  v86 = *v48;
  v85 = v48[1];
  v149 = v48;
  v67 = *v48 == 0;
  v87 = (a2 + 48);
  v88 = copy_obj(a1, 0, 0x40000000, v85, 0, 0, 13, 0, (a2 + 48), 0, 0);
  if (v88)
  {
    v20 = v88;
    v66 = 0;
LABEL_57:
    v40 = v148;
    v48 = v149;
    goto LABEL_104;
  }

  v146 = v86;
  v95 = *v87;
  v96 = *v87;
  v97 = (a2 + 48);
  if (!*v87)
  {
    v96 = *(a2 + 40);
  }

  v40 = v148;
  v48 = v149;
  if ((*(v96 + 56) & 0x20) != 0)
  {
    v125 = *a3;
    if (*(v95 + 1024))
    {
      v126 = fsck_integrity_meta(a1, a2, v125);
      v97 = (a2 + 48);
      v48 = v149;
      if (!v126)
      {
        goto LABEL_61;
      }

      v20 = v126;
    }

    else
    {
      fsck_printf_err("Snapshot (0x%llx): apfs_integrity_meta_oid is invalid\n", v89, v125, v90, v91, v92, v93, v94, *a3);
      v20 = 92;
      fsck_fail_func(0x387, 92);
    }

    v66 = 0;
    goto LABEL_104;
  }

LABEL_61:
  v144 = v97;
  v145 = is_snapshot_in_purgatory(v48 + 50, *(v48 + 24));
  if (v146 && !v145)
  {
    if (*(a2 + 9))
    {
      goto LABEL_67;
    }

    v98 = *v144;
    if (!*v144)
    {
      v98 = *(a2 + 40);
    }

    if ((*(v98 + 56) & 0x20) != 0)
    {
LABEL_67:
      phys_extent_init(a2);
    }
  }

  v99 = *(a2 + 48);
  if (*(a2 + 9) == 1)
  {
    memset(v156, 0, 64);
    sub_10008AD40(v156, a1, a2, *(*(a2 + 40) + 116), 14, *(v99 + 136));
    fsroot_jobj_init(v156, *a3, v100, v101, v102, v103, v104, v105, v139);
    fsck_doc_id_init(a1, a2, *a3);
    v106 = fsck_doc_id_trees(a1, a2, *a3);
    if (v106 || (v106 = fsck_clonegroup_tree(a1, a2, *a3, a7), v106) || (v106 = fsck_tree(v156, *a3, jobj_validate_repair_key_val, a7, 0, 0), v106) || *(*(a2 + 40) + 1096) && ((v106 = fsroot_jobj_advance(a1, a2, 0, v107, v108, v109, v110, v111), v106) || (sub_10008AD40(v156, a1, a2, *(*(a2 + 40) + 1104), 36, *(*(a2 + 48) + 1096)), v106 = fsck_tree(v156, *a3, jobj_validate_repair_key_val, a7, 0, 0), v106)) || (v106 = fsck_ios_encryption_rolling(a1, a2), v106))
    {
LABEL_102:
      v20 = v106;
      goto LABEL_103;
    }

    v116 = fsroot_jobj_finalize(a1, a2, *a3, 0, v112, v113, v114, v115);
    if (v116 || (v116 = fsck_doc_id_finalize(a1, a2, *a3), v116))
    {
      v20 = v116;
      v66 = v145;
      goto LABEL_57;
    }

    v99 = *v144;
    v40 = v148;
    v48 = v149;
  }

  v127 = v99;
  v128 = v147;
  if (!v99)
  {
    v127 = *(a2 + 40);
  }

  if ((*(v127 + 56) & 0x20) != 0)
  {
    memset(v156, 0, 64);
    sub_10008ADD4(v156, a1, a2, *(*(a2 + 40) + 1040), *(v99 + 1032));
    v106 = fsck_tree(v156, 0, fext_validate_repair_key_val, a7, 0, 1);
    v128 = v147;
    if (v106)
    {
      goto LABEL_102;
    }
  }

  if (!v146 || (memset(v156, 0, 64), sub_10008AE2C(v156, a1, a2, v128, v146), v129 = fsck_tree(v156, 0, jobj_validate_repair_key_val, a7, 0, 1), !v129))
  {
    v106 = phys_extent_finalize(a2, *a3);
    if (!v106)
    {
      v130 = *(a2 + 40);
      if ((*(v130 + 56) & 0x40) != 0)
      {
        memset(v156, 0, 64);
        sub_10008AE80(v156, a1, a2, *(v130 + 1044), *(*(a2 + 48) + 1048));
        v131 = fsck_tree(v156, 0, pfkur_validate_repair_key_val, a7, 0, 1);
        v137 = pfkur_finalize(a1, a2, 0, v132, v133, v134, v135, v136);
        if (v131)
        {
          v20 = v131;
        }

        else
        {
          v20 = v137;
        }
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v20 = v129;
  v67 = 0;
LABEL_103:
  v66 = v145;
LABEL_104:
  free(v48);
  free(v40);
  if (!v66)
  {
    goto LABEL_51;
  }

  v77 = 1;
LABEL_52:
  volume_reset_snapshot(a2, v77 & 1);
  if (v20 == 92)
  {
    omap_sv_disable(1);
    fsroot_jobj_abort(a2);
    fsck_doc_id_cleanup();
    v20 = 0;
    *(a2 + 11) = 1;
    *(a2 + 13) = 1;
  }

  return v20;
}

uint64_t sub_10008AD40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v6 = *(a3 + 48);
  v7 = v6;
  if (!v6)
  {
    v7 = *(a3 + 40);
  }

  if ((*(v7 + 56) & 0x20) != 0)
  {
    v8 = *(a3 + 16);
  }

  else
  {
    v8 = 0;
  }

  if (!v6)
  {
    v6 = *(a3 + 40);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a3 + 20);
  }

  else
  {
    v9 = 0;
  }

  return tree_init_ext(a1, a2, a3, a4 & 0xC0000000, a4, a5, v8, *(*(a2 + 8) + 36), 0, 0, v9, a6, jkey_compare);
}

char *pfkur_register_file_id(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((byte_100103C54 & 1) == 0)
  {
    if (dword_100103C58 <= 0xFF && (v8 = result, (result = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL)) != 0))
    {
      *result = v8;
      *(result + 1) = 0;
      *off_1000E8F68 = result;
      off_1000E8F68 = (result + 8);
      ++dword_100103C58;
    }

    else
    {
      result = fsck_printf_debug("more than %d inodes tracked as rolling, disabling pfkur tracking repairs\n", a2, a3, a4, a5, a6, a7, a8, 0);
      byte_100103C54 = 1;
    }
  }

  return result;
}

uint64_t pfkur_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100103C54)
  {
LABEL_8:
    v26 = 0;
LABEL_9:
    v19 = off_1000E8F60;
    if (!off_1000E8F60)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v20 = v19;
      v19 = v19[1];
      v21 = off_1000E8F60;
      if (off_1000E8F60 != v20)
      {
        break;
      }

      off_1000E8F60 = *(off_1000E8F60 + 1);
      if (!off_1000E8F60)
      {
        v24 = &off_1000E8F60;
LABEL_16:
        off_1000E8F68 = v24;
      }

LABEL_17:
      free(v20);
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v22 = v21;
      v21 = v21[1];
    }

    while (v21 != v20);
    v23 = v21[1];
    v22[1] = v23;
    v24 = (v22 + 1);
    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v8 = off_1000E8F60;
  if (off_1000E8F60)
  {
    while (1)
    {
      fsck_printf_warn("missing upgrade-rolling entry for inode (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *v8);
      v10 = fsck_fail_func(0x3C2, -2);
      memset(v27, 0, sizeof(v27));
      if (a3)
      {
        v18 = fsck_repairs_add(a3, 8, 2, 0, 1, v8, 8u, v27, 0x18u);
        if (v18)
        {
          v26 = v18;
          goto LABEL_9;
        }
      }

      else
      {
        print_snapshot_warning(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      v8 = *(v8 + 1);
      if (!v8)
      {
        goto LABEL_8;
      }
    }
  }

  v26 = 0;
LABEL_20:
  dword_100103C58 = 0;
  byte_100103C54 = 0;
  return v26;
}

uint64_t pfkur_validate_repair_key_val(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(a2 + 40) + 56) & 0x40) == 0)
  {
    fsck_printf_err("pfkur_tree_key : object (oid 0x%llx): pfkur tree record present on non-pfkur volume\n", a2, a3, a4, a5, a6, a7, a8, *a3);
    v11 = 963;
    goto LABEL_26;
  }

  v12 = *a3;
  if ((byte_100103C54 & 1) == 0)
  {
    v13 = off_1000E8F60;
    if (off_1000E8F60)
    {
      v14 = off_1000E8F60;
      while (*v14 != v12)
      {
        v14 = v14[1];
        if (!v14)
        {
          goto LABEL_14;
        }
      }

      if (off_1000E8F60 == v14)
      {
        v17 = &off_1000E8F60;
        off_1000E8F60 = *(off_1000E8F60 + 1);
        if (off_1000E8F60)
        {
          goto LABEL_13;
        }
      }

      else
      {
        do
        {
          v15 = v13;
          v13 = v13[1];
        }

        while (v13 != v14);
        v16 = v13[1];
        v15[1] = v16;
        v17 = (v15 + 1);
        if (v16)
        {
          goto LABEL_13;
        }
      }

      off_1000E8F68 = v17;
LABEL_13:
      --dword_100103C58;
      free(v14);
      v12 = *a3;
    }
  }

LABEL_14:
  if (v12 - 0x1000000000000000 > 0xF000000000000001)
  {
    if (v12 <= 0xF)
    {
      fsck_printf_err("pfkur_key : object (oid 0x%llx): invalid oid (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, v12);
      fsck_fail_func(0x3C5, -2);
    }

    if (*a5)
    {
      v25 = *a5;
      fsck_printf_warn("pfk_val : object (oid 0x%llx): unknown version (%u)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      fsck_fail_func(0x3C6, -6);
    }

    if (a5[1] >= 0x10)
    {
      v26 = a5[1];
      fsck_printf_warn("pfk_val : object (oid 0x%llx): unknown flags (%u)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      fsck_fail_func(0x3C7, -3);
    }

    if (HIBYTE(*(a5 + 1)))
    {
      v27 = *(a5 + 1);
      fsck_printf_err("pfk_val : object (oid 0x%llx): invalid current_offset (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      v11 = 968;
    }

    else
    {
      if (!HIBYTE(*(a5 + 2)))
      {
        return 0;
      }

      v28 = *(a5 + 2);
      fsck_printf_err("pfk_val : object (oid 0x%llx): invalid current_ns_offset (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      v11 = 969;
    }
  }

  else
  {
    fsck_printf_err("pfkur_key : object (oid 0x%llx): invalid oid (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, v12);
    v11 = 964;
  }

LABEL_26:
  v18 = 92;
  fsck_fail_func(v11, 92);
  print_pfkur_tree_key_val_info(a2, a3, a5, v19, v20, v21, v22, v23);
  return v18;
}

uint64_t sub_10008B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v14 = *(a1 + 48);
  v15 = *(a1 + 52) != 0;
  v22 = 0;
  v23 = 0;
  v21 = 0uLL;
  v16 = copy_obj(*a1, *(a1 + 8), *(a1 + 40), *(a1 + 56), a3, v15 << 29, 2, v14, &v23, &v21, a8);
  if (!v16)
  {
    v18 = v23;
    v19 = v23 + DWORD2(v21) - 40;
    if (a7)
    {
      *a7 = *v19;
      v20 = *(a1 + 36);
      *(a7 + 40) = *(a1 + 52);
      *(a7 + 44) = v20;
      *(a7 + 64) = a2;
    }

    if (a4)
    {
      *a4 = v21;
      *(a4 + 16) = v22;
    }

    if (a5)
    {
      *a5 = v18;
      if (a6)
      {
        *a6 = v19;
      }
    }

    else
    {
      free(v18);
    }
  }

  return v16;
}

unint64_t get_key_and_value_at_index(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, _WORD *a5, uint64_t *a6, _WORD *a7)
{
  result = sub_10008B4DC(a1, a2, a3);
  if (result == 0xFFFFLL)
  {
    v14 = 0;
    LOWORD(v15) = 0;
  }

  else
  {
    v15 = result >> 16;
    v14 = a1 + result + *(a1 + 42) + 56;
  }

  v16 = *(a1 + 32);
  v17 = *(a2 + 4);
  *a4 = v14;
  *a5 = v15;
  if (a6)
  {
    if (!a7)
    {
      sub_10008F28C();
    }

    v18 = v17 + ((v16 << 31 >> 31) & 0xFFFFFFD8) - 56;
    v19 = HIWORD(result);
    v20 = a1 + v18 - WORD2(result) + 56;
    if ((result & 0xFFFE00000000) == 0xFFFE00000000)
    {
      v20 = 0;
      LOWORD(v19) = 0;
    }

    *a6 = v20;
    *a7 = v19;
  }

  return result;
}

unint64_t sub_10008B4DC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  v4 = a1 + 56;
  if ((v3 & 4) != 0)
  {
    v10 = (v4 + 4 * a3);
    v6 = *v10;
    v8 = v10[1];
    if (v6 == 0xFFFF)
    {
      LOWORD(v7) = 0;
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v8 == 0xFFFF)
    {
      v9 = 0;
    }

    else if (v8 == 65534)
    {
      v9 = 65534;
      v8 = 65534;
    }

    else if ((v3 & 2) != 0)
    {
      v9 = *(a2 + 12);
    }

    else if ((v3 & 8) != 0)
    {
      v9 = *(a2 + 44) + 8;
    }

    else
    {
      v9 = 8;
    }
  }

  else
  {
    v5 = (v4 + 8 * a3);
    v6 = *v5;
    LOWORD(v7) = v5[1];
    v8 = v5[2];
    v9 = v5[3];
  }

  return (v9 << 48) | (v8 << 32) | (v7 << 16) | v6;
}

unint64_t get_key_range(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, _WORD *a5, unsigned int a6, uint64_t *a7, _WORD *a8)
{
  v8 = *(a1 + 36);
  if (v8 <= a3 || v8 <= a6)
  {
    sub_10008F2B8();
  }

  get_key_and_value_at_index(a1, a2, a3, a4, a5, 0, 0);

  return get_key_and_value_at_index(a1, a2, a6, a7, a8, 0, 0);
}

uint64_t fsck_btree_validate_node(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v12 = *(a1 + 32);
  v13 = 8;
  if ((v12 & 2) != 0)
  {
    v13 = *(a2 + 12);
  }

  if ((v12 & 4) != 0)
  {
    v14 = 4;
  }

  else
  {
    v14 = 8;
  }

  if (v12)
  {
    v15 = -96;
  }

  else
  {
    v15 = -56;
  }

  v16 = *a2;
  v17 = *(a2 + 4);
  v18 = v12 < 0x20 || a3 == 0;
  v19 = *a2;
  if (!v18)
  {
    v218 = *(a1 + 34);
    v179 = *(a1 + 28);
    v131 = *(a1 + 16);
    v155 = *(a1 + 24);
    fsck_printf_warn("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: invalid btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
    fsck_fail_func(0x17A, -3);
    v19 = *a2;
  }

  v20 = *(a1 + 32);
  if ((v19 & 0x80) != 0)
  {
    if ((v20 & 0x18) != 0x18)
    {
      if (v9)
      {
        v220 = *(a1 + 34);
        v157 = *(a1 + 24);
        v181 = *(a1 + 28);
        v133 = *(a1 + 16);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: missing btn_flags (expected 0x%x, actual 0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
        fsck_fail_func(0x390, 92);
      }

      if (!a4 || !fsckAskPrompt(fsck_apfs_ctx, "Set missing flags? ", a3, a4, a5, a6, a7, a8, v130))
      {
        return 92;
      }

      v20 = *(a1 + 32) | 0x18;
      *(a1 + 32) = v20;
      *a4 = 1;
    }

    v13 = (*(a2 + 44) + v13);
  }

  else if ((v20 & 0x18) != 0)
  {
    if (v9)
    {
      v219 = *(a1 + 34);
      v180 = *(a1 + 28);
      v132 = *(a1 + 16);
      v156 = *(a1 + 24);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unexpected btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      fsck_fail_func(0x391, 92);
    }

    if (!a4 || !fsckAskPrompt(fsck_apfs_ctx, "Clear unexpected flags? ", a3, a4, a5, a6, a7, a8, v130))
    {
      return 92;
    }

    v20 = *(a1 + 32) & 0xFFE7;
    *(a1 + 32) = v20;
    *a4 = 1;
  }

  v21 = v20;
  if ((v20 & 4) != 0)
  {
    if (!v13)
    {
      if (v9)
      {
        v242 = *(a2 + 12);
        v224 = *(a1 + 34);
        v161 = *(a1 + 24);
        v185 = *(a1 + 28);
        v137 = *(a1 + 16);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_val_size (%u), given btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
        v22 = 92;
        v23 = 380;
        goto LABEL_52;
      }

      return 92;
    }
  }

  else if (*(a2 + 8) && v13)
  {
    if (v9)
    {
      v249 = *(a2 + 8);
      v221 = *(a1 + 34);
      v182 = *(a1 + 28);
      v134 = *(a1 + 16);
      v158 = *(a1 + 24);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btn_btree.bt_fixed.bt_key_size (%u) and btn_btree.bt_fixed.bt_val_size (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      v22 = 92;
      v23 = 379;
LABEL_52:
      v46 = 92;
LABEL_53:
      fsck_fail_func(v23, v46);
      return v22;
    }

    return 92;
  }

  v24 = *(a1 + 42);
  if (v14 > v24)
  {
    if (v9)
    {
      v222 = *(a1 + 34);
      v183 = *(a1 + 28);
      v135 = *(a1 + 16);
      v159 = *(a1 + 24);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_table_space.len (%u), given toc_entry_size (%u) and btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      v22 = 92;
      v23 = 381;
      goto LABEL_52;
    }

    return 92;
  }

  v25 = *(a1 + 36);
  if ((v12 & 4) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  if (v25 > v24 >> v26)
  {
    if (v9)
    {
      v250 = *(a1 + 42);
      v223 = *(a1 + 34);
      v184 = *(a1 + 28);
      v136 = *(a1 + 16);
      v160 = *(a1 + 24);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_nkeys (%u), given btn_table_space.len (%u) and toc_entry_size (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      v22 = 92;
      v23 = 382;
      goto LABEL_52;
    }

    return 92;
  }

  if (!(v25 | v21 & 1))
  {
    if (v9)
    {
      v225 = *(a1 + 34);
      v162 = *(a1 + 24);
      v186 = *(a1 + 28);
      v138 = *(a1 + 16);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_nkeys (%u), given btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      v22 = 92;
      v23 = 383;
      goto LABEL_52;
    }

    return 92;
  }

  v27 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
  if (!v27)
  {
LABEL_57:
    if (!v9)
    {
      return 12;
    }

    v226 = *(a1 + 34);
    v243 = *(a1 + 36);
    v187 = *(a1 + 28);
    v203 = *(a1 + 32);
    v139 = *(a1 + 16);
    v163 = *(a1 + 24);
    fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: validate_loc_ctx_alloc failed for btn_nkeys (%u)\n", v28, v29, v30, v31, v32, v33, v34, *(a1 + 8));
    v22 = 12;
    v23 = 384;
    v46 = 12;
    goto LABEL_53;
  }

  v35 = v27;
  v36 = (2 * *(a1 + 36) + 7) & 0xFFFFFFF8;
  *v35 = v36;
  v37 = malloc_type_calloc(v36, 4uLL, 0x100004052888210uLL);
  *(v35 + 8) = v37;
  if (!v37)
  {
    free(v35);
    goto LABEL_57;
  }

  if (*(a1 + 40))
  {
    v45 = 0;
    goto LABEL_61;
  }

  v45 = sub_10008C234(a1, a2, *(a1 + 40), 0, v35);
  if (!v45)
  {
    if ((*(a1 + 32) & 4) != 0)
    {
      v48 = *(a1 + 42) >> v26;
      if ((((*(a2 + 4) - 56) / ((*(a2 + 8) + v13) + 4)) & 0xFFFFFFFFFFFFFFFELL) > v48)
      {
        if (v9)
        {
          v252 = *(a1 + 42);
          v228 = *(a1 + 34);
          v245 = *(a1 + 40);
          v189 = *(a1 + 28);
          v141 = *(a1 + 16);
          v165 = *(a1 + 24);
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_table_space (%u, %u), given btn_flags (0x%x)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          v22 = 92;
          v50 = 386;
LABEL_74:
          v49 = 92;
LABEL_66:
          fsck_fail_func(v50, v49);
          goto LABEL_67;
        }

        goto LABEL_79;
      }
    }

    if (*(a1 + 46))
    {
      v52 = sub_10008C234(a1, a2, *(a1 + 44), 5, v35);
      if (v52)
      {
        if (v9)
        {
          v53 = v52;
          v246 = *(a1 + 44);
          v253 = *(a1 + 46);
          v205 = *(a1 + 32);
          v229 = *(a1 + 34);
          v166 = *(a1 + 24);
          v190 = *(a1 + 28);
          v142 = *(a1 + 16);
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_free_space (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          fsck_fail_func(0x183, v53);
        }

        goto LABEL_79;
      }
    }

    v54 = *(a1 + 48);
    v263 = v35;
    if (v54 == 0xFFFF)
    {
      v55 = *(a1 + 50);
LABEL_82:
      v56 = (v15 + v17);
      v57 = *(a1 + 52);
      if (v57 != 0xFFFF)
      {
        v261 = v55;
        v86 = 0;
        v256 = v56;
        v258 = a1 + v56 + 56;
        while (1)
        {
          if ((*a2 & 0x40) != 0)
          {
            v87 = 0x40000;
          }

          else
          {
            v87 = 0x80000;
          }

          v13 = v13 & 0xFFFFFFFF00000000 | v87 | v57;
          v88 = sub_10008C234(a1, a2, v13, 4, 0);
          if (v88)
          {
            if (!v9)
            {
              goto LABEL_146;
            }

            v99 = v88;
            v235 = *(a1 + 34);
            v196 = *(a1 + 28);
            v211 = *(a1 + 32);
            v148 = *(a1 + 16);
            v172 = *(a1 + 24);
            fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_val_free_list offset %u\n", v89, v90, v91, v92, v93, v94, v95, *(a1 + 8));
            v100 = 391;
            goto LABEL_138;
          }

          v96 = (v258 - v57);
          v97 = v96[1];
          v262 = v262 & 0xFFFFFFFF00000000 | v57 | (v97 << 16);
          v98 = sub_10008C234(a1, a2, v57 | (v97 << 16), 4, v263);
          if (v98)
          {
            break;
          }

          v86 += v97;
          v57 = *v96;
          if (v57 == 0xFFFF)
          {
            v58 = *(a1 + 54);
            v35 = v263;
            v56 = v256;
            v55 = v261;
            if (v58 >= v86)
            {
              goto LABEL_84;
            }

            if (v9)
            {
              v248 = *(a1 + 54);
              v207 = *(a1 + 32);
              v231 = *(a1 + 34);
              v168 = *(a1 + 24);
              v192 = *(a1 + 28);
              v144 = *(a1 + 16);
              fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_val_free_list length (%u), given total value length (%u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
              v22 = 92;
              v50 = 393;
              goto LABEL_74;
            }

            goto LABEL_79;
          }
        }

        if (!v9)
        {
          goto LABEL_146;
        }

        v99 = v98;
        v213 = *(a1 + 32);
        v237 = *(a1 + 34);
        v174 = *(a1 + 24);
        v198 = *(a1 + 28);
        v150 = *(a1 + 16);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_val_free_list entry (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
        v100 = 392;
LABEL_138:
        v103 = v99;
        goto LABEL_145;
      }

      v58 = *(a1 + 54);
LABEL_84:
      if (*(a1 + 36))
      {
        v255 = v56;
        v257 = v58;
        v59 = 0;
        while (1)
        {
          v260 = v55;
          v60 = sub_10008B4DC(a1, a2, v59);
          v35 = v35 & 0xFFFFFFFF00000000 | v60;
          v61 = sub_10008C234(a1, a2, v35, 1, v263);
          if (v61)
          {
            if (!v9)
            {
              goto LABEL_146;
            }

            v101 = v61;
            v214 = *(a1 + 32);
            v238 = *(a1 + 34);
            v175 = *(a1 + 24);
            v199 = *(a1 + 28);
            v151 = *(a1 + 16);
            fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key (%u, %u)\n", v62, v63, v64, v65, v66, v67, v68, *(a1 + 8));
            v100 = 394;
            goto LABEL_144;
          }

          v69 = HIWORD(v60);
          v262 = v262 & 0xFFFFFFFF00000000 | WORD2(v60) | (HIWORD(v60) << 16);
          v70 = sub_10008C234(a1, a2, WORD2(v60) | (HIWORD(v60) << 16), 2, v263);
          if (v70)
          {
            break;
          }

          if (WORD1(v60) > *(a2 + 16))
          {
            *(a2 + 16) = WORD1(v60);
          }

          if ((*(a1 + 32) & 2) != 0 && v69 != 65534 && *(a2 + 20) < v69)
          {
            *(a2 + 20) = v69;
          }

          v71 = v60 >> 16;
          if ((v16 & 0x40) == 0)
          {
            LODWORD(v71) = ((v60 >> 16) + 7) & 0xFFFFFFF8;
          }

          if (v69 != 65534)
          {
            if ((v16 & 0x40) != 0)
            {
              v257 += v69;
            }

            else
            {
              v257 += (v69 + 7) & 0x1FFF8;
            }
          }

          v55 = v71 + v260;
          ++v59;
          v72 = *(a1 + 36);
          if (v59 >= v72)
          {
            v35 = v263;
            v56 = v255;
            LOWORD(v58) = v257;
            goto LABEL_128;
          }
        }

        if (!v9)
        {
          goto LABEL_146;
        }

        v101 = v70;
        v215 = *(a1 + 32);
        v239 = *(a1 + 34);
        v176 = *(a1 + 24);
        v200 = *(a1 + 28);
        v152 = *(a1 + 16);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid value (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
        v100 = 395;
LABEL_144:
        v103 = v101;
        goto LABEL_145;
      }

      v72 = 0;
LABEL_128:
      v102 = *(a1 + 44);
      if (v102 < v55)
      {
        if (v9)
        {
          v254 = *(a1 + 46);
          v234 = *(a1 + 34);
          v195 = *(a1 + 28);
          v210 = *(a1 + 32);
          v147 = *(a1 + 16);
          v171 = *(a1 + 24);
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_free_space (%u, %u), given total key length (%u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          v22 = 92;
          v50 = 396;
          goto LABEL_74;
        }

LABEL_79:
        v22 = 92;
        goto LABEL_67;
      }

      if (*(a1 + 46) + v102 < v56 - (*(a1 + 42) + v58))
      {
        if (v9)
        {
          v236 = *(a1 + 34);
          v197 = *(a1 + 28);
          v212 = *(a1 + 32);
          v149 = *(a1 + 16);
          v173 = *(a1 + 24);
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_free_space (%u, %u), given total value length (%u) (%d %d %d = %d)\n", v56, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          v22 = 92;
          v50 = 397;
          goto LABEL_74;
        }

        goto LABEL_79;
      }

      v104 = sub_10008C568(a1, a2, v35);
      if (v104)
      {
        if (!v9)
        {
          goto LABEL_146;
        }

        v112 = v104;
        v113 = *(a1 + 8);
        v114 = *(a1 + 16);
        v115 = *(a1 + 32);
        v116 = *(a1 + 34);
        v118 = *(a1 + 24);
        v117 = *(a1 + 28);
        strerror(v104);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list, btn_val_free_list, or btn_free_space: %s\n", v119, v120, v121, v122, v123, v124, v125, v113);
        v100 = 398;
        v103 = v112;
LABEL_145:
        fsck_fail_func(v100, v103);
LABEL_146:
        v22 = 92;
        goto LABEL_147;
      }

      v126 = *(a2 + 24);
      v127 = __CFADD__(v126, v72);
      v128 = v126 + v72;
      if (v127)
      {
        if (!v9)
        {
          goto LABEL_146;
        }

        v216 = *(a1 + 32);
        v240 = *(a1 + 34);
        v177 = *(a1 + 24);
        v201 = *(a1 + 28);
        v153 = *(a1 + 16);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_key_count (overflow)\n", v105, v106, v107, v108, v109, v110, v111, *(a1 + 8));
        v22 = 92;
        v85 = 399;
      }

      else
      {
        v129 = *(a2 + 32);
        if (v129 != -1)
        {
          if ((*(a1 + 32) & 2) != 0)
          {
            *(a2 + 24) = v128;
          }

          *(a2 + 32) = v129 + 1;
          v22 = 0;
          goto LABEL_147;
        }

        if (!v9)
        {
          goto LABEL_146;
        }

        v217 = *(a1 + 32);
        v241 = *(a1 + 34);
        v178 = *(a1 + 24);
        v202 = *(a1 + 28);
        v154 = *(a1 + 16);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_node_count (overflow)\n", v105, v106, v107, v108, v109, v110, v111, *(a1 + 8));
        v22 = 92;
        v85 = 400;
      }
    }

    else
    {
      v73 = 0;
      v13 = a1 + 56;
      do
      {
        if ((*a2 & 0x40) != 0)
        {
          v74 = 0x40000;
        }

        else
        {
          v74 = 0x80000;
        }

        v262 = v48 & 0xFFFFFFFF00000000 | v74 | v54;
        v75 = sub_10008C234(a1, a2, v74 | v54, 3, 0);
        if (v75)
        {
          if (!v9)
          {
            goto LABEL_146;
          }

          v99 = v75;
          v232 = *(a1 + 34);
          v193 = *(a1 + 28);
          v208 = *(a1 + 32);
          v145 = *(a1 + 16);
          v169 = *(a1 + 24);
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list offset %u\n", v76, v77, v78, v79, v80, v81, v82, *(a1 + 8));
          v100 = 388;
          goto LABEL_138;
        }

        v83 = *(v13 + *(a1 + 42) + v54 + 2);
        v259 = v259 & 0xFFFFFFFF00000000 | v54 | (v83 << 16);
        v84 = sub_10008C234(a1, a2, v54 | (v83 << 16), 3, v263);
        if (v84)
        {
          if (!v9)
          {
            goto LABEL_146;
          }

          v101 = v84;
          v209 = *(a1 + 32);
          v233 = *(a1 + 34);
          v170 = *(a1 + 24);
          v194 = *(a1 + 28);
          v146 = *(a1 + 16);
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list entry (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          v100 = 389;
          goto LABEL_144;
        }

        v73 += v83;
        v54 = *(v13 + *(a1 + 42) + v54);
        v48 = v262;
      }

      while (v54 != 0xFFFF);
      if (*(a1 + 50) >= v73)
      {
        v55 = *(a1 + 50);
        v35 = v263;
        goto LABEL_82;
      }

      if (!v9)
      {
        goto LABEL_146;
      }

      v247 = *(a1 + 50);
      v206 = *(a1 + 32);
      v230 = *(a1 + 34);
      v167 = *(a1 + 24);
      v191 = *(a1 + 28);
      v143 = *(a1 + 16);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list length (%u), given total key length (%u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
      v22 = 92;
      v85 = 390;
    }

    fsck_fail_func(v85, 92);
LABEL_147:
    v35 = v263;
    goto LABEL_67;
  }

LABEL_61:
  v22 = 92;
  if (v9)
  {
    v244 = *(a1 + 40);
    v251 = *(a1 + 42);
    v204 = *(a1 + 32);
    v227 = *(a1 + 34);
    v164 = *(a1 + 24);
    v188 = *(a1 + 28);
    v140 = *(a1 + 16);
    fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_table_space (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
    if (v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = 92;
    }

    v50 = 385;
    goto LABEL_66;
  }

LABEL_67:
  v51 = *(v35 + 8);
  if (v51)
  {
    free(v51);
  }

  free(v35);
  return v22;
}

uint64_t sub_10008C234(unsigned __int16 *a1, _DWORD *a2, int a3, int a4, uint64_t a5)
{
  v6 = a3;
  v8 = HIWORD(a3);
  v9 = a1[16];
  if ((v9 & 2) != 0)
  {
    v10 = a2[3];
  }

  else if ((v9 & 8) != 0)
  {
    v10 = a2[11] + 8;
  }

  else
  {
    v10 = 8;
  }

  v11 = *a2;
  if (a3 == 0xFFFF || !HIWORD(a3))
  {
    result = 22;
    if (a3 == 0xFFFF)
    {
      if ((v11 & 4) != 0 && a4 == 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = 22;
      }

      if ((v9 & 2) != 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 22;
      }

      if (HIWORD(a3))
      {
        return 22;
      }

      else
      {
        return v18;
      }
    }

    return result;
  }

  v12 = a1[22];
  v13 = a2[1] + ((v9 << 31 >> 31) & 0xFFFFFFD8) - 56;
  v14 = 8;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      if (HIWORD(a3) <= 0x340u)
      {
        v20 = a2[2];
        v14 = 1;
        if (!v20 || HIWORD(a3) == v20)
        {
LABEL_46:
          result = 84;
          if (v12 <= a3 || HIWORD(a3) > (v12 - a3))
          {
            return result;
          }

          goto LABEL_48;
        }

        return 22;
      }
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_41;
      }

      if (a3 == 65534 || HIWORD(a3) == 65534)
      {
        result = 22;
        if (a3 == 65534 && HIWORD(a3) == 65534)
        {
          if ((v11 & 4) != 0)
          {
            v27 = 0;
          }

          else
          {
            v27 = 22;
          }

          if ((v9 & 2) != 0)
          {
            return v27;
          }

          else
          {
            return 22;
          }
        }

        return result;
      }

      if (HIWORD(a3) <= 0xEE0u)
      {
        v14 = 1;
        if (!v10 || HIWORD(a3) == v10)
        {
          goto LABEL_33;
        }

        return 22;
      }
    }

    return 7;
  }

  if (a4 == 3)
  {
    goto LABEL_46;
  }

  if (a4 != 4)
  {
    if (a4 != 5)
    {
      goto LABEL_41;
    }

LABEL_48:
    v6 = a1[21] + a3;
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

LABEL_33:
  if (a3 > v13 - (a1[23] + v12) || HIWORD(a3) > a3)
  {
    return 84;
  }

  v6 = *(a2 + 2) + (((v9 << 15) >> 15) & 0xFFD8) - 56 - a3;
LABEL_41:
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  if ((v6 & 7) != 0 || HIWORD(a3) % v14)
  {
    return 14;
  }

LABEL_52:
  result = 84;
  if (v13 < v6 || HIWORD(a3) > v13 - v6)
  {
    return result;
  }

  if (!a5)
  {
    return 0;
  }

  v21 = *(a5 + 4);
  if (v21)
  {
    v22 = 0;
    v23 = *(a5 + 4);
    do
    {
      if (v6 >= *(*(a5 + 8) + 4 * ((v22 + v23) >> 1)))
      {
        v22 = ((v22 + v23) >> 1) + 1;
      }

      else
      {
        v23 = (v22 + v23) >> 1;
      }
    }

    while (v22 < v23);
    if (v22)
    {
      v24 = (*(a5 + 8) + 4 * (v22 - 1));
      v25 = *v24;
      if (v24[1] + v25 > v6 && HIWORD(a3) + v6 > v25)
      {
        return 34;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  if (v22 < v21)
  {
    v28 = (*(a5 + 8) + 4 * v22);
    v29 = *v28;
    if (v28[1] + v29 > v6 && HIWORD(a3) + v6 > v29)
    {
      return 34;
    }
  }

  if (v21 == *a5)
  {
    v31 = v21 + 8;
    *a5 = v31;
    v32 = reallocf(*(a5 + 8), 4 * v31);
    *(a5 + 8) = v32;
    if (!v32)
    {
      return 12;
    }

    v21 = *(a5 + 4);
  }

  if (v21 > v22)
  {
    memmove((*(a5 + 8) + 4 * (v22 + 1)), (*(a5 + 8) + 4 * v22), 4 * (v21 - v22));
    v21 = *(a5 + 4);
  }

  result = 0;
  v33 = (*(a5 + 8) + 4 * v22);
  *v33 = v6;
  v33[1] = v8;
  *(a5 + 4) = v21 + 1;
  return result;
}

uint64_t sub_10008C568(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 4);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 8);
    while (1)
    {
      if ((v3 & 0x40) != 0)
      {
        v5 = *v7;
      }

      else
      {
        v8 = ((v6 + 7) & 0x1FFF8) + v5;
        v5 = *v7;
        if (v8 != v5)
        {
          return 22;
        }
      }

      v6 = v7[1];
      v7 += 2;
      if (!--v4)
      {
        v9 = ((v6 + 7) & 0x1FFF8) + v5;
        goto LABEL_9;
      }
    }
  }

  v9 = 0;
LABEL_9:
  v10 = (v3 >> 6) & 1;
  if (v9 == a2[1] + ((*(a1 + 32) << 31 >> 31) & 0xFFFFFFD8) - 56)
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t fsck_tree(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, unsigned __int8 *, void, uint64_t *, void, uint64_t, int *), uint64_t a4, void *a5, char a6)
{
  if (*(a1 + 44) != 2)
  {
    return 45;
  }

  v12 = *(a1 + 56);
  v185 = 0uLL;
  v186 = 0;
  v187 = v12;
  v184 = 0;
  v183 = 0;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v178 = 0u;
  memset(v188, 0, sizeof(v188));
  v177 = -1;
  v20 = sub_10008B300(a1, v12, a2, &v185, &v184, &v183, &v178, a6);
  if (!v20)
  {
    v21 = v183;
    v22 = *v183;
    if ((*v183 & 0xFFFFFE20) != 0)
    {
      v156 = *(v184 + 17);
      v127 = *(v184 + 7);
      v144 = *(v184 + 16);
      v93 = v184[2];
      v110 = *(v184 + 6);
      fsck_printf_warn("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: invalid btn_btree.bt_fixed.bt_flags (0x%x)\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
      fsck_fail_func(0x19A, -3);
      v21 = v183;
      v22 = *v183;
    }

    if ((~v22 & 0x18) == 0)
    {
      v157 = *(v184 + 17);
      v128 = *(v184 + 7);
      v145 = *(v184 + 16);
      v94 = v184[2];
      v111 = *(v184 + 6);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_flags (0x%x)\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
      v20 = 92;
      v24 = 411;
LABEL_36:
      v33 = 92;
LABEL_37:
      fsck_fail_func(v24, v33);
      goto LABEL_38;
    }

    v25 = v22 & 0x180;
    v26 = *(a1 + 52);
    if (v25 == 384)
    {
      if (v26)
      {
        goto LABEL_11;
      }
    }

    else if (!(v26 | v25))
    {
LABEL_11:
      if (((v22 << 26) & 0x40000000 | ((v22 >> 3) << 31)) != *(a1 + 40))
      {
        v160 = *(v184 + 17);
        v131 = *(v184 + 7);
        v147 = *(v184 + 16);
        v97 = v184[2];
        v114 = *(v184 + 6);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_flags (0x%x), given mt_btflags\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 412;
        goto LABEL_36;
      }

      v27 = *(a1 + 24);
      if (v27 && v21[1] != v27)
      {
        v149 = *(v184 + 16);
        v162 = *(v184 + 17);
        v116 = *(v184 + 6);
        v133 = *(v184 + 7);
        v99 = v184[2];
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_node_size (%u), given mt_node_size (%u)\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 415;
        goto LABEL_36;
      }

      v28 = v21[2];
      v29 = v184;
      if (v28 > 0x340 || (v28 & 3) != 0)
      {
        v161 = *(v184 + 17);
        v132 = *(v184 + 7);
        v148 = *(v184 + 16);
        v98 = v184[2];
        v115 = *(v184 + 6);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 416;
        goto LABEL_36;
      }

      if (!v28 && (v184[4] & 4) != 0)
      {
        v158 = *(v184 + 17);
        v112 = *(v184 + 6);
        v129 = *(v184 + 7);
        v95 = v184[2];
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u), given btn_flags (0x%x)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 417;
        goto LABEL_36;
      }

      if ((v22 & 1) != 0 && v28 != 8)
      {
        v163 = *(v184 + 17);
        v117 = *(v184 + 6);
        v134 = *(v184 + 7);
        v100 = v184[2];
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u), given btn_btree.bt_fixed.bt_flags (0x%x)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 418;
        goto LABEL_36;
      }

      v30 = *(a1 + 28);
      if (v30 && v28 != v30)
      {
        v164 = *(v184 + 17);
        v118 = *(v184 + 6);
        v135 = *(v184 + 7);
        v101 = v184[2];
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u), given mt_key_size (%u)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 419;
        goto LABEL_36;
      }

      v31 = v21[3];
      if (v31 > 0xEE0 || (v31 & 7) != 0)
      {
        v166 = *(v184 + 17);
        v137 = *(v184 + 7);
        v103 = v184[2];
        v120 = *(v184 + 6);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_val_size (%u)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 420;
        goto LABEL_36;
      }

      v32 = *(a1 + 32);
      if (v32 && v31 != v32)
      {
        v165 = *(v184 + 17);
        v119 = *(v184 + 6);
        v136 = *(v184 + 7);
        v102 = v184[2];
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_val_size (%u), given mt_val_size (%u)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 421;
        goto LABEL_36;
      }

      if (v25 == 384)
      {
        is_seal_intact = fsck_is_seal_intact(*a1, *(a1 + 8), a2, &v182 + 8, &v181, &v181 + 1, v188, 0x40u);
        if (is_seal_intact)
        {
LABEL_44:
          v20 = is_seal_intact;
          goto LABEL_38;
        }

        v29 = v184;
      }

      v175 = 0uLL;
      v176 = 0;
      v173 = v185;
      v174 = v186;
      is_seal_intact = sub_10008CF58(a1, 0, &v175, v29, &v173, &v187, a2, a3, a4, 0, 0, 0, 0, &v177, &v178, 1u, a6);
      if (is_seal_intact)
      {
        goto LABEL_44;
      }

      if (BYTE11(v182) == 1)
      {
        do
        {
          fsck_printf("Restarting tree validation in case more minkey errors exist...\n", v35, v36, v37, v38, v39, v40, v41, v92);
          BYTE11(v182) = 0;
          BYTE9(v182) = 1;
          v43 = v180;
          v175 = 0uLL;
          v176 = 0;
          v173 = v185;
          v174 = v186;
          is_seal_intact = sub_10008CF58(a1, 0, &v175, v184, &v173, &v187, a2, 0, 0, 0, 0, 0, 0, &v177, &v178, 1u, 0);
          if (is_seal_intact)
          {
            goto LABEL_44;
          }

          *&v180 = v43;
        }

        while ((BYTE11(v182) & 1) != 0);
      }

      v44 = v183;
      v45 = v183[4];
      if (v45 > 0x340 || v45 < v179)
      {
        v150 = *(v184 + 16);
        v167 = *(v184 + 17);
        v121 = *(v184 + 6);
        v138 = *(v184 + 7);
        v104 = v184[2];
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_key (expected %u, actual %u)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
        v20 = 92;
        fsck_fail_func(0x1AA, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_longest_key (%u)? ", v47, v48, v49, v50, v51, v52, v183[4]))
        {
          goto LABEL_38;
        }

        v45 = v179;
        v44 = v183;
        v183[4] = v179;
        v46 = 1;
      }

      else
      {
        v46 = 0;
      }

      if (*(v44 + 3))
      {
        v53 = v44[2];
        if (v53)
        {
          if (v45 != v53)
          {
            v151 = *(v184 + 16);
            v168 = *(v184 + 17);
            v122 = *(v184 + 6);
            v139 = *(v184 + 7);
            v105 = v184[2];
            fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_key (%u), given btn_btree.bt_fixed.bt_key_size (%u)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
            v20 = 92;
            fsck_fail_func(0x1AB, 92);
            if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_longest_key (%u)? ", v54, v55, v56, v57, v58, v59, v183[4]))
            {
              goto LABEL_38;
            }

            v44 = v183;
            v183[4] = v183[2];
            v46 = 1;
          }
        }
      }

      v60 = v44[5];
      if (v60 > 0xEE0 || (v61 = v44[5], v60 < DWORD1(v179)))
      {
        v152 = *(v184 + 16);
        v169 = *(v184 + 17);
        v123 = *(v184 + 6);
        v140 = *(v184 + 7);
        v106 = v184[2];
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_val (expected %u, actual %u)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
        v20 = 92;
        fsck_fail_func(0x1AC, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_longest_val (%u)? ", v62, v63, v64, v65, v66, v67, v183[5]))
        {
          goto LABEL_38;
        }

        v61 = DWORD1(v179);
        v44 = v183;
        v183[5] = DWORD1(v179);
        v46 = 1;
      }

      v68 = *(v44 + 3);
      if (v68)
      {
        v69 = v44[3];
        if (v69)
        {
          if (v61 != v69 && (v61 || (*v44 & 4) == 0))
          {
            v153 = *(v184 + 16);
            v170 = *(v184 + 17);
            v124 = *(v184 + 6);
            v141 = *(v184 + 7);
            v107 = v184[2];
            fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_val (%u), given btn_btree.bt_fixed.bt_val_size (%u)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
            v20 = 92;
            fsck_fail_func(0x1AD, 92);
            if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_longest_val (%u)? ", v70, v71, v72, v73, v74, v75, v183[5]))
            {
              goto LABEL_38;
            }

            v44 = v183;
            v183[5] = v183[3];
            v68 = *(v44 + 3);
            v46 = 1;
          }
        }
      }

      if (v68 == *(&v179 + 1))
      {
        if (*(v44 + 4) == v180)
        {
          if (!v46)
          {
            goto LABEL_80;
          }

          goto LABEL_77;
        }
      }

      else
      {
        v154 = *(v184 + 16);
        v171 = *(v184 + 17);
        v125 = *(v184 + 6);
        v142 = *(v184 + 7);
        v108 = v184[2];
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_key_count (expected %llu, actual %llu)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
        v20 = 92;
        fsck_fail_func(0x1AE, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_key_count (%llu)? ", v76, v77, v78, v79, v80, v81, *(v183 + 3)))
        {
          goto LABEL_38;
        }

        v82 = v183;
        *(v183 + 3) = *(&v179 + 1);
        if (*(v82 + 4) == v180)
        {
LABEL_77:
          v89 = *a1;
          v90 = *(a1 + 8);
          v175 = v185;
          v176 = v186;
          v91 = write_obj(v89, v90, v184, &v175, v185, v42);
          if (v91)
          {
            v20 = v91;
            v24 = 434;
            v33 = v20;
            goto LABEL_37;
          }

          fsck_fail_add_repair();
LABEL_80:
          v20 = 0;
          if (a5)
          {
            *a5 = *(&v179 + 1);
          }

          goto LABEL_38;
        }
      }

      v155 = *(v184 + 16);
      v172 = *(v184 + 17);
      v126 = *(v184 + 6);
      v143 = *(v184 + 7);
      v109 = v184[2];
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_node_count (expected %llu, actual %llu)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
      v20 = 92;
      fsck_fail_func(0x1AF, 92);
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_node_count (%llu)? ", v83, v84, v85, v86, v87, v88, *(v183 + 4)))
      {
        *(v183 + 4) = v180;
        goto LABEL_77;
      }

LABEL_38:
      if (v184)
      {
        free(v184);
      }

      return v20;
    }

    v159 = *(v184 + 17);
    v130 = *(v184 + 7);
    v146 = *(v184 + 16);
    v96 = v184[2];
    v113 = *(v184 + 6);
    fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unexpected btn_btree.bt_fixed.bt_flags (0x%x)\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
    v20 = 92;
    v24 = 914;
    goto LABEL_36;
  }

  return v20;
}

uint64_t sub_10008CF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void, unsigned __int8 *, void, uint64_t *, void, uint64_t, int *), uint64_t a9, unsigned __int8 *a10, unsigned int a11, void *a12, unsigned int a13, _WORD *a14, int8x16_t *a15, unsigned __int8 a16, char a17)
{
  v18 = a14;
  v19 = a11;
  v297 = a10;
  v294 = 0;
  v295 = 0;
  v293 = a11;
  v291 = 0;
  v289 = 0;
  if (*(a5 + 8) != a15->i32[1])
  {
    v271 = *(a5 + 8);
    v258 = *(a4 + 32);
    v265 = *(a4 + 34);
    v234 = *(a4 + 24);
    v246 = *(a4 + 28);
    v225 = *(a4 + 16);
    fsck_printf_warn("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: invalid cpm_size or ov_size (%u), given btn_btree.bt_fixed.bt_node_size (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a4 + 8));
    v27 = 92;
    v56 = 401;
    goto LABEL_15;
  }

  v20 = a6;
  v23 = *(a4 + 32);
  if ((v23 & 1) != a16)
  {
    v24 = *(a4 + 16);
    v25 = "not a root";
    if (a16)
    {
      v25 = "a root";
    }

    v270 = *(a4 + 32);
    v274 = v25;
    v257 = v270;
    v264 = *(a4 + 34);
    v233 = *(a4 + 24);
    v245 = *(a4 + 28);
    if (a16)
    {
      v26 = "Set";
    }

    else
    {
      v26 = "Clear";
    }

    fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", a2, a3, a4, a5, a6, a7, a8, *(a4 + 8));
    v27 = 92;
    fsck_fail_func(0x192, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "%s BTNODE_ROOT flag? ", v28, v29, v30, v31, v32, v33, v26))
    {
      goto LABEL_169;
    }

    v23 = *(a4 + 32) & 0xFFFE | a16;
    *(a4 + 32) = v23;
    v289 = 1;
  }

  v34 = *(a4 + 34);
  v280 = v20;
  if ((*(a4 + 34) == 0) == ((v23 & 2) == 0))
  {
    if ((v23 & 1) == 0 || (v58 = a4 + *(a5 + 8), v59 = *(a4 + 36), v60 = *(v58 - 16), (v60 == v59) == (*(v58 - 8) != 1)))
    {
      v66 = *a14;
      v20 = v280;
      if (v66 != 0xFFFF && v34 == v66)
      {
        v67 = *(a4 + 16);
        v68 = "not a leaf";
        if (!*(a4 + 34))
        {
          v68 = "a leaf";
        }

        v270 = v23;
        v274 = v68;
        v257 = v23;
        v264 = *(a4 + 34);
        v235 = *(a4 + 24);
        v247 = *(a4 + 28);
        if (*(a4 + 34))
        {
          v69 = "Clear";
        }

        else
        {
          v69 = "Set";
        }

        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", a2, a3, a4, a5, a6, a7, a8, *(a4 + 8));
        v27 = 92;
        fsck_fail_func(0x4AF, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "%s BTNODE_LEAF flag? ", v70, v71, v72, v73, v74, v75, v69))
        {
          goto LABEL_169;
        }

        *(a4 + 32) = *(a4 + 32) & 0xFFFD | (2 * (v34 == 0));
        v289 = 1;
      }
    }

    else
    {
      v61 = *(a4 + 8);
      v62 = *(a4 + 16);
      v63 = *(a4 + 24);
      v64 = *(a4 + 28);
      v65 = "not a leaf";
      if (v60 == v59)
      {
        v65 = "a leaf";
      }

      if ((v34 == 0) != (v60 == v59))
      {
        v270 = *(a4 + 34);
        v274 = v65;
        v257 = v23;
        v264 = v270;
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_level (%u), given btree node is %s\n", a2, a3, a4, a5, a6, a7, a8, v61);
        fsck_fail_func(0x4AE, 92);
      }

      else
      {
        v270 = v23;
        v274 = v65;
        v257 = v23;
        v264 = *(a4 + 34);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", a2, a3, a4, a5, a6, a7, a8, v61);
        v27 = 92;
        fsck_fail_func(0x4AD, 92);
        v195 = "Clear";
        if (v60 == v59)
        {
          v195 = "Set";
        }

        if (!fsckAskPrompt(fsck_apfs_ctx, "%s BTNODE_LEAF flag? ", v189, v190, v191, v192, v193, v194, v195))
        {
          goto LABEL_169;
        }

        *(a4 + 32) = *(a4 + 32) & 0xFFFD | (2 * (v60 == v59));
        v289 = 1;
      }

      v20 = v280;
    }
  }

  v296 = 0;
  v292 = 0;
  v290 = 0;
  v35 = fsck_btree_validate_node(a4, a15, 1, &v289, a5, a6, a7, a8);
  v44 = *(a4 + 32);
  if (v35)
  {
    v45 = v35;
    *(a4 + 32) = v44 ^ 2;
    v46 = fsck_btree_validate_node(a4, a15, 0, &v289, v39, v40, v41, v42);
    v54 = *(a4 + 32);
    *(a4 + 32) = v54 ^ 2;
    if (v46)
    {
      goto LABEL_13;
    }

    v76 = *(a4 + 16);
    v77 = "a leaf";
    if ((v54 & 2) == 0)
    {
      v77 = "not a leaf";
    }

    v270 = v54 ^ 2u;
    v274 = v77;
    v257 = v270;
    v264 = *(a4 + 34);
    v236 = *(a4 + 24);
    v248 = *(a4 + 28);
    v78 = (v54 & 2) != 0 ? "Set" : "Clear";
    fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", v47, v48, v49, v50, v51, v52, v53, *(a4 + 8));
    fsck_fail_func(0x480, 92);
    v35 = fsckAskPrompt(fsck_apfs_ctx, "%s BTNODE_LEAF flags? ", v79, v80, v81, v82, v83, v84, v78);
    if (!v35)
    {
LABEL_13:
      v55 = fsck_tree_node_repair_add_maybe(a1, a15, *(a4 + 8), *(a4 + 16), *(a4 + 34), a10, a11, a12, a13, v45);
LABEL_46:
      v27 = v55;
      goto LABEL_169;
    }

    v85 = *(a4 + 32);
    v44 = v85 ^ 2;
    *(a4 + 32) = v85 ^ 2;
    if ((v54 & 2) != 0)
    {
      *(a4 + 34) = 0;
    }

    v289 = 1;
  }

  v277 = a5;
  if ((v44 & 2) != 0 && memory_storage_limit_reached(v35, v36, v37, v38, v39, v40, v41, v42))
  {
    fsck_printf_err("fsck_apfs is out of memory - some cross checks are skipped\n", v36, v37, v86, v39, v40, v41, v42, v222);
    fsck_fail_func(0x585, 12);
  }

  if (*(a1 + 52))
  {
    v55 = fsck_validate_node_hash(a15, a4, v20, *(a1 + 24), v39, v40, v41, v42);
    if (v55)
    {
      goto LABEL_46;
    }
  }

  v87 = 0;
  v88 = 0;
  v89 = 0;
  v282 = v44;
  v276 = v44 << 25;
  v281 = a13;
  v90 = *(a4 + 36);
  v91 = a1;
  v92 = a10;
  do
  {
    v93 = v19;
    v94 = v92;
    if (v90 <= v87)
    {
      v92 = a12;
      v294 = 0;
      v295 = a12;
      HIWORD(v291) = a13;
      if (!v94)
      {
        goto LABEL_118;
      }
    }

    else
    {
      get_key_and_value_at_index(a4, a15, v87, &v295, &v291 + 1, &v294, &v291);
      v92 = v295;
      if (!v94)
      {
        goto LABEL_118;
      }
    }

    if (!v92)
    {
      goto LABEL_118;
    }

    v95 = *(v91 + 8);
    if (v95)
    {
      v96 = *(v95 + 40);
    }

    else
    {
      v96 = 0;
    }

    v97 = HIWORD(v291);
    v283 = v94;
    v286 = v92;
    v98 = (*(v91 + 16))(v96, v94, v93);
    if (v98 == 45)
    {
      v270 = (v87 - 1);
      v274 = v87;
      v257 = *(a4 + 32);
      v264 = *(a4 + 34);
      v237 = *(a4 + 24);
      v249 = *(a4 + 28);
      v226 = *(a4 + 16);
      fsck_printf_warn("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: can't compare key (%u) with key (%u)\n", v36, v37, v99, v39, v40, v41, v42, *(a4 + 8));
      fsck_fail_func(0x55F, -5);
      v100 = (v87 != 0) << 31 >> 31;
      v290 = v100;
    }

    else
    {
      v27 = v98;
      if (v98)
      {
        v261 = *(a4 + 32);
        v267 = *(a4 + 34);
        v241 = *(a4 + 24);
        v253 = *(a4 + 28);
        v229 = *(a4 + 16);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: key (%u) compare error: %d\n", v36, v37, v99, v39, v40, v41, v42, *(a4 + 8));
        v214 = 403;
        goto LABEL_166;
      }

      v100 = v290;
    }

    v94 = v283;
    if (v87 || !v100)
    {
      v92 = v286;
      if (!v87 || v100 < 0)
      {
        goto LABEL_118;
      }

      v155 = *(a4 + 8);
      v156 = *(a4 + 16);
      v157 = *(a4 + 24);
      v158 = *(a4 + 28);
      v159 = *(a4 + 32);
      v160 = *(a4 + 34);
      v161 = v100 == 0;
      v162 = "greater than";
      if (v161)
      {
        v162 = "equal to";
      }

      if (v87 == *(a4 + 36))
      {
        v270 = (v87 - 1);
        v274 = v162;
        v257 = *(a4 + 32);
        v264 = *(a4 + 34);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key order: index %u is %s maxkey (should be less than)\n", v36, v37, v286, v39, v40, v41, v42, v155);
        v104 = 1118;
      }

      else
      {
        v274 = v162;
        v275 = v87;
        v264 = *(a4 + 34);
        v270 = (v87 - 1);
        v257 = *(a4 + 32);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key order: index %u is %s index %u (should be less than)\n", v36, v37, v286, v39, v40, v41, v42, v155);
        v104 = 404;
      }
    }

    else
    {
      v101 = *(a4 + 16);
      v102 = v100 < 0;
      v103 = "greater than";
      if (v102)
      {
        v103 = "less than";
      }

      v264 = *(a4 + 34);
      v270 = v103;
      v250 = *(a4 + 28);
      v257 = *(a4 + 32);
      v238 = *(a4 + 24);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key order: minkey is %s index 0 (should be equal)\n", v36, v37, v99, v39, v40, v41, v42, *(a4 + 8));
      v104 = 1117;
    }

    fsck_fail_func(v104, 92);
    v105 = v93;
    if (v93 <= v97)
    {
      v105 = v97;
    }

    v106 = 3 * v105 + 1;
    v107 = malloc_type_malloc(v106, 0x19ECC3C2uLL);
    *__str = 0u;
    v312 = 0u;
    if (v107)
    {
      v115 = v107;
      if (v87 && v88)
      {
        sub_10008DFF0(__str, v87 - 1, *(a4 + 36));
        sub_10008E07C(v115, v106, v88, v89);
        fsck_printf("\t%-14s: %s\n", v116, v117, v118, v119, v120, v121, v122, __str);
      }

      sub_10008DFF0(__str, v87, *(a4 + 36));
      sub_10008E07C(v115, v106, v283, v93);
      fsck_printf("\t%-14s: %s\n", v123, v124, v125, v126, v127, v128, v129, __str);
      sub_10008DFF0(__str, v87 + 1, *(a4 + 36));
      sub_10008E07C(v115, v106, v286, v97);
      fsck_printf("\t%-14s: %s\n", v130, v131, v132, v133, v134, v135, v136, __str);
      v137 = *(a4 + 36);
      if (v87 < v137)
      {
        v300.i64[0] = 0;
        v298.i16[0] = 0;
        v138 = a13;
        v139 = a12;
        if (v137 > v87 + 1)
        {
          get_key_and_value_at_index(a4, a15, v87 + 1, v300.i64, &v298, 0, 0);
          v137 = *(a4 + 36);
          v139 = v300.i64[0];
          v138 = v298.u16[0];
        }

        sub_10008DFF0(__str, v87 + 2, v137);
        sub_10008E07C(v115, v106, v139, v138);
        fsck_printf("\t%-14s: %s\n", v140, v141, v142, v143, v144, v145, v146, __str);
      }

      free(v115);
    }

    v27 = 92;
    if (v87 || (v290 & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    fsck_printf("Checking if the parent's minkey can be updated...\n", v108, v109, v110, v111, v112, v113, v114, v223);
    *v287 = *a3;
    v288 = *(a3 + 16);
    v309 = 0;
    v305 = 0;
    v303 = 0;
    if (!*(a2 + 36))
    {
      goto LABEL_188;
    }

    v147 = 0;
    do
    {
      get_key_and_value_at_index(a2, a15, v147, &v310, &v306, &v309, &v305);
      if (!v309)
      {
        sub_10008F310();
      }

      if (a15[2].i32[2])
      {
        v148 = a15[4].i64[0];
      }

      else
      {
        v148 = 0;
      }

      v149 = *(a2 + 36);
      if (v148 + *v309 == *v280)
      {
        break;
      }

      ++v147;
    }

    while (v147 < v149);
    if (v147 >= v149)
    {
LABEL_188:
      sub_10008F33C();
    }

    if (!v147 && (*(a2 + 32) & 1) == 0)
    {
      a15[4].i8[11] = 1;
    }

    v307 = 0;
    v308 = 0;
    v304 = 0;
    get_key_and_value_at_index(a4, a15, 0, &v308, &v304 + 1, 0, 0);
    v154 = v147 + 1;
    if (*(a2 + 36) <= v154)
    {
      v307 = a12;
      LOWORD(v304) = a13;
      if (!a12)
      {
        goto LABEL_105;
      }
    }

    else
    {
      get_key_and_value_at_index(a2, a15, v154, &v307, &v304, 0, 0);
      if (!v307)
      {
        goto LABEL_105;
      }
    }

    v163 = *(a1 + 8);
    if (v163)
    {
      v164 = *(v163 + 40);
    }

    else
    {
      v164 = 0;
    }

    v167 = (*(a1 + 16))(v164, v308, HIWORD(v304));
    if (v167 || (v303 & 0x80000000) == 0)
    {
      v262 = *(a2 + 32);
      v268 = *(a2 + 34);
      v242 = *(a2 + 24);
      v254 = *(a2 + 28);
      v230 = *(a2 + 16);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unable to repair minkey\n", v165, v154, v166, v150, v151, v152, v153, *(a2 + 8));
      if (v167)
      {
        v27 = v167;
      }

      else
      {
        v27 = 92;
      }

      v214 = 1114;
LABEL_166:
      v215 = v27;
LABEL_167:
      fsck_fail_func(v214, v215);
LABEL_168:
      v18 = a14;
      goto LABEL_169;
    }

LABEL_105:
    if (*(a4 + 36) < 2u)
    {
      LOWORD(v304) = a13;
      v168 = a12;
      if (a12)
      {
LABEL_109:
        v169 = *(a1 + 8);
        if (v169)
        {
          v170 = *(v169 + 40);
        }

        else
        {
          v170 = 0;
        }

        v172 = (*(a1 + 16))(v170, v308, HIWORD(v304));
        if (v172 || (v303 & 0x80000000) == 0)
        {
          v263 = *(a2 + 32);
          v269 = *(a2 + 34);
          v243 = *(a2 + 24);
          v255 = *(a2 + 28);
          v231 = *(a2 + 16);
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unable to repair minkey\n", v171, v154, v168, v150, v151, v152, v153, *(a2 + 8));
          if (v172)
          {
            v27 = v172;
          }

          else
          {
            v27 = 92;
          }

          v214 = 1115;
          goto LABEL_166;
        }
      }
    }

    else
    {
      get_key_and_value_at_index(a4, a15, 1u, &v307, &v304, 0, 0);
      v168 = v307;
      if (v307)
      {
        goto LABEL_109;
      }
    }

    if (!fsckAskPrompt(fsck_apfs_ctx, "Update the parent's minkey? ", v154, v168, v150, v151, v152, v153, v224))
    {
      v27 = 92;
      goto LABEL_168;
    }

    v300 = *a15;
    v91 = a1;
    v173 = *(a1 + 36);
    v302 = *(a1 + 56);
    v301 = v173;
    if (!btree_node_update_maybe(&v300, a2, v147, v308, HIWORD(v304), 0, 0))
    {
      v260 = *(a2 + 32);
      v266 = *(a2 + 34);
      v240 = *(a2 + 24);
      v252 = *(a2 + 28);
      v228 = *(a2 + 16);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: parent doesn't have enough space to update the minkey\n", v174, v175, v176, v177, v178, v179, v180, *(a2 + 8));
      v27 = 92;
      v214 = 1116;
      v215 = 92;
      goto LABEL_167;
    }

    v182 = *a1;
    v183 = *(a1 + 8);
    v298 = *v287;
    v299 = v288;
    v184 = write_obj(v182, v183, a2, &v298, *v287, v181);
    if (v184)
    {
      goto LABEL_140;
    }

    fsck_fail_add_repair();
    v92 = v286;
    v94 = v283;
LABEL_118:
    v90 = *(a4 + 36);
    if ((v282 & 2) != 0 && a8 && v87 < v90)
    {
      v19 = HIWORD(v291);
      if ((a15[4].i8[10] & 1) == 0)
      {
        v185 = v92;
        v184 = a8(*v91, *(v91 + 8), v92, HIWORD(v291), v294, v291, a9, &v289);
        if (v184)
        {
LABEL_140:
          v27 = v184;
          goto LABEL_168;
        }

        v90 = *(a4 + 36);
        v92 = v185;
      }
    }

    else
    {
      v19 = HIWORD(v291);
    }

    v296 = v294;
    v292 = v291;
    v87 = (v87 + 1);
    v88 = v94;
    v89 = v93;
  }

  while (v87 <= v90);
  v297 = v92;
  v293 = v19;
  if ((v282 & 2) != 0 || !v90)
  {
    v186 = v277;
    v18 = a14;
    if ((v282 & 2) != 0)
    {
      *a14 = 0;
    }

    goto LABEL_143;
  }

  v186 = v277;
  v18 = a14;
  if (a15[4].i8[9] != 1 || *(a4 + 34) >= 2u)
  {
    v300 = 0uLL;
    v301 = 0;
    v287[0] = 0;
    get_key_and_value_at_index(a4, a15, 0, &v297, &v293, &v296, &v292);
    if (!v296)
    {
      sub_10008F2E4();
    }

    v187 = *v296;
    v188 = a15[2].i32[2] ? a15[4].i64[0] : 0;
    v217 = copy_obj(*a1, *(a1 + 8), *(a1 + 40), v188 + v187, a7, v276 & 0x20000000, 3, *(a1 + 48), v287, &v300, a17);
    if (v217)
    {
      v218 = v217;
      v219 = a12;
      if (*(a4 + 36) >= 2u)
      {
        get_key_and_value_at_index(a4, a15, 1u, &v295, &v291 + 1, 0, 0);
        v219 = v295;
        v281 = HIWORD(v291);
      }

      v55 = fsck_tree_node_repair_add_maybe(a1, a15, v188 + v187, *(a4 + 16), (*(a4 + 34) - 1), v297, v293, v219, v281, v218);
      if (v55)
      {
        goto LABEL_46;
      }
    }

    if (*(a4 + 34) > 1u)
    {
      v220 = sub_10008E19C;
      v91 = a1;
      goto LABEL_185;
    }

    *__str = 0;
    v91 = a1;
    v221 = dev_features(**a1);
    if (v221)
    {
      v27 = v221;
      free(v287[0]);
      goto LABEL_169;
    }

    v220 = sub_10008E4E0;
    if (!*__str)
    {
      v220 = sub_10008E9B4;
    }

LABEL_185:
    *__str = *v277;
    *&v312 = v277[1].i64[0];
    v298 = v300;
    v299 = v301;
    LOBYTE(v257) = a17;
    v55 = (v220)(v91, a4, __str, v287[0], &v298, a7, a8, a9, a12, a13, a14, a15, v257, v264, v270, v274, v275);
    if (v55)
    {
      goto LABEL_46;
    }
  }

LABEL_143:
  if ((a15[4].i8[10] & 1) == 0 && (a15[4].i8[9] & 1) == 0)
  {
    v196 = *(a4 + 34);
    if (v196 != *v18)
    {
      v272 = *v18;
      v259 = *(a4 + 32);
      v239 = *(a4 + 24);
      v251 = *(a4 + 28);
      v227 = *(a4 + 16);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_level (expected %u, actual %u)\n", v36, v37, v92, v39, v40, v41, v42, *(a4 + 8));
      v27 = 92;
      fsck_fail_func(0x197, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btn_level (%u)? ", v197, v198, v199, v200, v201, v202, *(a4 + 34)))
      {
        goto LABEL_169;
      }

      v196 = *v18;
      *(a4 + 34) = v196;
      v289 = 1;
    }

    if (((v282 & 2) == 0) == (v196 == 0))
    {
      v273 = *(a4 + 32);
      v244 = *(a4 + 24);
      v256 = *(a4 + 28);
      v232 = *(a4 + 16);
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btn_level (%u)\n", v36, v37, v92, v39, v40, v41, v42, *(a4 + 8));
      v27 = 92;
      v56 = 408;
LABEL_15:
      v57 = 92;
LABEL_16:
      fsck_fail_func(v56, v57);
      goto LABEL_169;
    }
  }

  if (!*(v91 + 40))
  {
    v203 = omap_sv_mark(1, *v280, 1);
    if (v203)
    {
      v211 = v203;
      fsck_printf_warn("object (oid 0x%llx): Unable to mark omap entry in use for omap space verification \n", v204, v205, v206, v207, v208, v209, v210, *v280);
      fsck_fail_func(0x3F4, v211);
    }
  }

  if (v289)
  {
    v212 = *v91;
    v213 = *(v91 + 8);
    v300 = *v186;
    v301 = v186[1].i64[0];
    v27 = write_obj(v212, v213, a4, &v300, v300, v43);
    if (v27)
    {
      v56 = 409;
      v57 = v27;
      goto LABEL_16;
    }

    fsck_fail_add_repair();
  }

  else
  {
    v27 = 0;
  }

LABEL_169:
  ++*v18;
  return v27;
}

char *sub_10008DFF0(char *__str, unsigned int a2, int a3)
{
  if (!a2)
  {
    *(__str + 3) = 7955819;
    v4 = 1802398061;
LABEL_6:
    *__str = v4;
    return __str;
  }

  if (a3 + 1 <= a2)
  {
    *(__str + 3) = 7955819;
    v4 = 1803051373;
    goto LABEL_6;
  }

  snprintf(__str, 0x20uLL, "index %u key", a2 - 1);
  return __str;
}

char *sub_10008E07C(char *__s, size_t __size, unsigned __int8 *a3, unsigned int a4)
{
  v4 = a3;
  v5 = __size;
  if (a4 == 4)
  {
    v8 = *a3;
    snprintf(__s, __size, "0x%08x");
  }

  else if (a4 == 8)
  {
    v7 = *a3;
    snprintf(__s, __size, "0x%016llx");
  }

  else
  {
    v10 = a4 != 0;
    if (a4 && __size)
    {
      v11 = __size;
      v12 = 1;
      v13 = 3;
      v14 = __s;
      v15 = a4;
      do
      {
        v16 = *v4++;
        snprintf(v14, v5, "%02x ", v16);
        v10 = v12 < v15;
        if (v12 >= v15)
        {
          break;
        }

        v5 -= 3;
        ++v12;
        v14 += 3;
        v17 = v13 >= v11;
        v13 += 3;
      }

      while (!v17);
    }

    if (v10)
    {
      __s[strlen(__s) - 1] = 43;
    }
  }

  return __s;
}

uint64_t sub_10008E19C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, __int16 a10, _WORD *a11, uint64_t a12, char a13)
{
  v14 = a4;
  v47 = 0;
  v48 = a4;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v17 = *(a2 + 32);
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  get_key_and_value_at_index(a2, a12, 0, &v47, &v43 + 1, &v46, &v43);
  if (!v46)
  {
    sub_10008F394();
  }

  v18 = *v46;
  v49 = *v46;
  if (*(a12 + 40))
  {
    v49 = *(a12 + 64) + v18;
    v19 = *(a12 + 44);
    __memcpy_chk();
  }

  v20 = *(a2 + 36);
  if (!v20)
  {
    v30 = 0;
    if (v14)
    {
      goto LABEL_23;
    }

    return v30;
  }

  v21 = 0;
  v36 = (v17 & 0x10) << 25;
  v22 = HIWORD(v43);
  v23 = v47;
  while (1)
  {
    *a11 = *(a2 + 34) - 1;
    v24 = v21 + 1;
    if (v20 <= v21 + 1)
    {
      v44 = 0;
      v45 = a9;
      HIWORD(v42) = a10;
      if (!v21)
      {
LABEL_17:
        v28 = v45;
LABEL_18:
        if (v48)
        {
          v40 = *a3;
          v41 = *(a3 + 2);
          v38 = *a5;
          v39 = *(a5 + 16);
          BYTE1(v32) = a13;
          LOBYTE(v32) = 0;
          v30 = sub_10008CF58(a1, a2, &v40, v48, &v38, &v49, a6, a7, a8, v23, v22, v28, HIWORD(v42), a11, a12, v32);
          free(v48);
          v48 = 0;
          if (v30)
          {
            return v30;
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      get_key_and_value_at_index(a2, a12, v21 + 1, &v45, &v42 + 1, &v44, &v42);
      if (!v21)
      {
        goto LABEL_17;
      }
    }

    if (!v46)
    {
      sub_10008F368();
    }

    v25 = *v46;
    v49 = *v46;
    if (*(a12 + 40))
    {
      v25 += *(a12 + 64);
      v49 = v25;
      v26 = *(a12 + 44);
      __memcpy_chk();
    }

    v27 = copy_obj(*a1, *(a1 + 8), *(a1 + 40), v25, a6, v36, 3, *(a1 + 48), &v48, a5, a13);
    v28 = v45;
    if (!v27)
    {
      goto LABEL_18;
    }

    v29 = fsck_tree_node_repair_add_maybe(a1, a12, v49, *(a2 + 16), (*(a2 + 34) - 1), v23, v22, v45, HIWORD(v42), v27);
    v14 = v48;
    if (v29)
    {
      break;
    }

    if (v48)
    {
      free(v48);
    }

    v48 = 0;
LABEL_20:
    v22 = HIWORD(v42);
    v46 = v44;
    LOWORD(v43) = v42;
    v20 = *(a2 + 36);
    ++v21;
    v23 = v28;
    if (v24 >= v20)
    {
      return 0;
    }
  }

  v30 = v29;
  if (!v48)
  {
    return v30;
  }

LABEL_23:
  free(v14);
  return v30;
}

uint64_t sub_10008E4E0(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, unsigned __int16 a10, _WORD *a11, uint64_t a12, char a13)
{
  v51 = 0;
  v52 = a4;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v47 = 0;
  v15 = *(a2 + 32);
  memset(&v59[8], 0, 64);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(v53, 0, sizeof(v53));
  get_key_and_value_at_index(a2, a12, 0, &v51, &v48 + 1, &v50, &v48);
  if (!v50)
  {
    sub_10008F3EC();
  }

  v16 = *v50;
  *v59 = *v50;
  if (*(a12 + 40))
  {
    *v59 = *(a12 + 64) + v16;
    v17 = *(a12 + 44);
    __memcpy_chk();
  }

  v46 = 0;
  v18 = *(a2 + 36);
  if (!v18)
  {
    LOBYTE(v22) = 0;
    v33 = 0;
    goto LABEL_31;
  }

  v19 = 0;
  v39 = (v15 & 0x10) << 25;
  v20 = HIWORD(v48);
  v21 = v51;
  while (1)
  {
    v22 = v19;
    *a11 = *(a2 + 34) - 1;
    if (v18 <= ++v19)
    {
      v49 = a9;
      v50 = 0;
      v47 = a10;
    }

    else
    {
      get_key_and_value_at_index(a2, a12, v19, &v49, &v47, &v50, &v48);
      v18 = *(a2 + 36);
    }

    if (v22 < v18 - 1)
    {
      if (!v50)
      {
        sub_10008F3C0();
      }

      v23 = *v50;
      *&v54 = *v50;
      if (*(a12 + 40))
      {
        v23 += *(a12 + 64);
        *&v54 = v23;
        v24 = *(a12 + 44);
        __memcpy_chk();
      }

      *(&v46 | v22 & 1) = 1;
      v25 = copy_obj_async(*a1, *(a1 + 8), *(a1 + 40), v23, a6, v39, 3, *(a1 + 48), &v53[11 * (v22 & 1)]);
      if (v25)
      {
        break;
      }
    }

LABEL_18:
    if (v22 && (v30 = !(v22 & 1), *(&v46 | v30) == 1) && (*(&v46 | v30) = 0, (v31 = copy_obj_finish(*a1, *(a1 + 8), *(a1 + 40), *v59, a6, v39, 3, *(a1 + 48), &v53[11 * !(v22 & 1)], &v52, a5, a13)) != 0))
    {
      v32 = v49;
      v29 = fsck_tree_node_repair_add_maybe(a1, a12, *v59, *(a2 + 16), (*(a2 + 34) - 1), v21, v20, v49, v47, v31);
      if (v29)
      {
        goto LABEL_30;
      }

      if (v52)
      {
        free(v52);
      }

      v52 = 0;
    }

    else
    {
      v32 = v49;
      if (v52)
      {
        v44 = *a3;
        v45 = *(a3 + 2);
        v42 = *a5;
        v43 = *(a5 + 16);
        BYTE1(v35) = a13;
        LOBYTE(v35) = 0;
        v33 = sub_10008CF58(a1, a2, &v44, v52, &v42, v59, a6, a7, a8, v21, v20, v49, v47, a11, a12, v35);
        free(v52);
        v52 = 0;
        if (v33)
        {
          goto LABEL_34;
        }
      }
    }

    v20 = v47;
    *&v59[32] = v56;
    *&v59[48] = v57;
    *&v59[64] = v58;
    *v59 = v54;
    *&v59[16] = v55;
    v21 = v32;
    v18 = *(a2 + 36);
    if (v19 >= v18)
    {
      v33 = 0;
      LOBYTE(v22) = v19;
      goto LABEL_31;
    }
  }

  v26 = v25;
  *&v44 = 0;
  LOWORD(v42) = 0;
  v27 = a10;
  v28 = a9;
  if (*(a2 + 36) > v22 + 2)
  {
    get_key_and_value_at_index(a2, a12, v22 + 2, &v44, &v42, 0, 0);
    v28 = v44;
    v27 = v42;
  }

  v29 = fsck_tree_node_repair_add_maybe(a1, a12, v54, *(a2 + 16), (*(a2 + 34) - 1), v49, v47, v28, v27, v26);
  if (!v29)
  {
    *(&v46 | v22 & 1) = 0;
    goto LABEL_18;
  }

LABEL_30:
  v33 = v29;
LABEL_31:
  if (v52)
  {
    free(v52);
    v52 = 0;
  }

  if (v33)
  {
LABEL_34:
    if (*(&v46 | !(v22 & 1)) == 1)
    {
      copy_obj_abort(*a1, *(a1 + 8), *v59, &v53[11 * !(v22 & 1)]);
    }
  }

  return v33;
}

uint64_t sub_10008E9B4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, _WORD *a11, uint64_t a12, unsigned __int8 a13)
{
  v88 = a7;
  v89 = a8;
  v101 = a6;
  v87 = a3;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v17 = *(a2 + 32);
  get_key_and_value_at_index(a2, a12, 0, &v111, &v108 + 1, &v110, &v108);
  if (!v110)
  {
    sub_10008F470();
  }

  v98 = a5;
  v100 = a4;
  v99 = (v17 & 0x10) << 25;
  bzero(v112, 0x580uLL);
  v86 = &v86;
  v18 = 112 * *(a2 + 36);
  __chkstk_darwin(v19);
  v20 = &v86 - v18;
  bzero(&v86 - v18, v18);
  v21 = *(a2 + 36);
  v22 = 8 * v21;
  __chkstk_darwin(v23);
  v24 = (&v86 - ((8 * v21 + 15) & 0xFFFFFFFF0));
  bzero(v24, 8 * v21);
  v96 = v21;
  __chkstk_darwin(v25);
  v27 = &v86 - ((v26 + 15) & 0x7FFFFFFF0);
  bzero(v27, v26);
  bzero(&v86 - v18, v18);
  v28 = v110;
  v29 = *v110;
  *(&v86 - v18 + 8) = *v110;
  v30 = *(a12 + 40);
  v97 = &v86 - v18;
  if (v30)
  {
    *(v20 + 1) = *(a12 + 64) + v29;
    memcpy(v20 + 16, v28 + 1, *(a12 + 44));
    v20 = v97;
  }

  v93 = a9;
  v31 = v98;
  *(v20 + 5) = *v98;
  *(v20 + 12) = *(v31 + 2);
  v32 = v100;
  v20[104] = v100 != 0;
  bzero(&v86 - ((v22 + 15) & 0xFFFFFFFF0), v22);
  *v24 = v32;
  LODWORD(v33) = v96;
  v98 = (&v86 - ((v22 + 15) & 0xFFFFFFFF0));
  v94 = v27;
  LODWORD(v95) = a10;
  if (v96 >= 2)
  {
    LODWORD(v100) = 0;
    v34 = v20 + 216;
    v35 = 1;
    while (1)
    {
      get_key_and_value_at_index(a2, a12, v35, &v111, &v108 + 1, &v110, &v108);
      v36 = v110;
      if (!v110)
      {
        sub_10008F444();
      }

      *(v34 - 26) = v35;
      *v34 = 1;
      v37 = *v36;
      *(v34 - 12) = *v36;
      if (*(a12 + 40))
      {
        v37 += *(a12 + 64);
        *(v34 - 12) = v37;
        memcpy(v34 - 88, v36 + 1, *(a12 + 44));
      }

      v38 = lookup_obj(*a1, *(a1 + 8), *(a1 + 40), v37, v101, v99, 3, *(a1 + 48), (v34 - 24));
      v39 = v35 + 1;
      if (v38)
      {
        v40 = v38;
        if (v39 >= *(a2 + 36))
        {
          v41 = v93;
          v109 = v93;
          v107 = a10;
          v42 = a10;
        }

        else
        {
          get_key_and_value_at_index(a2, a12, v35 + 1, &v109, &v107, 0, 0);
          v41 = v109;
          v42 = v107;
        }

        v43 = fsck_tree_node_repair_add_maybe(a1, a12, *(v34 - 12), *(a2 + 16), (*(a2 + 34) - 1), v111, HIWORD(v108), v41, v42, v40);
        if (v43)
        {
          v66 = v43;
          goto LABEL_75;
        }

        *v34 = 0;
        *(v34 - 3) = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v100) = v100 + 1;
      }

      v33 = *(a2 + 36);
      v34 += 112;
      ++v35;
      if (v39 >= v33)
      {
        v27 = v94;
        goto LABEL_18;
      }
    }
  }

  LODWORD(v100) = 0;
LABEL_18:
  v44 = v97;
  qsort(v97 + 112, (v33 - 1), 0x70uLL, sub_10008F274);
  v45 = *(a2 + 36);
  v46 = v95;
  if (!v45)
  {
    goto LABEL_22;
  }

  v47 = 0;
  v48 = v44;
  do
  {
    v49 = *v48;
    v48 += 28;
    *&v27[4 * v49] = v47++;
  }

  while (v45 != v47);
  if (v45 != 1)
  {
    v51 = v44 + 30;
    v52 = v112;
    v53 = 1;
    do
    {
      if (*(v51 + 96) == 1)
      {
        v54 = copy_obj_async(*a1, *(a1 + 8), *(a1 + 40), *v51, v101, v99, 3, *(a1 + 48), v52);
        if (v54)
        {
          v66 = v54;
          v58 = 1;
          LODWORD(v50) = v53;
          goto LABEL_66;
        }

        v45 = *(a2 + 36);
      }

      v50 = v53 + 1;
      if (v53 > 7)
      {
        break;
      }

      v51 += 28;
      v52 += 11;
      ++v53;
    }

    while (v50 < v45);
    v46 = v95;
  }

  else
  {
LABEL_22:
    LODWORD(v50) = 1;
  }

  get_key_and_value_at_index(a2, a12, 0, &v111, &v108 + 1, 0, 0);
  v55 = *(a2 + 36);
  if (v55)
  {
    v56 = 0;
    v57 = a11;
    v90 = v46;
    v91 = a13;
    v58 = 1;
    LODWORD(v96) = HIWORD(v108);
    v95 = v111;
    v59 = v97;
    v92 = a11;
    while (1)
    {
      v60 = *&v94[4 * v56];
      if (*(v98 + v56) || (v59[112 * v60 + 104] & 1) == 0)
      {
        if (v55 <= v56 + 1)
        {
          v61 = v93;
          v109 = v93;
          v62 = v90;
          v107 = v90;
        }

        else
        {
          get_key_and_value_at_index(a2, a12, v56 + 1, &v109, &v107, 0, 0);
          v59 = v97;
          v61 = v109;
          v62 = v107;
        }

        *v57 = *(a2 + 34) - 1;
        v63 = &v59[112 * v60];
        if (v63[104] == 1)
        {
          v64 = v98;
          v65 = *(v98 + v56);
          v105 = *v87;
          v106 = *(v87 + 2);
          v103 = *(v63 + 5);
          v104 = *(v63 + 12);
          BYTE1(v85) = v91;
          LOBYTE(v85) = 0;
          v66 = sub_10008CF58(a1, a2, &v105, v65, &v103, v63 + 8, v101, v88, v89, v95, v96, v61, v62, v57, a12, v85);
          free(v64[v56]);
          v64[v56] = 0;
          if (v66)
          {
            goto LABEL_66;
          }

          v61 = v109;
          v62 = v107;
          v59 = v97;
          v57 = v92;
        }

        v55 = *(a2 + 36);
        LODWORD(v96) = v62;
        v95 = v61;
        ++v56;
      }

      if (v58 < v55)
      {
        v67 = &v59[112 * v58];
        if (v67[104] == 1)
        {
          v68 = *v67;
          v69 = (v58 - 1) & 7;
          if (1 - v58 >= 0)
          {
            v69 = -((1 - v58) & 7);
          }

          v70 = copy_obj_finish(*a1, *(a1 + 8), *(a1 + 40), *(v67 + 1), v101, v99, 3, *(a1 + 48), &v112[11 * v69], v98 + v68, (v67 + 80), v91);
          if (v70)
          {
            v71 = v70;
            *&v105 = 0;
            *&v103 = 0;
            v102 = 0;
            get_key_and_value_at_index(a2, a12, v68, &v105, &v102 + 1, 0, 0);
            v72 = v90;
            v73 = v93;
            if (*(a2 + 36) > (v68 + 1))
            {
              get_key_and_value_at_index(a2, a12, v68 + 1, &v103, &v102, 0, 0);
              v73 = v103;
              v72 = v102;
            }

            v74 = fsck_tree_node_repair_add_maybe(a1, a12, *(v67 + 1), *(a2 + 16), (*(a2 + 34) - 1), v105, HIWORD(v102), v73, v72, v71);
            if (v74)
            {
LABEL_64:
              v66 = v74;
              goto LABEL_66;
            }

            v67[104] = 0;
            LODWORD(v100) = v100 + 1;
          }

          v59 = v97;
          v57 = v92;
        }

        ++v58;
        v55 = *(a2 + 36);
      }

      if (v50 < v55)
      {
        if (v50 - v58 >= v100 + 8)
        {
          sub_10008F418();
        }

        v75 = &v59[112 * v50];
        if (v75[104] == 1)
        {
          v76 = (v50 - 1) & 7;
          if (1 - v50 >= 0)
          {
            v76 = -((1 - v50) & 7);
          }

          v74 = copy_obj_async(*a1, *(a1 + 8), *(a1 + 40), *(v75 + 1), v101, v99, 3, *(a1 + 48), &v112[11 * v76]);
          if (v74)
          {
            goto LABEL_64;
          }

          v55 = *(a2 + 36);
          v59 = v97;
          v57 = v92;
        }

        LODWORD(v50) = v50 + 1;
      }

      if (v56 >= v55)
      {
        v66 = 0;
        goto LABEL_67;
      }
    }
  }

  v66 = 0;
  v58 = 1;
LABEL_66:
  v59 = v97;
LABEL_67:
  if (v58 < v50)
  {
    v77 = v58 - 1;
    v78 = &v59[112 * v58 + 104];
    do
    {
      if (*v78 == 1)
      {
        if (v77 <= 0)
        {
          v79 = -(-v77 & 7);
        }

        else
        {
          v79 = v77 & 7;
        }

        copy_obj_abort(*a1, *(a1 + 8), *(v78 - 12), &v112[11 * v79]);
      }

      ++v77;
      v78 += 112;
    }

    while (v77 - v50 != -1);
  }

LABEL_75:
  v80 = *(a2 + 36);
  v81 = v98;
  if (v80)
  {
    for (i = 0; i < v80; ++i)
    {
      v83 = *(v81 + i);
      if (v83)
      {
        free(v83);
        v80 = *(a2 + 36);
      }
    }
  }

  return v66;
}

uint64_t sub_10008F274(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

double space_verification_init(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 40);
  dword_100103C60 = *(v2 + 36);
  v4 = memory_storage_limit(0x64u, 0x38400000uLL, 0x5A00000uLL);
  if (!tree_init_ext(&overlap_info, 0, 0, 0x8000000, 2, 0, 0, 4096, 32, 16, 0, 0, sub_10008F6D4))
  {
    tree_create(&overlap_info, 0, 64);
  }

  byte_100103C68 = 1;
  if (!tree_init_ext(&phys_ext_backref_tree, 0, 0, 0x8000000, 2, 0, 0, 4096, 24, 16, 0, 0, sub_10008F708))
  {
    tree_create(&phys_ext_backref_tree, 0, 64);
  }

  v5 = &spaceman_free_tree;
  v6 = 3;
  do
  {
    if (!tree_init_ext(v5, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 8, 0, 0, sub_10008F764))
    {
      tree_create(v5, 0, 64);
    }

    v5 += 64;
    --v6;
  }

  while (v6);
  byte_100103C69 = 1;
  bitmap_store_init(&bitmap_store, v3, v4);
  byte_100103C6A = 0;
  byte_100103C6B = 1;
  bitmap_store_init(&unk_1000E9B68, v3, v4);
  bzero(&unk_100103C70, 0x640uLL);
  v7 = 0;
  v8 = *(a1 + 8);
  for (i = 184; i != 984; i += 8)
  {
    v10 = *(v8 + i);
    if (v10)
    {
      v11 = 16 * v7++;
      *(&unk_100103C70 + v11) = v10;
    }
  }

  result = 0.0;
  xmmword_1001042E0 = 0u;
  unk_1001042F0 = 0u;
  xmmword_1001042C0 = 0u;
  unk_1001042D0 = 0u;
  xmmword_1001042B0 = 0u;
  return result;
}

uint64_t sub_10008F708(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  if (*a2 > *a4)
  {
    goto LABEL_2;
  }

  if (*a2 < *a4)
  {
    goto LABEL_4;
  }

  v8 = a2[1];
  v9 = a4[1];
  if (v8 > v9)
  {
LABEL_2:
    v6 = 1;
    goto LABEL_5;
  }

  if (v8 < v9)
  {
LABEL_4:
    v6 = -1;
    goto LABEL_5;
  }

  v10 = a2[2];
  v11 = a4[2];
  v12 = v10 > v11;
  if (v10 >= v11)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v12)
  {
    v6 = 1;
  }

LABEL_5:
  *a6 = v6;
  return 0;
}

uint64_t sub_10008F764(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v6 = a2[1];
  v7 = a4[1];
  if (v6 <= v7)
  {
    if (v6 >= v7)
    {
      if (*a2 <= *a4)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }

      if (*a2 < *a4)
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  *a6 = v8;
  return 0;
}

void space_verification_cleanup()
{
  tree_destroy(&overlap_info, 0);
  tree_destroy(&phys_ext_backref_tree, 0);
  v0 = &bitmap_store;
  v1 = 3;
  do
  {
    bitmap_store_destroy(v0);
    v0 += 104;
    --v1;
  }

  while (v1);
  v2 = &spaceman_free_tree;
  v3 = 3;
  do
  {
    if (v2[7])
    {
      tree_destroy(v2, 0);
    }

    v2 += 8;
    --v3;
  }

  while (v3);
}

uint64_t add_overlapped_extent(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, __int16 a8)
{
  v18 = 0;
  result = tree_key_count(&overlap_info, 0, &v18);
  if (byte_100103C68 == 1 && v18 <= 0x31)
  {
    v17[1] = a2;
    v18 = a3;
    v19 = a4;
    v22 = a5;
    v23 = a6;
    v20 = a7;
    v21 = a8;
    v17[0] = a1;
    return tree_insert(&overlap_info, 0, &v18, 32, v17, 16);
  }

  return result;
}

uint64_t check_object_overlap(unint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, __int16 a8, char a9)
{
  memset(v36, 0, sizeof(v36));
  v28 = 0;
  v29 = 0;
  v30 = a3;
  v31 = a4;
  v34 = a5;
  v35 = a6;
  v32 = a7;
  v33 = a8;
  v26 = 16;
  v27 = 32;
  if (tree_lookup(&overlap_info, 0, 1u, v36, &v27, 0x20u, &v28, &v26))
  {
    return 0;
  }

  v20 = a8;
  while (1)
  {
    if (a2 + a1 <= v28 || v29 + v28 <= a1)
    {
      goto LABEL_10;
    }

    if (sub_10008FA90(v36, &v30))
    {
      break;
    }

    a9 = 0;
LABEL_10:
    v21 = 16;
    v22 = 32;
    if (tree_lookup(&overlap_info, 0, 2u, v36, &v22, 0x20u, &v28, &v21))
    {
      return 0;
    }
  }

  if (a9)
  {
    v25[0] = 0;
    v25[1] = 0;
    v23 = 16;
    v24 = 32;
    if (tree_lookup(&overlap_info, 0, 0, &v30, &v24, 0x20u, v25, &v23))
    {
      add_overlapped_extent(a1, a2, a3, a4, a5, a6, a7, v20);
    }
  }

  return 1;
}

uint64_t sub_10008FA90(uint64_t a1, uint64_t a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 > v4)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v3)
  {
    v14 = *(a1 + 24);
    v15 = *(a2 + 24);
    if (v14 > v15)
    {
      return 1;
    }

    if (v14 < v15)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = *(a1 + 12);
  v8 = *(a2 + 12);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 14);
  v10 = *(a2 + 14);
  v11 = v9 >= v10;
  v12 = v9 == v10;
  if (v9 >= v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (!v12 && v11)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

BOOL has_overlapped_extents()
{
  v1 = 0;
  tree_key_count(&overlap_info, 0, &v1);
  return v1 != 0;
}

uint64_t print_overlapped_extents()
{
  v13 = 0u;
  v14 = 0u;
  v12[0] = 0;
  v12[1] = 0;
  v10 = 16;
  v11 = 32;
  for (result = tree_lookup(&overlap_info, 0, 1u, &v13, &v11, 0x20u, v12, &v10); !result; result = tree_lookup(&overlap_info, 0, 2u, &v13, &v9, 0x20u, v12, &v8))
  {
    fsck_printf_warn("Overlapping object: (oid : 0x%llx) (type : %u) (subtype : %u), (%llu + %llu)\n", v1, v2, v3, v4, v5, v6, v7, v14);
    v8 = 16;
    v9 = 32;
  }

  return result;
}

uint64_t repair_overlapped_extents(uint64_t *a1)
{
  v220 = 0u;
  v221 = 0u;
  v218 = 0;
  v219 = 0;
  v216 = 16;
  v217 = 32;
  v2 = 0;
  if (tree_lookup(&overlap_info, 0, 1u, &v220, &v217, 0x20u, &v218, &v216))
  {
    return v2;
  }

  do
  {
    if (DWORD2(v220) != 0x40000000 || *(&v221 + 1) != 0 || WORD6(v220) != 0 || HIWORD(v220) != 15)
    {
      goto LABEL_50;
    }

    v215 = 0;
    v213 = 0;
    v214 = 0;
    v211[0] = 0;
    v211[1] = 0;
    v212 = 0;
    v209 = 20;
    v210 = 8;
    v207 = 0;
    v208 = 0;
    v205 = 0;
    v206 = 0;
    v203 = 0;
    v204 = 0;
    if (!check_object_overlap(v218, v219, v220, 0x40000000, v221, 0, 0, 15, 0))
    {
      v222 = v220;
      v223 = v221;
      tree_remove(&overlap_info, 0, &v222, 32);
      v15 = 0;
      goto LABEL_42;
    }

    v7 = fsck_global_volume_get_by_fs_oid(a1, v220);
    v15 = v7;
    if (!v7)
    {
      fsck_printf_warn("repair_overlapped_extents: unable to find volume for fs_oid 0x%llx\n", v8, v9, v10, v11, v12, v13, v14, v220);
      v22 = 604;
      v23 = 2;
      goto LABEL_41;
    }

    v16 = *(v7 + 5);
    v17 = *(v16 + 976);
    if (*(v16 + 264))
    {
      if (v17)
      {
LABEL_26:
        fsck_printf_err("repair_overlapped_extents: encryption is rolling for fs_oid 0x%llx\n", v8, v9, v10, v11, v12, v13, v14, v220);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = 16;
        }

        v22 = 605;
        v23 = 16;
        goto LABEL_41;
      }
    }

    else
    {
      if (v17)
      {
        goto LABEL_26;
      }

      if (v7[8] == 1)
      {
        v18 = volume_crypto_open(v7, a1, 2);
        if (v18)
        {
          if (v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v18;
          }

          goto LABEL_42;
        }
      }
    }

    tree_for_jobj = get_tree_for_jobj(a1, v15, 8, &v215, v11, v12, v13, v14);
    if (tree_for_jobj)
    {
      v32 = tree_for_jobj;
      fsck_printf_err("repair_overlapped_extents: unable to init fsroot for fs_oid 0x%llx\n", v25, v26, v27, v28, v29, v30, v31, v220);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v32;
      }

      v22 = 606;
      goto LABEL_40;
    }

    extentref_tree = get_extentref_tree(a1, v15, &v214);
    if (extentref_tree)
    {
      v32 = extentref_tree;
      fsck_printf_err("repair_overlapped_extents: unable to init extentref tree for fs_oid 0x%llx\n", v34, v35, v36, v37, v38, v39, v40, v220);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v32;
      }

      v22 = 607;
LABEL_40:
      v23 = v32;
LABEL_41:
      fsck_fail_func(v22, v23);
      goto LABEL_42;
    }

    v213 = v221 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v51 = tree_lookup(v214, 0, 0, &v213, &v210, v210, v211, &v209);
    if (v51)
    {
      v59 = v51;
      v60 = v221;
      strerror(v51);
      fsck_printf_err("repair_overlapped_extents: unable to load pext 0x%llx for fs_oid 0x%llx: %s\n", v61, v62, v63, v64, v65, v66, v67, v60);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v59;
      }

      v68 = 608;
LABEL_62:
      fsck_fail_func(v68, v59);
      goto LABEL_42;
    }

    v69 = v212;
    fsck_printf_debug("repair_overlapped_extents: allocate space for block_count 0x%llx\n", v52, v53, v54, v55, v56, v57, v58, v219);
    v70 = fsck_allocate_blocks(a1, v15, 3u, v219, &v208);
    if (v70)
    {
      v59 = v70;
      v78 = v219;
      strerror(v70);
      fsck_printf_err("repair_overlapped_extents: unable to allocate space for block_count 0x%llx: %s\n", v79, v80, v81, v82, v83, v84, v85, v78);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v59;
      }

      v68 = 609;
      goto LABEL_62;
    }

    fsck_printf_debug("repair_overlapped_extents: copy paddr 0x%llx to paddr 0x%llx, block_count 0x%llx\n", v71, v72, v73, v74, v75, v76, v77, v218);
    v86 = fsck_blockcopy(a1, v218, v208, v219);
    if (v86)
    {
      v94 = v86;
      v95 = v218;
      strerror(v86);
      fsck_printf_err("repair_overlapped_extents: failed to copy paddr 0x%llx to paddr 0x%llx, block_count 0x%llx: %s\n", v96, v97, v98, v99, v100, v101, v102, v95);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v94;
      }

      goto LABEL_42;
    }

    v213 = v208 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    fsck_printf_debug("repair_overlapped_extents: insert target pext 0x%llx\n", v87, v88, v89, v90, v91, v92, v93, v208);
    v103 = tree_insert(v214, 0, &v213, v210, v211, v209);
    if (v103)
    {
      v59 = v103;
      v104 = v208;
      strerror(v103);
      fsck_printf_err("repair_overlapped_extents: unable to insert target pext 0x%llx for fs_oid 0x%llx: %s\n", v105, v106, v107, v108, v109, v110, v111, v104);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v59;
      }

      v68 = 613;
      goto LABEL_62;
    }

    v205 = v220;
    v206 = v221;
    v207 = 0;
    v201 = 16;
    v202 = 24;
    if (tree_lookup(&phys_ext_backref_tree, 0, 1u, &v205, &v202, 0x18u, &v203, &v201))
    {
      v189 = 0;
LABEL_74:
      v213 = v221 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      fsck_printf_debug("repair_overlapped_extents: remove source pext 0x%llx\n", v112, v113, v114, v115, v116, v117, v118, v221);
      v119 = tree_remove(v214, 0, &v213, v210);
      if (v119)
      {
        v120 = v119;
        v121 = v221;
        strerror(v119);
        fsck_printf_err("repair_overlapped_extents: unable to remove source pext 0x%llx for fs_oid 0x%llx (pext leak): %s\n", v122, v123, v124, v125, v126, v127, v128, v121);
        if (!v2)
        {
          LODWORD(v2) = v120;
        }

        fsck_fail_func(0x269, v120);
      }

      v222 = v220;
      v223 = v221;
      tree_remove(&overlap_info, 0, &v222, 32);
      v129 = sub_100090590(a1, v15, v218, v219);
      if (v2)
      {
        v130 = v2;
      }

      else
      {
        v130 = v129;
      }

      if (v129)
      {
        v2 = v130;
      }

      else
      {
        v2 = v2;
      }

      goto LABEL_84;
    }

    v189 = 0;
    v141 = 0;
    while (1)
    {
      v222 = 0uLL;
      *&v223 = 0;
      v198 = 24;
      v199 = 16;
      if (v205 != v220 || v206 != v221)
      {
        break;
      }

      v193 = v141 + 1;
      v190 = v141;
      v200[0] = v207 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v200[1] = v204;
      fsck_printf_debug("repair_overlapped_extents: load fext 0x%llx 0x%llx\n", v112, v113, v114, v115, v116, v117, v118, v207);
      v142 = tree_lookup(v215, 0, 0, v200, &v199, v199, &v222, &v198);
      if (v142)
      {
        v150 = v142;
        v191 = v207;
        strerror(v142);
        fsck_printf_err("repair_overlapped_extents: unable to load fext 0x%llx 0x%llx for fs_oid 0x%llx: %s\n", v151, v152, v153, v154, v155, v156, v157, v191);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v150;
        }

        v158 = 614;
      }

      else
      {
        *(&v222 + 1) = v208;
        fsck_printf_debug("repair_overlapped_extents: update fext 0x%llx 0x%llx\n", v143, v144, v145, v146, v147, v148, v149, v207);
        v159 = tree_insert(v215, 0, v200, v199, &v222, v198);
        if (!v159)
        {
          v167 = v190;
          ++v189;
          goto LABEL_106;
        }

        v150 = v159;
        v192 = v207;
        strerror(v159);
        fsck_printf_err("repair_overlapped_extents: unable to update fext 0x%llx 0x%llx for fs_oid 0x%llx: %s\n", v160, v161, v162, v163, v164, v165, v166, v192);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v150;
        }

        v158 = 615;
      }

      fsck_fail_func(v158, v150);
      v167 = v193;
LABEL_106:
      v196 = 16;
      v197 = 24;
      v168 = tree_lookup(&phys_ext_backref_tree, 0, 2u, &v205, &v197, 0x18u, &v203, &v196);
      v141 = v167;
      if (v168)
      {
        goto LABEL_116;
      }
    }

    v167 = v141;
LABEL_116:
    if (!v167)
    {
      goto LABEL_74;
    }

    if (v167 != v69)
    {
      v213 = v221 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v212 = v167;
      fsck_printf_debug("repair_overlapped_extents: update source pext 0x%llx\n", v112, v113, v114, v115, v116, v117, v118, v221);
      v179 = tree_insert(v214, 0, &v213, v210, v211, v209);
      if (v179)
      {
        v180 = v179;
        v181 = v221;
        strerror(v179);
        fsck_printf_err("repair_overlapped_extents: unable to update source pext 0x%llx for fs_oid 0x%llx (refcnt leak): %s\n", v182, v183, v184, v185, v186, v187, v188, v181);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v180;
        }

        fsck_fail_func(0x268, v180);
      }
    }

LABEL_84:
    if (v189)
    {
      if (v189 != v69)
      {
        v213 = v208 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
        v212 = v189;
        fsck_printf_debug("repair_overlapped_extents: update target pext 0x%llx\n", v112, v113, v114, v115, v116, v117, v118, v208);
        v131 = tree_insert(v214, 0, &v213, v210, v211, v209);
        if (v131)
        {
          v132 = v131;
          v133 = v208;
          strerror(v131);
          fsck_printf_err("repair_overlapped_extents: unable to target update target pext 0x%llx for fs_oid 0x%llx (refcnt leak): %s\n", v134, v135, v136, v137, v138, v139, v140, v133);
          if (v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v132;
          }

          fsck_fail_func(0x26A, v132);
        }
      }

      v208 = 0;
    }

    else
    {
      v213 = v208 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      fsck_printf_debug("repair_overlapped_extents: remove target pext 0x%llx\n", v112, v113, v114, v115, v116, v117, v118, v208);
      v169 = tree_remove(v214, 0, &v213, v210);
      if (v169)
      {
        v170 = v169;
        v171 = v208;
        strerror(v169);
        fsck_printf_err("repair_overlapped_extents: unable to remove target pext 0x%llx for fs_oid 0x%llx (pext leak): %s\n", v172, v173, v174, v175, v176, v177, v178, v171);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v170;
        }

        fsck_fail_func(0x26B, v170);
      }
    }

    fsck_fail_add_repair();
LABEL_42:
    if (v208)
    {
      fsck_printf_debug("repair_overlapped_extents: free space for target_paddr 0x%llx block_count 0x%llx\n", v19, v20, v21, v11, v12, v13, v14, v208);
      v41 = fsck_free_range(a1, v15, v208, v219);
      if (v41)
      {
        v42 = v41;
        v43 = v208;
        strerror(v41);
        fsck_printf_err("repair_overlapped_extents: unable to free space for target_paddr 0x%llx block_count 0x%llx: %s\n", v44, v45, v46, v47, v48, v49, v50, v43);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v42;
        }

        fsck_fail_func(0x26C, v42);
      }
    }

    if (v15)
    {
      volume_crypto_close(v15);
    }

LABEL_50:
    v194 = 16;
    v195 = 32;
  }

  while (!tree_lookup(&overlap_info, 0, 2u, &v220, &v195, 0x20u, &v218, &v194));
  return v2;
}

uint64_t sub_100090590(uint64_t *a1, int8x16_t *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  memset(v51, 0, sizeof(v51));
  v49 = 0;
  v50 = 0;
  v8 = mark_range(&bitmap_store, a3, a4, 0);
  if (v8)
  {
    v9 = v8;
    strerror(v8);
    fsck_printf_warn("free_overlapped_range: unable to free space for source_paddr 0x%llx block_count 0x%llx (leak): %s\n", v10, v11, v12, v13, v14, v15, v16, v5);
    fsck_fail_func(0x26D, v9);
  }

  v48 = 0;
  v46 = 16;
  v47 = 32;
  if (!tree_lookup(&overlap_info, 0, 1u, v51, &v47, 0x20u, &v49, &v46))
  {
    v17 = v4 + v5;
    do
    {
      if (v17 > v49 && v50 + v49 > v5)
      {
        if (v5 <= v49)
        {
          v19 = v49;
        }

        else
        {
          v19 = v5;
        }

        if (v17 - v19 >= v49 - v19 + v50)
        {
          v20 = v49 - v19 + v50;
        }

        else
        {
          v20 = v17 - v19;
        }

        mark_range_allocated(v19, v20, WORD6(v51[0]), HIWORD(v51[0]), 0);
      }

      v44 = 16;
      v45 = 32;
    }

    while (!tree_lookup(&overlap_info, 0, 2u, v51, &v45, 0x20u, &v49, &v44));
  }

  v21 = 0;
  if (range_ffc(&bitmap_store, v5, v4, &v48))
  {
    do
    {
      v43 = 0;
      v22 = v4 + v5;
      v23 = v4 + v5 - v48;
      if (range_ffs(&bitmap_store, v48, v23, &v43))
      {
        v23 = v43 - v48;
      }

      fsck_printf_debug("free_overlapped_range: free space for source_paddr 0x%llx block_count 0x%llx\n", v24, v25, v26, v27, v28, v29, v30, v48);
      v31 = fsck_free_range(a1, a2, v48, v23);
      if (v31)
      {
        v32 = v31 == 17;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v33 = v31;
        v34 = v48;
        strerror(v31);
        fsck_printf_err("free_overlapped_range: unable to free space for source_paddr 0x%llx block_count 0x%llx (leak): %s\n", v35, v36, v37, v38, v39, v40, v41, v34);
        if (v21)
        {
          v21 = v21;
        }

        else
        {
          v21 = v33;
        }

        fsck_fail_func(0x26E, v33);
      }

      v5 = v48 + v23;
      v4 = v22 - v5;
    }

    while ((range_ffc(&bitmap_store, v5, v22 - v5, &v48) & 1) != 0);
  }

  return v21;
}

uint64_t volume_alloc_count_get(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_1000930C0();
  }

  v2 = &qword_100103C78;
  v3 = 100;
  while (1)
  {
    v4 = *(v2 - 1);
    if (!v4)
    {
      return 2;
    }

    if (v4 == a1)
    {
      break;
    }

    v2 += 2;
    if (!--v3)
    {
      return 2;
    }
  }

  result = 0;
  *a2 = *v2;
  return result;
}

uint64_t mark_range_allocated(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v8 = 208;
  if (!a5)
  {
    v8 = 0;
  }

  result = mark_range(&bitmap_store + v8, a1, a2, 1);
  if (!result)
  {
    if (*(state + 43) == 1)
    {

      return sub_1000908D4(a3, a4, a2, v10, v11, v12, v13, v14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000908D4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 || a2 != 15)
  {
    if (a1 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a2;
    }

    if (a1 > 3)
    {
      v10 = a1;
    }

    if (v10 >= 0x25)
    {
      fsck_printf_warn("Invalid object type/subtype (type : %u) (subtype : %u)\n", a2, a3, a4, a5, a6, a7, a8, a1);
      v9 = 9;
    }

    else
    {
      v9 = dword_1000B3360[v10];
    }
  }

  else
  {
    v9 = 8;
  }

  *(&xmmword_1001042B0 + v9) += a3;
  return 0;
}

uint64_t mark_range_free(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 208;
  if (!a3)
  {
    v3 = 0;
  }

  return mark_range(&bitmap_store + v3, a1, a2, 0);
}

uint64_t mark_object_allocated(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, __int16 a8, unsigned int a9, unsigned int a10)
{
  if (*(state + 44) == 1)
  {

    return check_object_overlap(a2, a3, a4, a5, a6, a7, a8, a9, 1);
  }

  v18 = mark_range_allocated(a2, a3, a8, a9, (a10 >> 3) & 1);
  if (v18)
  {
    if (v18 != 12)
    {
      if (v18 == 17)
      {
        fsck_fail_func(0x451, 17);
        add_overlapped_extent(a2, a3, a4, a5, a6, a7, a8, a9);
        goto LABEL_11;
      }

      strerror(v18);
      fsck_printf_warn("object oid %llu/xid %llu/type 0x%x/subtype 0x%x: unable to mark range %llu+%llu allocated for space verification: %s\n", v26, v27, v28, v29, v30, v31, v32, a6);
    }

    fsck_fail_func(0x437, -7);
    verify_overallocation = 0;
  }

LABEL_11:
  if (a4)
  {
    v33 = &qword_100103C78;
    v34 = 100;
    do
    {
      v35 = *(v33 - 1);
      if (!v35)
      {
        break;
      }

      if (v35 == a4)
      {
        *v33 += a3;
        goto LABEL_19;
      }

      v33 += 2;
      --v34;
    }

    while (v34);
    if ((a10 & 4) == 0)
    {
      fsck_printf_warn("unable to mark allocated blocks for volume oid %llu\n", v19, v20, v21, v22, v23, v24, v25, a4);
    }
  }

LABEL_19:

  return fsck_progress_update(a3, a4 != 0);
}

char *mark_reserved_space_as_allocated(uint64_t a1)
{
  v2 = mark_object_allocated(a1, 0, 1uLL, 0, 0x40000000, 0, 0, 1, &_mh_execute_header, &_mh_execute_header >> 32);
  v59 = a1;
  v60 = 0xC00000000;
  v3 = *(a1 + 8);
  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  if ((v4 & 0x80000000) != 0)
  {
    v6 = extent_list_tree_iterate(a1, v5, sub_100090DEC, &v59);
    if (v6)
    {
      verify_overallocation = 0;
      v14 = *(a1 + 8);
      v51 = *(v14 + 112);
      v55 = *(v14 + 104);
      fsck_printf_warn("object (oid 0x%llx): Unable to mark nx checkpoint desc range (0x%llx + %u) allocated for space verification\n", v7, v8, v9, v10, v11, v12, v13, 0);
      v6 = fsck_fail_func(0x1D1, -7);
    }
  }

  else
  {
    v6 = mark_object_allocated(v2, v5, v4, 0, 0x40000000, v5, 0, 0, 0xCu, 1u);
  }

  v15 = *(a1 + 8);
  v16 = *(v15 + 108);
  v17 = *(v15 + 120);
  if ((v16 & 0x80000000) != 0)
  {
    v18 = extent_list_tree_iterate(a1, v17, sub_100090DEC, &v59);
    if (v18)
    {
      verify_overallocation = 0;
      v26 = *(a1 + 8);
      v52 = *(v26 + 120);
      v56 = *(v26 + 108);
      fsck_printf_warn("object (oid 0x%llx): Unable to mark nx checkpoint data range (0x%llx + %u) allocated for space verification\n", v19, v20, v21, v22, v23, v24, v25, 0);
      v18 = fsck_fail_func(0x1D2, -7);
    }
  }

  else
  {
    v18 = mark_object_allocated(v6, v17, v16, 0, 0x40000000, v17, 0, v60, HIDWORD(v60), 1u);
  }

  v60 = 8;
  v27 = *(a1 + 24);
  v28 = *(v27 + 164);
  v29 = *(v27 + 168);
  if ((v28 & 0x80000000) != 0)
  {
    v30 = extent_list_tree_iterate(a1, v29, sub_100090DEC, &v59);
    if (v30)
    {
      verify_overallocation = 0;
      v38 = *(a1 + 24);
      v53 = *(v38 + 168);
      v57 = *(v38 + 164);
      fsck_printf_warn("object (oid 0x%llx): Unable to mark spaceman ip bitmap range (0x%llx + %u) allocated for space verification\n", v31, v32, v33, v34, v35, v36, v37, 0);
      v30 = fsck_fail_func(0x1D3, -7);
    }
  }

  else
  {
    v30 = mark_object_allocated(v18, v29, v28, 0, 0x40000000, v29, 0, 8, &_mh_execute_header, &_mh_execute_header >> 32);
  }

  v39 = *(a1 + 24);
  v40 = *(v39 + 152);
  v41 = *(v39 + 176);
  if ((v40 & 0x8000000000000000) == 0)
  {
    return mark_object_allocated(v30, v41, v40, 0, 0x40000000, v41, 0, v60, HIDWORD(v60), 1u);
  }

  result = extent_list_tree_iterate(a1, v41, sub_100090DEC, &v59);
  if (result)
  {
    verify_overallocation = 0;
    v50 = *(a1 + 24);
    v54 = *(v50 + 176);
    v58 = *(v50 + 152);
    fsck_printf_warn("object (oid 0x%llx): Unable to mark spaceman ip range (0x%llx + %llu) allocated for space verification\n", v43, v44, v45, v46, v47, v48, v49, 0);
    return fsck_fail_func(0x1D4, -7);
  }

  return result;
}

uint64_t sub_100090DEC(uint64_t a1, int a2, unint64_t *a3, int a4, uint64_t a5)
{
  if (a2 != 8 || a4 != 16)
  {
    sub_1000930EC();
  }

  mark_object_allocated(a1, *a3, a3[1], 0, 0x40000000, *a3, 0, *(a5 + 8), *(a5 + 12), 1u);
  return 0;
}

uint64_t repair_bitmap_maybe(uint64_t a1, int a2, uint64_t a3, uint64_t *__s1, uint64_t *__s2, unint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8, _BYTE *a9, _DWORD *a10)
{
  v13 = __s2;
  v14 = __s1;
  v81 = a3;
  v79 = a2;
  v76 = a10;
  v16 = memcmp(__s1, __s2, (a6 + 7) >> 3);
  if (!v16)
  {
    v61 = 0;
    v26 = 0;
    v62 = 0;
    v32 = 0;
    if (a7)
    {
LABEL_87:
      v63 = v32;
      v64 = a7(a1, v61, v26, 1, a8);
      if (v64)
      {
        *v76 = v64;
      }

      a7(a1, v62, v63, 2, a8);
    }

    return 0;
  }

  v77 = a1;
  v71 = &v66;
  v17 = (a6 + 63) >> 6;
  __chkstk_darwin(v16);
  v18 = (8 * v17 + 15) & 0x3FFFFFFFFFFFFFF0;
  v19 = &v66 - v18;
  bzero(&v66 - v18, 8 * v17);
  __chkstk_darwin(v20);
  v72 = (&v66 - v18);
  bzero(&v66 - v18, 8 * v17);
  if (a6 + 63 >= 0x40)
  {
    v21 = (&v66 - v18);
    v22 = v72;
    do
    {
      v24 = *v14++;
      v23 = v24;
      v25 = *v13++;
      *v21++ = v23 & ~v25;
      *v22++ = v25 & ~v23;
      --v17;
    }

    while (v17);
  }

  *&v85 = 0;
  if (!a6)
  {
    if (verify_overallocation == 1)
    {
      v61 = 0;
      v26 = 0;
    }

    else
    {
      v26 = 0;
      v61 = 0;
    }

    v62 = 0;
    v32 = 0;
    a1 = v77;
LABEL_86:
    if (a7)
    {
      goto LABEL_87;
    }

    return 0;
  }

  v26 = 0;
  v80 = 0;
  do
  {
    v27 = sub_100091510(v81, v19, &v85, a6);
    v29 = v27;
    v30 = v28;
    if (a9 && v28)
    {
      *a9 = 1;
    }

    if (a7)
    {
      if (v26)
      {
        if (v26 + v80 == v27)
        {
          v26 += v28;
          continue;
        }

        v31 = (a7)(v77);
        if (v31)
        {
          *v76 = v31;
        }
      }

      v80 = v29;
      v26 = v30;
    }
  }

  while (v85 < a6);
  if ((verify_overallocation & 1) == 0)
  {
    v62 = 0;
    v32 = 0;
    a1 = v77;
    v61 = v80;
    goto LABEL_86;
  }

  v32 = 0;
  v78 = 0;
  v82 = 0;
  v70 = xmmword_1000B33F8;
  v69 = 8;
  a1 = v77;
  v66 = a8;
  while (1)
  {
    v73 = v32;
    v33 = sub_100091510(v81, v72, &v82, a6);
    v35 = v34;
    v85 = v70;
    v86 = v69;
    v36 = malloc_type_calloc(8uLL, 0x18uLL, 0x100004057661CB1uLL);
    *&v85 = v36;
    if (!v36)
    {
      return 12;
    }

    *v36 = v33;
    v36[1] = v35;
    v37 = v79;
    *(v36 + 16) = v79;
    HIDWORD(v85) = 1;
    if ((v37 & 1) == 0)
    {
      v52 = *(a1 + 24);
      v53 = *(v52 + 152);
      if ((v53 & 0x8000000000000000) != 0)
      {
        v54 = extent_list_tree_iterate(a1, *(v52 + 176), sub_100092A1C, &v85);
      }

      else
      {
        v87 = *(v52 + 176);
        v88 = v53;
        v54 = sub_100092A1C(v36, 8, &v87, 16, &v85);
      }

      v46 = v54;
      v32 = v73;
      if (v54)
      {
        v39 = 0;
        v74 = 1;
        goto LABEL_54;
      }

      if (SHIDWORD(v85) < 1)
      {
        v39 = 0;
        v46 = 0;
        v74 = 1;
        v32 = v73;
        goto LABEL_54;
      }
    }

    v68 = v33;
    v67 = v35;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v74 = 1;
LABEL_23:
    v75 = v40;
    v41 = v85 + 24 * v38;
    v42 = *v41;
    v43 = *(v41 + 8);
    v87 = 0;
    v88 = v42;
    v84 = 0;
    v44 = *(v41 + 16);
    v45 = sub_100092AE4(v44 ^ 1u, &v87, &v84, 0xFFFFFFFE);
    if (v45 == 2)
    {
      v45 = sub_100092AE4(v44 ^ 1u, &v87, &v84, 1u);
      if (v45 == 2)
      {
        goto LABEL_32;
      }
    }

    v46 = v45;
    if (v45)
    {
      goto LABEL_43;
    }

    v47 = v43 + v42;
    v48 = v88;
    if (v88 >= v47)
    {
      goto LABEL_32;
    }

    v49 = 0;
    while (1)
    {
      DWORD2(v85) = v38;
      BYTE5(v86) = v79;
      v83 = 0;
      v50 = split_range_maybe(*(v85 + 24 * v38), *(v85 + 24 * v38 + 8), v48, v84, &v83, sub_100092B84, &v85);
      if (v50)
      {
        return v50;
      }

      v49 |= v83;
      v51 = sub_100092AE4(v44 ^ 1u, &v87, &v84, 2u);
      if (v51)
      {
        break;
      }

      v48 = v88;
      if (v88 >= v47)
      {
        if ((v49 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_38:
        v40 = v75;
LABEL_39:
        if (++v38 >= SHIDWORD(v85))
        {
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    v46 = v51;
    if (v51 == 2)
    {
      if (v49)
      {
        goto LABEL_38;
      }

LABEL_32:
      v40 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
      if (v40)
      {
        *v40 = *(v85 + 24 * v38);
        v40[2] = 0;
        v74 = 0;
        if (v39)
        {
          v75[2] = v40;
        }

        else
        {
          v39 = v40;
        }

        goto LABEL_39;
      }

      v74 = 0;
LABEL_52:
      v46 = 0;
      a8 = v66;
      a1 = v77;
      v32 = v73;
      v35 = v67;
LABEL_53:
      v33 = v68;
    }

    else
    {
LABEL_43:
      a1 = v77;
      v32 = v73;
      v35 = v67;
      v33 = v68;
      a8 = v66;
      if (v39)
      {
        do
        {
          v55 = *(v39 + 2);
          free(v39);
          v39 = v55;
        }

        while (v55);
        v32 = v73;
        goto LABEL_53;
      }
    }

LABEL_54:
    if (v85)
    {
      free(v85);
      v32 = v73;
    }

    if (v46)
    {
      return v46;
    }

    if ((v74 & 1) == 0)
    {
      *&v85 = v33;
      *(&v85 + 1) = v35;
      v86 = 0;
      if (!v39)
      {
        v39 = &v85;
      }

      while (1)
      {
        v56 = *(v39 + 2);
        if (a9 && *(v39 + 1))
        {
          *a9 = 1;
        }

        if (!a7)
        {
          goto LABEL_72;
        }

        v58 = *v39;
        v57 = *(v39 + 1);
        if (!v32)
        {
          goto LABEL_71;
        }

        if (v32 + v78 != v58)
        {
          break;
        }

        v32 += v57;
LABEL_72:
        if (v39 != &v85)
        {
          v59 = v39;
          v60 = v32;
          free(v59);
          v32 = v60;
        }

        v39 = v56;
        if (!v56)
        {
          goto LABEL_75;
        }
      }

      (a7)(a1);
LABEL_71:
      v78 = v58;
      v32 = v57;
      goto LABEL_72;
    }

    if ((v79 & 1) == 0 && byte_100103C6B == 1)
    {
      *(&xmmword_1001042B0 + 1) += v35;
    }

LABEL_75:
    if (v82 >= a6)
    {
      v61 = v80;
      v62 = v78;
      goto LABEL_86;
    }
  }
}

uint64_t sub_100091510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v14 = 0;
  v15 = v8;
  if (bitmap_range_find_first(1, a2, v8, a4 - v8, &v15))
  {
    v9 = v15;
  }

  else
  {
    v15 = a4;
    v9 = a4;
  }

  first = bitmap_range_find_first(0, a2, v9, a4 - v9, &v14);
  v11 = v14;
  v12 = v15;
  if (!first)
  {
    v11 = a4;
  }

  *a3 = v11;
  return v12 + a1;
}

uint64_t repair_ip_bitmap_maybe(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, _DWORD *a7)
{
  result = get_bitmap_for_range(&unk_1000E9B68, a2 & 0xFFFFFFFFFFFFFFC0, (a2 + a3 - (a2 & 0xFFFFFFFFFFFFFFC0) + 63) & 0xFFFFFFFFFFFFFFC0, a4);
  if (!result)
  {
    bitmap_shift_down(a4, (8 * dword_100103C60 + 128) >> 6, a2 & 0x3F);
    return repair_bitmap_maybe(a1, 1, a2, a4, a5, a3, sub_100091674, a6, 0, a7);
  }

  return result;
}

uint64_t sub_100091674(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = a4;
  v14 = *a5;
  if (a4 == 1)
  {
    v15 = "underallocation";
  }

  else
  {
    v15 = "overallocation";
  }

  if (a4 == 1)
  {
    fsck_printf_err("underallocation detected in internal pool: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, a2);
    fsck_fail_func(0x4F4, 92);
  }

  else
  {
    fsck_printf_warn("overallocation detected in internal pool: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, a2);
    v8 = 92;
    fsck_fail_func(0x4F5, 92);
    if (*(state + 45) != 1)
    {
      return v8;
    }
  }

  v53 = *a5;
  if (!fsckAskPrompt(fsck_apfs_ctx, "Fix %s (0x%llx+%llu) bitmap address (0x%llx)? ", v16, v17, v18, v19, v20, v21, v15))
  {
    return 92;
  }

  v22 = malloc_type_calloc(1uLL, *(a1[1] + 36), 0x4921D8E2uLL);
  if (v22)
  {
    v30 = v22;
    v31 = *a5;
    v32 = dev_read(*a1);
    if (v32)
    {
      v8 = v32;
      fsck_printf_err("Failed to fix %s\n", v33, v34, v35, v36, v37, v38, v39, v15);
      v40 = 1271;
    }

    else
    {
      v41 = a5[2] + a2;
      v42 = v41 - a5[1];
      if (v11 == 1)
      {
        bitmap_set_range(v30, v42, a3, v41);
      }

      else
      {
        bitmap_clear_range(v30, v42, a3);
      }

      v43 = *a5;
      v8 = dev_write(*a1);
      if (!v8)
      {
        free(v30);
        fsck_fail_add_repair();
        return v8;
      }

      fsck_printf_err("Failed to fix %s\n", v44, v45, v46, v47, v48, v49, v50, v15);
      v40 = 1272;
    }

    fsck_fail_func(v40, v8);
    free(v30);
  }

  else
  {
    fsck_printf_warn("failed to allocate memory for the bitmap block\n", v23, v24, v25, v26, v27, v28, v29, v52);
    v8 = 12;
    fsck_fail_func(0x4F6, 12);
  }

  return v8;
}

uint64_t verify_ip_bitmap(uint64_t *a1)
{
  v65 = 0;
  v2 = a1[3];
  v3 = *(v2 + 328);
  v4 = dword_100103C60;
  LODWORD(v5) = *(v2 + 160);
  v64 = 0;
  v6 = malloc_type_calloc(1uLL, dword_100103C60, 0x32792C78uLL);
  v7 = malloc_type_calloc(1uLL, dword_100103C60 + 16, 0x100004000313F17uLL);
  if (v6)
  {
    v15 = v7 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    fsck_printf_warn("failed to allocate memory for the bitmap block\n", v8, v9, v10, v11, v12, v13, v14, v54);
    v5 = 12;
    v16 = 1273;
    v17 = 12;
    goto LABEL_7;
  }

  v18 = v7;
  if (!v5)
  {
    goto LABEL_49;
  }

  v19 = 0;
  v57 = v2 + v3;
  v55 = v5;
  v56 = 8 * v4;
  v58 = (8 * v4) >> 6;
  while (1)
  {
    v20 = *(v57 + 2 * v19);
    v21 = a1[3];
    v22 = *(v21 + 164);
    if ((v22 & 0x7FFFFFFFu) <= v20)
    {
      LODWORD(v5) = 22;
LABEL_48:
      fsck_printf_err("error (%d) looking up spaceman IP bitmap block at index %u\n", v8, v20, v10, v11, v12, v13, v14, v5);
      fsck_fail_func(0x4FA, v5);
LABEL_49:
      free(v6);
      free(v18);
      if (v65)
      {
        return v65;
      }

      else
      {
        return v5;
      }
    }

    v23 = *(v21 + 168);
    if ((v22 & 0x80000000) == 0)
    {
      v64 = v23 + v20;
      goto LABEL_14;
    }

    v24 = nx_metadata_fragmented_block_address_lookup(a1, v23, v20, &v64, 0);
    if (v24)
    {
      LODWORD(v5) = v24;
      goto LABEL_48;
    }

LABEL_14:
    v25 = dev_read(*a1);
    if (v25)
    {
      LODWORD(v5) = v25;
      fsck_printf_err("error (%d) reading spaceman IP bitmap block at index %u, addr 0x%llx\n", v26, v27, v28, v29, v30, v31, v32, v25);
      fsck_fail_func(0x4FB, v5);
      goto LABEL_49;
    }

    bzero(v18, *(a1[1] + 36));
    if (v19 == *(v2 + 160) - 1)
    {
      v34 = *(v2 + 152);
      v35 = (v34 & 0x7FFFFFFFFFFFFFFFuLL) % (8 * *(v2 + 32));
    }

    else
    {
      v35 = (8 * *(v2 + 32));
      v34 = *(v2 + 152);
    }

    v62 = 0;
    v63 = 0;
    v59 = v64;
    v60 = 0;
    v61 = 0;
    if (v34 < 0)
    {
      break;
    }

    v36 = v19 * v56;
    v37 = a1[3];
    v38 = *(v37 + 152);
    if ((v38 & 0x7FFFFFFFFFFFFFFFuLL) <= v36)
    {
      v52 = 22;
LABEL_54:
      fsck_printf_err("error (%d) looking up spaceman IP block address at index %u\n", v8, v33, v10, v11, v12, v13, v14, v52);
      fsck_fail_func(0x500, v52);
      return v52;
    }

    v39 = *(v37 + 176);
    if (v38 < 0)
    {
      v51 = nx_metadata_fragmented_block_address_lookup(a1, v39, v19 * v56, &v63, &v62);
      if (v51)
      {
        v52 = v51;
        goto LABEL_54;
      }

      v40 = v63;
    }

    else
    {
      v40 = v39 + v36;
      v63 = v40;
    }

    v60 = v40;
    v50 = repair_ip_bitmap_maybe(a1, v40, v35, v18, v6, &v59, &v65);
    if (v50)
    {
LABEL_40:
      LODWORD(v5) = v50;
      goto LABEL_49;
    }

LABEL_38:
    if (++v19 == v55)
    {
      LODWORD(v5) = 0;
      goto LABEL_49;
    }
  }

  if (!v35)
  {
    goto LABEL_38;
  }

  v41 = 0;
  v42 = 0;
  v43 = v19 * v56;
  while (2)
  {
    v44 = a1[3];
    v45 = *(v44 + 152);
    if ((v45 & 0x7FFFFFFFFFFFFFFFuLL) <= v42 + v43)
    {
      v5 = 22;
      goto LABEL_45;
    }

    v46 = *(v44 + 176);
    if ((v45 & 0x8000000000000000) == 0)
    {
      v47 = v46 + v42 + v43;
      v63 = v47;
LABEL_29:
      if (v41 >= v35 - v42)
      {
        v49 = v35 - v42;
      }

      else
      {
        v49 = v41;
      }

      v61 = v42;
      v62 = v49;
      v60 = v47;
      v50 = repair_ip_bitmap_maybe(a1, v47, v49, v18, v6, &v59, &v65);
      if (v50)
      {
        goto LABEL_40;
      }

      bitmap_shift_down(v6, v58, v62);
      v41 = v62;
      v42 += v62;
      if (v42 >= v35)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v48 = nx_metadata_fragmented_block_address_lookup(a1, v46, v42 + v43, &v63, &v62);
  if (!v48)
  {
    v41 = v62;
    v47 = v63;
    goto LABEL_29;
  }

  v5 = v48;
LABEL_45:
  fsck_printf_err("error (%d) looking up spaceman IP block address at index %llu\n", v8, v33, v10, v11, v12, v13, v14, v5);
  v16 = 1276;
  v17 = v5;
LABEL_7:
  fsck_fail_func(v16, v17);
  return v5;
}

uint64_t verify_bitmap(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void *a4, int a5)
{
  v5 = a1[3];
  v107 = 0;
  v106 = 0;
  v104 = 0;
  v6 = *(v5 + 36);
  if ((v6 & 0x3F) != 0)
  {
    sub_100093118();
  }

  v12 = *(v5 + 48);
  v103 = 0u;
  memset(v102, 0, sizeof(v102));
  if (byte_1000E9AE8 == 1)
  {
    verify_overallocation = 0;
  }

  if (!a3 && !a5)
  {
    return 0;
  }

  v14 = sub_1000921C8(a1);
  if (v14)
  {
    v13 = v14;
    v15 = strerror(v14);
    fsck_printf_err("error (%s) failed to populate free queue trees \n", v16, v17, v18, v19, v20, v21, v22, v15);
    fsck_fail_func(0x4FE, v13);
    return v13;
  }

  v23 = malloc_type_malloc(*(a1[1] + 36), 0xA326E274uLL);
  v24 = malloc_type_malloc(*(a1[1] + 36), 0xCE3BE2C4uLL);
  v105 = v24;
  v100 = v23;
  if (!v23 || !v24)
  {
    fsck_printf_warn("Space Verification: failed to allocate memory for the bitmap block\n", v25, v26, v27, v28, v29, v30, v31, v94);
    v71 = 12;
    fsck_fail_func(0x1D9, 12);
    v36 = v23;
    goto LABEL_60;
  }

  if (a2)
  {
    *a2 = 0;
  }

  v95 = a5;
  if (v12)
  {
    v96 = a2;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = v101;
    if (a4)
    {
      v35 = a4;
    }

    v97 = v35;
    v98 = v12;
    v36 = v100;
    while (1)
    {
      if (!v32 || BYTE8(v103) == 1)
      {
        cib_for_chunk = get_cib_for_chunk(a1, v34 / *(v5 + 36), &v105);
        if (cib_for_chunk)
        {
          v71 = cib_for_chunk;
          v75 = strerror(cib_for_chunk);
          fsck_printf_err("error (%s) failed to get cib for chunk index %llu \n", v76, v77, v78, v79, v80, v81, v82, v75);
          goto LABEL_60;
        }

        bitmap_for_range = fsck_disk_bitmap_iter_init(v102, a1, v105, &v106, &v104);
        v12 = v98;
        if (bitmap_for_range)
        {
          goto LABEL_48;
        }
      }

      if (v34 != v105[4 * v104 + 6])
      {
        sub_100093144();
      }

      bzero(v36, *(a1[1] + 36));
      if (v12 + v32 >= v6)
      {
        v39 = v6;
      }

      else
      {
        v39 = v12 + v32;
      }

      bitmap_for_range = get_bitmap_for_range(&bitmap_store, v34, (v39 + 63) & 0x1FFFFFFC0, v36);
      if (bitmap_for_range || (v101[0] = v106, v101[1] = v104, v101[2] = v105, (bitmap_for_range = repair_bitmap_maybe(a1, 0, v34, v36, v106, v39, a3, v97, &byte_100103C6A, &v107)) != 0))
      {
LABEL_48:
        v71 = bitmap_for_range;
        goto LABEL_60;
      }

      v40 = bitmap_count_bits(v106, 0, 0, v39);
      v47 = v40;
      if (v96)
      {
        *v96 += v39 - v40;
      }

      v48 = a1[1];
      v49 = *(v48 + 1248);
      if (v49)
      {
        v108[0] = 0;
        v50 = calc_overlap_range(v34, v39, *(v48 + 1240), v49, v108);
        v51 = v47;
        if (v50)
        {
          v51 = v47 - bitmap_count_bits(v106, 0, v32 + v108[0], v32 + v108[0] + v50);
        }

        v99 = v51;
      }

      else
      {
        v99 = v40;
      }

      v52 = v105;
      v53 = &v105[4 * v104];
      v55 = *(v53 + 15);
      v54 = v53 + 60;
      v56 = v55 & 0xFFFFF;
      v57 = v47 & 0xFFFFF;
      if (v57 != v56)
      {
        byte_100103C6A = 1;
        if (v95)
        {
          fsck_printf_err("cib: ci_free_count (%u) is not valid (%llu) (ci_addr 0x%llx)\n", v41, v42, v49, v43, v44, v45, v46, v56);
          if (!fsckAskPrompt(fsck_apfs_ctx, "Fix ci_free_count (%u)? ", v58, v59, v60, v61, v62, v63, *v54))
          {
            v68 = 92;
            v69 = 676;
            v70 = 92;
            goto LABEL_40;
          }

          *v54 = v57 | (*v54 >> 20);
          v66 = *(a1[1] + 36);
          v108[0] = v52[1];
          v108[1] = v66;
          v108[2] = 0;
          v67 = write_obj(a1, 0, v52, v108, v64, v65);
          if (v67)
          {
            v68 = v67;
            v69 = 675;
            v70 = v68;
LABEL_40:
            fsck_fail_func(v69, v70);
            v107 = v68;
            goto LABEL_42;
          }

          fsck_fail_add_repair();
        }
      }

LABEL_42:
      v36 = v100;
      if (v106)
      {
        free(v106);
        v106 = 0;
      }

      bitmap_for_range = fsck_disk_bitmap_iter_next(v102, &v106, &v104);
      v12 = v98;
      if (bitmap_for_range)
      {
        goto LABEL_48;
      }

      v33 += v99;
      v34 += v6;
      v32 -= v6;
      if (v34 >= v98)
      {
        goto LABEL_50;
      }
    }
  }

  v33 = 0;
  v36 = v23;
LABEL_50:
  if (*(v5 + 72) == v33)
  {
    v71 = 0;
    v72 = v95;
  }

  else
  {
    byte_100103C6A = 1;
    v72 = v95;
    if (!v95)
    {
      v71 = 0;
      goto LABEL_60;
    }

    v73 = sub_1000924F4(a1, v33, v26, v27, v28, v29, v30, v31);
    v71 = v73;
    if (v73)
    {
      v107 = v73;
    }
  }

  v74 = *(v5 + 240);
  if (v74 > *(v5 + 48) - v33)
  {
    byte_100103C6A = 1;
    if (v72)
    {
      fsck_printf_err("sm : free queue tree has sfq_count (%llu) greater than available block count (%llu)\n", v25, v26, v27, v28, v29, v30, v31, v74);
      fsck_fail_func(0x307, 92);
      v107 = 92;
    }
  }

LABEL_60:
  if (v107)
  {
    v83 = 1;
  }

  else
  {
    v83 = v71 == 0;
  }

  if (v83)
  {
    LODWORD(v13) = v107;
  }

  else
  {
    LODWORD(v13) = v71;
  }

  v84 = fsck_disk_bitmap_iter_finish(v102);
  v85 = v84;
  if (v84)
  {
    strerror(v84);
    fsck_printf_err("failed to finish pending reads from the bitmap iterator: %d (%s)", v86, v87, v88, v89, v90, v91, v92, v85);
    fsck_fail_func(0x5E4, v85);
  }

  if (v106)
  {
    free(v106);
    v106 = 0;
  }

  if (v36)
  {
    free(v36);
  }

  if (v105)
  {
    free(v105);
  }

  byte_100103C6B = 0;
  if (v13)
  {
    return v13;
  }

  else
  {
    return v85;
  }
}

uint64_t sub_1000921C8(uint64_t *a1)
{
  if (byte_100103C69 != 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 49;
  v4 = 208;
  for (i = &spaceman_free_tree; ; i += 64)
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v48 = v2 == 0;
    spaceman_fq_tree = get_spaceman_fq_tree(a1, v2, &v50);
    if (spaceman_fq_tree)
    {
      return spaceman_fq_tree;
    }

    if (*(v50 + 56))
    {
      v7 = path_iterator_init(v49, v50, 0, 0, 0);
      if (v7 || (v7 = fsck_iterate(v49, sub_100092C88, &v48, 0), v7))
      {
        v13 = v7;
        v14 = strerror(v7);
        fsck_printf_err("failed to iterate the spaceman free queue tree: %s\n", v15, v16, v17, v18, v19, v20, v21, v14);
        fsck_fail_func(0x314, v13);
        return v13;
      }

      if ((v48 & 2) != 0)
      {
        break;
      }
    }

LABEL_17:
    ++v2;
    v4 += 40;
    if (v2 == 3)
    {
      v13 = 0;
      byte_100103C69 = 0;
      return v13;
    }
  }

  v8 = v50;
  memset(v55, 0, sizeof(v55));
  memset(v54, 0, sizeof(v54));
  memset(v53, 0, sizeof(v53));
  memset(v52, 0, sizeof(v52));
  if (*(a1[3] + v4) != *(v50 + 56))
  {
    sub_100093170();
  }

  if (!tree_init_ext(v55, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 8, 0, 0, sub_10008F764))
  {
    tree_create(v55, 0, 64);
  }

  v9 = path_iterator_init(v54, v8, 0, 0, 0);
  if (v9 || (v9 = fsck_iterate(v54, sub_100092ED0, v55, 0), v9))
  {
    v13 = v9;
    v22 = strerror(v9);
    fsck_printf_err("error copying on-disk free queue tree into reordered tree in memory: %s\n", v23, v24, v25, v26, v27, v28, v29, v22);
    v30 = 923;
    goto LABEL_28;
  }

  v51[0] = v3;
  v51[1] = v2;
  v10 = path_iterator_init(v53, v55, 0, 0, 0);
  if (v10)
  {
    v13 = v10;
LABEL_26:
    v31 = strerror(v13);
    fsck_printf_err("unable to init iterators for free queue tree repair: %s\n", v32, v33, v34, v35, v36, v37, v38, v31);
    v30 = 924;
    goto LABEL_28;
  }

  v11 = path_iterator_init(v52, i, 0, 0, 0);
  if (v11)
  {
    v13 = v11;
    if (v53[0])
    {
      v53[0](v53);
    }

    goto LABEL_26;
  }

  v12 = fsck_iterate_compare(v53, v52, sub_100092F3C, v51);
  if (!v12)
  {
    tree_destroy(v55, 0);
    goto LABEL_17;
  }

  v13 = v12;
  v39 = strerror(v12);
  fsck_printf_err("error iterating trees during free queue tree repair: %s\n", v40, v41, v42, v43, v44, v45, v46, v39);
  v30 = 925;
LABEL_28:
  fsck_fail_func(v30, v13);
  tree_destroy(v55, 0);
  return v13;
}

uint64_t sub_1000924F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  fsck_printf_err("sm: sm_free_count (%llu) is not valid (%llu) (sm_dev %d)\n", a2, a3, a4, a5, a6, a7, a8, *(*(a1 + 24) + 72));
  if (fsckAskPrompt(fsck_apfs_ctx, "Fix sm_free_count (%llu)? ", v10, v11, v12, v13, v14, v15, *(*(a1 + 24) + 72)))
  {
    v17 = *(a1 + 24);
    *(v17 + 72) = a2;
    v22 = *(a1 + 88);
    v23 = *(a1 + 104);
    v18 = write_obj(a1, 0, v17, &v22, v22, v16);
    if (!v18)
    {
      fsck_fail_add_repair();
      return v18;
    }

    v19 = 677;
    v20 = v18;
  }

  else
  {
    v18 = 92;
    v19 = 678;
    v20 = 92;
  }

  fsck_fail_func(v19, v20);
  return v18;
}

uint64_t fsck_verify_space(uint64_t *a1)
{
  v56 = 0;
  v2 = sub_1000921C8(a1);
  if (v2)
  {
    v3 = v2;
    v4 = strerror(v2);
    fsck_printf_err("error (%s) failed to populate free queue trees \n", v5, v6, v7, v8, v9, v10, v11, v4);
    fsck_fail_func(0x4FF, v3);
  }

  else
  {
    LODWORD(v3) = verify_ip_bitmap(a1);
    if ((byte_100103C6B & 1) != 0 || (byte_100103C6A & 1) != 0 || (v19 = state, *(state + 44) == 1))
    {
      v20 = verify_bitmap(a1, &v56, sub_100092770, 0, 1);
      v19 = state;
    }

    else
    {
      v20 = 0;
    }

    if (*(v19 + 43) == 1)
    {
      v21 = v56;
      fsck_printf("\nSpace allocation summary:\n\n", v12, v13, v14, v15, v16, v17, v18, v54);
      fsck_printf("%-20s%-15s\n", v22, v23, v24, v25, v26, v27, v28, "category");
      fsck_printf("%-20s%-15s\n", v29, v30, v31, v32, v33, v34, v35, "--------");
      v43 = 0;
      v44 = 0;
      do
      {
        v45 = *(&xmmword_1001042B0 + v43 * 8);
        if (v45)
        {
          v44 += v45;
          v55 = *(&xmmword_1001042B0 + v43 * 8);
          fsck_printf("%-20s%-15llu\n", v36, v37, v38, v39, v40, v41, v42, off_1000E53A0[v43]);
        }

        ++v43;
      }

      while (v43 != 10);
      fsck_printf("\nTotal blocks marked by fsck: %llu\n", v36, v37, v38, v39, v40, v41, v42, v44);
      fsck_printf("Total blocks allocated by spaceman: %llu\n\n", v46, v47, v48, v49, v50, v51, v52, v21);
    }

    if (v3)
    {
      return v3;
    }

    else
    {
      return v20;
    }
  }

  return v3;
}

uint64_t sub_100092770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v14 = *(*(a5 + 16) + 32 * *(a5 + 8) + 64);
  if (a4 == 1)
  {
    v15 = "underallocation";
  }

  else
  {
    v15 = "overallocation";
  }

  if (a4 == 1)
  {
    v31 = *(*(a5 + 16) + 32 * *(a5 + 8) + 64);
    fsck_printf_err("underallocation detected on %s device: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, "Main");
    fsck_fail_func(0x1DA, 92);
  }

  else
  {
    v32 = *(*(a5 + 16) + 32 * *(a5 + 8) + 64);
    fsck_printf_warn("overallocation detected on %s device: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, "Main");
    fsck_fail_func(0x1DB, 92);
    if ((*(state + 45) & 1) == 0)
    {
      if (a2 != 1)
      {
        return 92;
      }

      v29 = a1[1];
      if (*(v29 + 36) != 4096 || !(*(v29 + 40) >> 29))
      {
        return 92;
      }
    }
  }

  if (!fsckAskPrompt(fsck_apfs_ctx, "Fix %s (0x%llx+%llu) bitmap address (0x%llx)? ", v16, v17, v18, v19, v20, v21, v15))
  {
    return 92;
  }

  v8 = modify_spaceman_bitmap(a1, 0, a2, a3, v14, *a5, *(a5 + 16), a4, 0, 0);
  if (v8)
  {
    fsck_printf_err("Failed to fix %s\n", v22, v23, v24, v25, v26, v27, v28, v15);
    fsck_fail_func(0x316, v8);
  }

  else
  {
    fsck_fail_add_repair();
  }

  return v8;
}

uint64_t iterate_free_blocks_in_range(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t), uint64_t a5)
{
  if (bitmap_store_inited(&bitmap_store))
  {
    v16 = a3 + a2;
    v21 = 0;
    v22 = 0;
    while (v16 > a2 && range_ffc(&bitmap_store, a2, v16 - a2, &v22))
    {
      if (range_ffs(&bitmap_store, v22, v16 - v22, &v21))
      {
        v17 = v21;
      }

      else
      {
        v21 = v16;
        v17 = v16;
      }

      v18 = a4(v22, v17 - v22, a5);
      a2 = v21;
      if (v18)
      {
        return v18;
      }
    }

    return 0;
  }

  else
  {
    fsck_printf_err("unexpected: space verification data structure not initialized", v9, v10, v11, v12, v13, v14, v15, v21);
    v19 = 22;
    fsck_fail_func(0x434, 22);
  }

  return v19;
}

uint64_t sub_100092A1C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a2 != 8 || a4 != 16)
  {
    sub_10009319C();
  }

  *(a5 + 8) = 0;
  *(a5 + 21) = 1;
  v10 = 0;
  if (*(a5 + 12) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *a5 + 24 * v7;
      if ((*(v8 + 16) & 1) == 0)
      {
        result = split_range_maybe(*v8, *(v8 + 8), *a3, *(a3 + 8), &v10, sub_100092B84, a5);
        if (result)
        {
          return result;
        }

        v7 = *(a5 + 8);
        if ((v10 & 1) == 0)
        {
          *(a5 + 8) = ++v7;
        }
      }
    }

    while (v7 < *(a5 + 12));
  }

  return 0;
}

uint64_t sub_100092AE4(unsigned int a1, void *a2, void *a3, unsigned int a4)
{
  v17 = 16;
  v16 = 8;
  v5 = tree_lookup(&spaceman_free_tree + 64 * a1, 0, a4, a2, &v17, 0x10u, a3, &v16);
  v6 = v5;
  if ((v5 & 0xFFFFFFFD) != 0)
  {
    v7 = a2[1];
    strerror(v5);
    fsck_printf_err("Space Verification: failed to lookup paddr (%llu) : error %s\n", v8, v9, v10, v11, v12, v13, v14, v7);
    fsck_fail_func(0x364, v6);
  }

  return v6;
}

uint64_t sub_100092B84(uint64_t a1, uint64_t a2, int a3, char **a4)
{
  v7 = *(a4 + 2);
  v8 = v7;
  if (a3)
  {
    v9 = *a4;
    *(a4 + 20) = (*a4)[24 * v7 + 16];
    v10 = 21;
LABEL_7:
    result = 0;
    v14 = &v9[24 * v8];
    *v14 = a1;
    *(v14 + 1) = a2;
    v14[16] = *(a4 + v10);
    *(a4 + 2) = v7 + 1;
    return result;
  }

  v11 = *(a4 + 3);
  v12 = *a4;
  if (v11 != *(a4 + 4))
  {
LABEL_6:
    memmove(&v12[24 * v7 + 24], &v12[24 * v7], 24 * (v11 - v7));
    v7 = *(a4 + 2);
    ++*(a4 + 3);
    v9 = *a4;
    v10 = 20;
    goto LABEL_7;
  }

  *(a4 + 4) = 2 * v11;
  v12 = malloc_type_realloc(v12, 48 * v11, 0x100004057661CB1uLL);
  if (v12)
  {
    *a4 = v12;
    v11 = *(a4 + 3);
    goto LABEL_6;
  }

  free(*a4);
  *a4 = 0;
  return 12;
}

uint64_t sub_100092C88(__int128 *a1, int a2, uint64_t *a3, int a4, _DWORD *a5)
{
  v5 = 22;
  if (a2 == 16 && (a4 & 0xFFFFFFF7) == 0)
  {
    v7 = *a5 & 1;
    v48 = *a1;
    v8 = 1;
    if (a3 && a4)
    {
      v8 = *a3;
    }

    v47 = v8;
    v9 = v48;
    v46 = *a1;
    v45 = 0;
    v10 = v7 ^ 1;
    v11 = sub_100092AE4(v7 ^ 1, &v46, &v45, 0xFFFFFFFE);
    if (v11 == 2 && (v11 = sub_100092AE4(v10, &v46, &v45, 1u), v19 = v10, v11 == 2))
    {
LABEL_27:
      v35 = tree_insert(&spaceman_free_tree + 64 * v19, 0, &v48, 16, &v47, 8);
      v5 = v35;
      if (v35)
      {
        v36 = BYTE8(v48);
        strerror(v35);
        fsck_printf_err("Space Verification: failed to insert paddr (%llu) error : %s\n", v37, v38, v39, v40, v41, v42, v43, v36);
        fsck_fail_func(0x365, v5);
      }
    }

    else
    {
      v5 = v11;
      if (!v11)
      {
        v20 = v9;
        v21 = v8;
        v22 = *(&v9 + 1);
        do
        {
          if (*(&v46 + 1) >= (v21 + v22))
          {
            v19 = v10;
            goto LABEL_27;
          }

          if (v45 + *(&v46 + 1) > v22)
          {
            fsck_printf_warn("found spaceman free queue tree entry (0x%llx+%llu, xid %llu) which overlaps with existing range (0x%llx+%llu)\n", v12, v13, v14, v15, v16, v17, v18, SBYTE8(v9));
            fsck_fail_func(0x1CE, -7);
            *a5 |= 2u;
            if (v22 >= *(&v46 + 1))
            {
              v23 = *(&v46 + 1);
            }

            else
            {
              v23 = v22;
            }

            if (v22 - v23 + v21 <= (*(&v46 + 1) - v23 + v45))
            {
              v21 = *(&v46 + 1) - v23 + v45;
            }

            else
            {
              v21 += v22 - v23;
            }

            if (v20 <= v46)
            {
              v20 = v46;
            }

            v24 = tree_remove(&spaceman_free_tree + 64 * v10, 0, &v46, 16);
            if (v24)
            {
              v25 = v24;
              v26 = BYTE8(v46);
              strerror(v24);
              fsck_printf_err("Space Verification: failed to remove paddr (%llu) error : %s\n", v27, v28, v29, v30, v31, v32, v33, v26);
              fsck_fail_func(0x366, v25);
            }

            *&v48 = v20;
            *(&v48 + 1) = v23;
            v22 = v23;
            v47 = v21;
          }

          v34 = sub_100092AE4(v10, &v46, &v45, 2u);
        }

        while (!v34);
        v5 = v34;
        v19 = v10;
        if (v34 == 2)
        {
          goto LABEL_27;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_100092ED0(const void *a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5)
{
  if ((a4 & 0xFFFFFFF7) != 0)
  {
    return 22;
  }

  v8 = 1;
  if (a3)
  {
    if (a4)
    {
      v8 = *a3;
    }
  }

  v9[1] = v5;
  v9[2] = v6;
  v9[0] = v8;
  return tree_insert(a5, 0, a1, a2, v9, 8);
}

uint64_t sub_100092F3C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a1 + 16);
  if (v12 == 16)
  {
    if (*(a1 + 20) != 8)
    {
      goto LABEL_16;
    }
  }

  else if (v12 || *(a1 + 20))
  {
    goto LABEL_16;
  }

  v13 = *(a2 + 16);
  if (v13 != 16)
  {
    if (!v13 && !*(a2 + 20))
    {
      goto LABEL_9;
    }

LABEL_16:
    sub_1000931C8();
  }

  if (*(a2 + 20) != 8)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (!v8)
  {
    v17 = "unexpected end of iteration while repairing free queue tree\n";
    goto LABEL_28;
  }

  if (!v11)
  {
LABEL_21:
    v19 = 1;
    result = fsck_repairs_add(*a4, *(a4 + 8), 0, 0, 1, v8, 0x10u, v9, 8u);
    goto LABEL_25;
  }

  v14 = *(v11 + 1);
  v15 = *(v8 + 8);
  if (v14 != v15)
  {
    v18 = *v9;
LABEL_19:
    if (v14 > v15 && v14 - v15 >= v18)
    {
      goto LABEL_21;
    }

    v20 = *v10;
    v24 = *v10;
    v25 = *v11;
    v22 = *v8;
    v23 = *(v11 + 1);
    v21 = *(v8 + 8);
    v17 = "unexpected on-disk range 0x%llx+%llu xid %llu and in-memory range 0x%llx+%llu xid %llu while repairing free queue tree\n";
LABEL_28:
    fsck_printf_err(v17, a2, a3, a4, a5, v8, a7, v10, v21);
    return 22;
  }

  if (*v11 == *v8 && *v10 == *v9)
  {
    return 0;
  }

  if (*v11 <= *v8)
  {
    v18 = *v9;
    if (*v10 <= *v9)
    {
      goto LABEL_19;
    }
  }

  v19 = 2;
  result = fsck_repairs_add(*a4, *(a4 + 8), 2, 0, 1, v11, 0x10u, v10, 8u);
LABEL_25:
  if (!result)
  {
    *a3 = v19;
  }

  return result;
}

uint64_t get_cib_for_chunk(uint64_t *a1, unint64_t a2, void **a3)
{
  v6 = a1[3];
  v7 = v6[20];
  v8 = *a3;
  if (!*a3)
  {
    v8 = malloc_type_malloc(v6[8], 0xFF691DB1uLL);
    if (!v8)
    {
      v31 = 526;
      v32 = "Failed to allocate memory\n";
      goto LABEL_10;
    }
  }

  v16 = v6 + v7;
  v17 = a2 / v6[10];
  if (!v6[17])
  {
    v19 = 0;
    goto LABEL_12;
  }

  v18 = malloc_type_malloc(v6[8], 0x74CB18D2uLL);
  if (!v18)
  {
    v31 = 527;
    v32 = "Failed to allocate memory for cab\n";
LABEL_10:
    fsck_printf_err(v32, v9, v10, v11, v12, v13, v14, v15, v43);
    v30 = 12;
    fsck_fail_func(v31, 12);
    goto LABEL_17;
  }

  v19 = v18;
  v20 = v17 / v6[11];
  v21 = *&v16[8 * v20];
  v22 = dev_read(*a1);
  if (v22)
  {
    v30 = v22;
    fsck_printf_err("error (%d) getting cab %u @ %lld\n", v23, v24, v25, v26, v27, v28, v29, v22);
    fsck_fail_func(0x1D6, v30);
LABEL_15:
    free(v19);
    goto LABEL_16;
  }

  v16 = v19 + 40;
  LODWORD(v17) = v17 - v6[11] * v20;
LABEL_12:
  v33 = *&v16[8 * v17];
  v34 = dev_read(*a1);
  v30 = v34;
  if (v34)
  {
    fsck_printf_err("error (%d) getting cib %u @ %lld\n", v35, v36, v37, v38, v39, v40, v41, v34);
    fsck_fail_func(0x1D7, v30);
  }

  if (v19)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (!v30)
  {
LABEL_19:
    *a3 = v8;
    return v30;
  }

LABEL_17:
  if (v8 == *a3)
  {
    goto LABEL_19;
  }

  free(v8);
  return v30;
}

uint64_t get_disk_bitmap(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char **a5, _DWORD *a6, int a7)
{
  v93 = 0;
  v12 = a1[3];
  v13 = a2 / *(v12 + 36);
  if (a5)
  {
    v93 = *a5;
  }

  cib_for_chunk = get_cib_for_chunk(a1, v13, &v93);
  if (cib_for_chunk)
  {
    v15 = cib_for_chunk;
    v93 = 0;
    strerror(cib_for_chunk);
    fsck_printf_err("failed to get cib for chunk index %llu: %s\n", v16, v17, v18, v19, v20, v21, v22, v13);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_5;
  }

  v23 = v93;
  v27 = v93 + 40;
  v90 = v13 % *(v12 + 40);
  v28 = &v93[32 * v90 + 40];
  v30 = *(v28 + 3);
  v29 = v28 + 24;
  v24 = v30;
  if (v30)
  {
    v31 = dev_read(*a1);
    v15 = v31;
    if (v31)
    {
      v39 = v13 / *(v12 + 40);
      v25 = v90;
      fsck_printf_err("error (%d) getting cib %d bitmap %d @ %lld\n", v32, v33, v34, v35, v36, v37, v38, v31);
      fsck_fail_func(0x1D8, v15);
      goto LABEL_5;
    }

LABEL_40:
    v26 = a4;
    v25 = v90;
LABEL_41:
    if (!a6)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v89 = v29;
  bitmap_clear_range(a3, 0, *(v12 + 36));
  if (!a7)
  {
    v24 = 0;
    v15 = 2;
    goto LABEL_40;
  }

  v96 = 0;
  v40 = a1[3];
  v41 = v40[8];
  v94 = 0;
  v95 = 0;
  v42 = malloc_type_malloc(v41, 0xCF3215BFuLL);
  if (!v42)
  {
    fsck_printf_err("Failed to allocate memory\n", v43, v44, v45, v46, v47, v48, v49, v86);
    fsck_fail_func(0x20C, 12);
    goto LABEL_53;
  }

  v50 = v42;
  v87 = v27;
  if (!v40[40])
  {
LABEL_51:
    free(v50);
LABEL_53:
    v24 = 0;
    v15 = 28;
LABEL_54:
    fsck_fail_func(0x210, v15);
    v25 = v90;
LABEL_5:
    v26 = a4;
    if ((v15 & 0xFFFFFFFD) != 0)
    {
      if (a6)
      {
        *a6 = 0;
      }

      if (a4)
      {
        v24 = 0;
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    goto LABEL_41;
  }

  v51 = 0;
  v52 = 0;
  v53 = (8 * v41);
  v91 = v40 + v40[82];
  v88 = v42;
  while (1)
  {
    v54 = *&v91[2 * v52];
    v55 = a1[3];
    v56 = *(v55 + 164);
    if ((v56 & 0x7FFFFFFFu) <= v54)
    {
      LOBYTE(v66) = 22;
LABEL_23:
      fsck_printf_err("error (%d) looking up spaceman IP bitmap block %u\n", v43, v54, v45, v46, v47, v48, v49, v66);
      goto LABEL_24;
    }

    v57 = *(v55 + 168);
    if (v56 < 0)
    {
      v66 = nx_metadata_fragmented_block_address_lookup(a1, v57, v54, &v96, 0);
      if (v66)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v96 = v57 + v54;
    }

    v58 = dev_read(*a1);
    if (!v58)
    {
      break;
    }

    fsck_printf_err("error (%d) getting spaceman IP bitmap block %u @ %lld\n", v59, v60, v61, v62, v63, v64, v65, v58);
LABEL_24:
    ++v52;
    v51 += v53;
    if (v52 >= v40[40])
    {
      goto LABEL_51;
    }
  }

  if (!bitmap_range_find_first(0, v50, 0, v53, &v95))
  {
    goto LABEL_24;
  }

  v68 = v95;
  v69 = v95 + v51;
  v70 = a1[3];
  v71 = *(v70 + 152);
  if ((v71 & 0x7FFFFFFFFFFFFFFFuLL) <= v69)
  {
    LODWORD(v73) = 22;
LABEL_35:
    v82 = v73;
    fsck_printf_err("error (%d) looking up spaceman IP block %llu\n", v68, v67, v45, v46, v47, v48, v49, v73);
    v83 = 543;
    goto LABEL_36;
  }

  v72 = *(v70 + 176);
  if ((v71 & 0x8000000000000000) == 0)
  {
    v73 = v72 + v69;
    v94 = v73;
    goto LABEL_32;
  }

  v73 = nx_metadata_fragmented_block_address_lookup(a1, v72, v95 + v51, &v94, 0);
  if (v73)
  {
    goto LABEL_35;
  }

  v68 = v95;
LABEL_32:
  bitmap_set_range(v88, v68, 1, v73);
  v74 = dev_write(*a1);
  if (v74)
  {
    v82 = v74;
    fsck_printf_err("error (%d) writing spaceman IP bitmap %d @ %lld\n", v75, v76, v77, v78, v79, v80, v81, v74);
    v83 = 525;
LABEL_36:
    fsck_fail_func(v83, v82);
    v50 = v88;
    goto LABEL_24;
  }

  v24 = v94;
  free(v88);
  if (!v24)
  {
    v15 = 92;
    goto LABEL_54;
  }

  v15 = 0;
  *v89 = v24;
  v85 = *(v12 + 16);
  v25 = v90;
  *&v87[32 * v90] = v85;
  v26 = a4;
  if (a6)
  {
LABEL_42:
    *a6 = v25;
  }

LABEL_43:
  if (v26)
  {
LABEL_44:
    *v26 = v24;
  }

LABEL_45:
  if (a5 && (!v15 || v23 == *a5))
  {
    *a5 = v23;
  }

  else
  {
    free(v23);
  }

  return v15;
}

uint64_t fsck_disk_bitmap_iter_next(uint64_t a1, uint64_t **a2, _DWORD *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = *(v5 + 36);
  if (v4 >= v6)
  {
    v12 = 0;
    *(a1 + 376) = 1;
  }

  else
  {
    v9 = v4 + 1;
    if (v9 < v6 && (v10 = v5 + 32 * v9, (v11 = *(v10 + 64)) != 0))
    {
      v12 = copy_obj_async(*a1, 0, 0x40000000, v11, *(v10 + 40), 0x20000000, 8, 0, a1 + 176 * (v9 & 1) + 24);
      if (v12)
      {
        fsck_fail_func(0x47A, v12);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *a1;
    v14 = *(a1 + 8) + 40;
    v15 = *(a1 + 16);
    v16 = *(v14 + 32 * v15 + 24);
    *a3 = v15;
    if (v16)
    {
      v17 = copy_obj_finish(v13, 0, 0x40000000, v16, *(v14 + 32 * v15), 0x20000000, 8, 0, a1 + 176 * (v15 & 1) + 24, a2, 0, 0);
      if (v17)
      {
        v18 = v17;
        fsck_fail_func(0x47B, v17);
        if (v12)
        {
          v12 = v12;
        }

        else
        {
          v12 = v18;
        }
      }
    }

    else
    {
      v19 = malloc_type_calloc(1uLL, *(v13[1] + 36), 0x5F4AE810uLL);
      *a2 = v19;
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v12 == 0;
      }

      if (v20)
      {
        v12 = 12;
      }

      else
      {
        v12 = v12;
      }
    }

    ++*(a1 + 16);
  }

  return v12;
}

uint64_t fsck_disk_bitmap_iter_init(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4, _DWORD *a5)
{
  if (!a1)
  {
    return 22;
  }

  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 376) = 0;
  v8 = *(a3 + 64);
  if (v8)
  {
    v9 = copy_obj_async(a2, 0, 0x40000000, v8, *(a3 + 40), 0x20000000, 8, 0, a1 + 24);
    if (v9)
    {
      v10 = v9;
      fsck_fail_func(0x47C, v9);
      return v10;
    }
  }

  return fsck_disk_bitmap_iter_next(a1, a4, a5);
}

uint64_t fsck_disk_bitmap_iter_finish(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  if (v1 < *(v2 + 36))
  {
    v3 = *(v2 + 32 * v1 + 64);
    if (v3)
    {
      copy_obj_abort(*a1, 0, v3, a1 + 176 * (v1 & 1) + 24);
    }
  }

  return 0;
}

uint64_t iterate_reaper(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  v31 = 0;
  v7 = *(v6 + 104);
  v8 = *(v6 + 96);
  v27 = 0;
  *v28 = v7;
  *&v28[4] = *(v6 + 72);
  v29 = *(v6 + 80);
  v30 = v8;
  v9 = sub_100093C08(a1, a2, &v27, a3);
  if (v9)
  {
    return v9;
  }

  v11 = *(v6 + 48);
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  while (2)
  {
    if (v12)
    {
      free(v12);
      v31 = 0;
    }

    memset(v26, 0, sizeof(v26));
    v13 = copy_obj(a1, 0, 0x80000000, v11, 0, 0, 18, 0, &v31, v26, 0);
    if (!v13)
    {
      v12 = v31;
      for (i = *(v31 + 13); i != -1; i = LODWORD(v31[5 * i + 8]))
      {
        v15 = &v12[5 * i];
        v16 = *(v15 + 19);
        v17 = v15[12];
        v27 = 0;
        *v28 = *(v15 + 68);
        *&v28[8] = v16;
        v29 = *(v15 + 5);
        v30 = v17;
        v18 = sub_100093C08(a1, a2, &v27, a3);
        if (v18)
        {
          v9 = v18;
          goto LABEL_15;
        }

        v12 = v31;
      }

      v11 = v12[4];
      if (v11)
      {
        continue;
      }

      v9 = 0;
      goto LABEL_16;
    }

    break;
  }

  v9 = v13;
  strerror(v13);
  fsck_printf_err("Could not read nx_reaper_list object (oid (0x%llx)): %s\n", v19, v20, v21, v22, v23, v24, v25, v11);
LABEL_15:
  v12 = v31;
  if (v31)
  {
LABEL_16:
    free(v12);
  }

  return v9;
}

uint64_t sub_100093C08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = 0;
  v9 = *(a3 + 4);
  v8 = *(a3 + 8);
  if ((v9 & 0x10) == 0 || v8 != 11)
  {
    goto LABEL_12;
  }

  v10 = *(a3 + 16);
  if (!omap_info[0])
  {
    v15 = 0;
LABEL_11:
    ++omap_info[0];
    *&omap_info[8 * v15 + 8] = v10;
    goto LABEL_12;
  }

  if (qword_1000E9D18 != v10)
  {
    v11 = &qword_1000E9D20;
    v12 = 1;
    do
    {
      v13 = v12;
      if (omap_info[0] == v12)
      {
        break;
      }

      v14 = *v11++;
      ++v12;
    }

    while (v14 != v10);
    v15 = omap_info[0];
    if (v13 >= omap_info[0])
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v37 = 0uLL;
  v38 = 0;
  v16 = *(a3 + 24);
  if ((v9 & 0x1A) != 0 || v16 == 0)
  {
    goto LABEL_17;
  }

  v20 = v8 & 0xC0000000;
  if (a4 == 1)
  {
    if (v20)
    {
      goto LABEL_17;
    }

    v22 = a2 ? *(*(a2 + 40) + 8) : 0;
    if (v22 != *(a3 + 16))
    {
      goto LABEL_17;
    }

    v21 = (v8 & 0xFFFE) == 2;
  }

  else
  {
    v21 = 1;
    if (!a4 && !v20 && v8 != 13)
    {
      goto LABEL_17;
    }
  }

  v23 = copy_obj(a1, a2, v8 & 0xC0000000, v16, 0, v8 & 0x3FFF0000, v8, 0, &v39, &v37, 0);
  if (v23)
  {
    v18 = v23;
    fsck_printf_err("failed to read object (oid (0x%llx)) being reaped from disk \n", v24, v25, v26, v27, v28, v29, v30, *(a3 + 24));
    fsck_fail_func(0x22A, v18);
    goto LABEL_18;
  }

  if (v21)
  {
    v31 = *(v39 + 12);
    if (v31 > 0xC)
    {
      if (v31 == 13)
      {
        v36 = *(a3 + 16);
        v42 = *a3;
        v43 = v36;
        v44 = *(a3 + 32);
        v33 = sub_100094A94(a1, &v42, v39);
LABEL_44:
        v18 = v33;
        if (v33)
        {
          goto LABEL_18;
        }

        goto LABEL_45;
      }

      if (v31 == 25)
      {
        v34 = *(a3 + 16);
        v42 = *a3;
        v43 = v34;
        v44 = *(a3 + 32);
        v33 = sub_100094D64(a1, &v42, v39);
        goto LABEL_44;
      }
    }

    else
    {
      if (v31 - 2 < 2)
      {
        v32 = *(a3 + 16);
        v42 = *a3;
        v43 = v32;
        v44 = *(a3 + 32);
        v40 = v37;
        v41 = v38;
        v33 = sub_1000945D8(a1, a2, &v42, v39, &v40, a4, v29, v30);
        goto LABEL_44;
      }

      if (v31 == 11)
      {
        v35 = *(a3 + 16);
        v42 = *a3;
        v43 = v35;
        v44 = *(a3 + 32);
        v33 = sub_100094888(a1, &v42, v39);
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  if (v20 == 0x40000000)
  {
    mark_object_allocated(a1, v37, (DWORD2(v37) / *(a1[1] + 36)), *(a3 + 16), 0x40000000, *(a3 + 24), 0, *(v39 + 12), *(v39 + 7), 5u);
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = 0;
  if (a4 == 1 && !v20)
  {
    omap_sv_mark_reaper_entry(*(a3 + 24), *(a3 + 8));
    goto LABEL_17;
  }

LABEL_18:
  if (v39)
  {
    free(v39);
  }

  return v18;
}

uint64_t fsck_reaper(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v8 = a1[2];
  v60 = 0;
  if (*(v8 + 40) >= *(v8 + 32))
  {
    fsck_printf_err("reaper completed ID 0x%llx not less than next reap ID 0x%llx\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 40));
    v9 = 92;
    v10 = 96;
    goto LABEL_5;
  }

  if ((*(v8 + 64) & 1) == 0)
  {
    fsck_printf_err("reaper needs more cowbell, flags 0x%x\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 64));
    v9 = 92;
    v10 = 97;
    goto LABEL_5;
  }

  v12 = *(v8 + 48);
  if ((v12 == 0) == (*(v8 + 56) != 0))
  {
    fsck_printf_err("reaper head (0x%llx) and tail (0x%llx) should be both valid or both invalid\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 48));
    v9 = 92;
    v10 = 98;
    goto LABEL_5;
  }

  if (!v12)
  {
LABEL_62:
    v9 = iterate_reaper(a1, 0, 0);
    goto LABEL_6;
  }

  v14 = 0;
  v15 = *(v8 + 68);
  while (1)
  {
    if (v14)
    {
      free(v14);
    }

    v16 = copy_obj(a1, 0, 0x80000000, v12, 0, 0, 18, 0, &v60, &v61, 0);
    if (v16)
    {
      v9 = v16;
      fsck_printf_err("verification/reading of the nx_reaper object failed\n", v17, v18, v19, v20, v21, v22, v23, v59);
      goto LABEL_6;
    }

    v24 = *(v60 + 11);
    if ((v62 - 64) / 0x28 != v24)
    {
      v53 = *(v60 + 11);
      fsck_printf_err("reap list object 0x%llx max record count %u different than expected %lu\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 642;
      goto LABEL_5;
    }

    if (*(v60 + 12) > v24)
    {
      v54 = *(v60 + 12);
      fsck_printf_err("reap list object 0x%llx record count %u larger than max %u\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 99;
      goto LABEL_5;
    }

    v25 = *(v60 + 13);
    if (v25 != -1 && v25 > v24)
    {
      v55 = *(v60 + 13);
      fsck_printf_err("reap list object 0x%llx first index %u larger than max %u\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 100;
      goto LABEL_5;
    }

    v27 = *(v60 + 14);
    if (v27 != -1 && v27 > v24)
    {
      v56 = *(v60 + 13);
      fsck_printf_err("reap list object 0x%llx last index %u larger than max %u\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 101;
      goto LABEL_5;
    }

    v29 = *(v60 + 15);
    if (v29 != -1 && v29 > v24)
    {
      v57 = *(v60 + 15);
      fsck_printf_err("reap list object 0x%llx free index %u larger than max %u\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 102;
      goto LABEL_5;
    }

    v31 = v60[4];
    v32 = *(v8 + 56);
    if (v31)
    {
      if (v32 == v12)
      {
        fsck_printf_err("reap list tail 0x%llx is not last reap list object, next 0x%llx\n", v17, v18, v19, v20, v21, v22, v23, v12);
        v9 = 92;
        v10 = 104;
        goto LABEL_5;
      }

      goto LABEL_33;
    }

    if (v32 != v12)
    {
      break;
    }

LABEL_33:
    if (*(v8 + 68))
    {
      --v15;
      if (v31 && !v15)
      {
        fsck_printf_err("reap list expected %u objects, but haven't seen last reap list object yet\n", v17, v18, v19, v20, v21, v22, v23, *(v8 + 68));
        v9 = 92;
        v10 = 105;
        goto LABEL_5;
      }

      if (!v31 && v15)
      {
        fsck_printf_err("reap list expected %u objects, but got last reap list object with %u more objects left\n", v17, v18, v19, v20, v21, v22, v23, *(v8 + 68));
        v9 = 92;
        v10 = 106;
        goto LABEL_5;
      }
    }

    v59 = &v59;
    v33 = 2 * v24;
    __chkstk_darwin(v16);
    v34 = &v59 - ((v33 + 15) & 0x3FFFFFFF0);
    bzero(v34, v33);
    bzero(v34, v33);
    v42 = v60;
    v43 = *(v60 + 13);
    if (v43 != -1)
    {
      v44 = 0;
      while (1)
      {
        if (v43 >= *(v42 + 11))
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : index not less than nrl_max (%u)\n", v35, v36, v37, v38, v39, v40, v41, v43);
          v51 = 556;
          goto LABEL_72;
        }

        if (*&v34[2 * v43] == 1)
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : cycle detected\n", v35, v36, v37, v38, v39, v40, v41, v43);
          v51 = 643;
          goto LABEL_72;
        }

        *&v34[2 * v43] = 1;
        if (HIDWORD(v42[5 * v43 + 8]) >= 0x20)
        {
          fsck_printf_warn("reaper list entry (index (%u) list oid (0x%llx)) : invalid flags (0x%x) set\n", v35, v36, v37, v38, v39, v40, v41, v43);
          fsck_fail_func(0x22D, -3);
          v42 = v60;
        }

        v45 = &v42[5 * v43];
        if ((*(v45 + 17) & 1) == 0)
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : is not valid as per flags(0x%x)\n", v35, v36, v37, v38, v39, v40, v41, v43);
          v51 = 572;
          goto LABEL_72;
        }

        if ((v45[10] - 1) <= 0x3FE)
        {
          break;
        }

        ++v44;
        v43 = *(v45 + 16);
        if (v43 == -1)
        {
          goto LABEL_49;
        }
      }

      fsck_printf_warn("reaper list entry (index (%u) list oid (0x%llx)) : invalid nrle_fs_oid (0x%llx)\n", v35, v36, v37, v38, v39, v40, v41, v43);
      v51 = 558;
      v52 = -2;
      goto LABEL_73;
    }

    v44 = 0;
LABEL_49:
    if (v44 != *(v42 + 12))
    {
      v58 = *(v42 + 12);
      fsck_printf_err("reap list object (oid 0x%llx) expected %u entries, found %u\n", v35, v36, v37, v38, v39, v40, v41, v12);
      v51 = 644;
      goto LABEL_72;
    }

    v46 = *(v42 + 15);
    v47 = *(v42 + 11);
    if (v46 != -1)
    {
      v48 = v42 + 8;
      while (1)
      {
        if (v46 >= v47)
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : index not less than nrl_max (%u)\n", v35, v36, v37, v38, v39, v40, v41, v46);
          v51 = 645;
          goto LABEL_72;
        }

        v49 = *&v34[2 * v46];
        if (v49 == 2)
        {
          break;
        }

        if (v49 == 1)
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : entry is both occupied and free!\n", v35, v36, v37, v38, v39, v40, v41, v46);
          v51 = 646;
          goto LABEL_72;
        }

        *&v34[2 * v46] = 2;
        v46 = v48[5 * v46];
        if (v46 == -1)
        {
          goto LABEL_58;
        }
      }

      fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : cycle detected\n", v35, v36, v37, v38, v39, v40, v41, v46);
      v51 = 647;
LABEL_72:
      v52 = 92;
LABEL_73:
      fsck_fail_func(v51, v52);
      v9 = 92;
      goto LABEL_6;
    }

    if (v47)
    {
LABEL_58:
      v50 = 0;
      while (*&v34[2 * v50])
      {
        if (v47 == ++v50)
        {
          goto LABEL_61;
        }
      }

      fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : entry is not referenced\n", v35, v36, v37, v38, v39, v40, v41, v50);
      v51 = 648;
      goto LABEL_72;
    }

LABEL_61:
    v14 = v60;
    v12 = v60[4];
    if (!v12)
    {
      goto LABEL_62;
    }
  }

  fsck_printf_err("last reap list object 0x%llx doesn't match tail 0x%llx\n", v17, v18, v19, v20, v21, v22, v23, v12);
  v9 = 92;
  v10 = 103;
LABEL_5:
  fsck_fail_func(v10, 92);
LABEL_6:
  if (v60)
  {
    free(v60);
  }

  return v9;
}

BOOL omap_in_reaper(uint64_t a1)
{
  if (!omap_info)
  {
    return 0;
  }

  if (qword_1000E9D18 == a1)
  {
    return 1;
  }

  v2 = &qword_1000E9D20;
  v3 = 1;
  do
  {
    v4 = v3;
    if (omap_info == v3)
    {
      break;
    }

    v5 = *v2++;
    ++v3;
  }

  while (v5 != a1);
  return v4 < omap_info;
}

uint64_t sub_1000945D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v50 = 0;
  v51 = 0;
  v8 = *(a4 + 32);
  if ((v8 & 2) != 0)
  {
    return 0;
  }

  v10 = *(a3 + 24);
  if ((v8 & 8) == 0)
  {
    v46 = *(*(a1 + 8) + 36);
    v15 = *(a3 + 8);
    if (v8)
    {
      v21 = a4 + *(a5 + 8);
      v22 = *(v21 - 24);
      v52 = *(v21 - 40);
      v53 = v22;
      *&v54 = *(v21 - 8);
    }

    else
    {
      v16 = *(a4 + 28);
      if (v16 > 0x24 || ((0x87BF631FFuLL >> v16) & 1) != 0)
      {
        v44 = *(a4 + 28);
        fsck_printf_warn("object (oid (0%llx)) being reaped : Invalid tree subtype (%u)\n", a2, a3, a4, a5, a6, a7, a8, v10);
        fsck_fail_func(0x233, -5);
        return 22;
      }

      if ((0x100001C000uLL >> v16))
      {
        v17 = 0;
      }

      else
      {
        v17 = dword_1000B3410[v16];
      }

      DWORD1(v52) = *(*(a1 + 8) + 36);
      DWORD2(v52) = v17;
    }

    if (*(a4 + 36))
    {
      v23 = 0;
      v24 = v15 & 0xC0000000;
      v49 = 0;
      v25 = v15 & 0xC0000000 | 3;
      v27 = a6 == 1 && v24 == 0;
      v45 = v27;
      while (1)
      {
        get_key_and_value_at_index(a4, &v52, v23, &v51, &v49 + 1, &v50, &v49);
        if (v49 != 8)
        {
          break;
        }

        v35 = *v50;
        *(a3 + 24) = *v50;
        *(a3 + 8) = v25;
        if (*(a4 + 34) < 2u)
        {
          if (v24 == 0x40000000)
          {
            v38 = DWORD1(v52) / v46;
            v39 = *(*(a1 + 8) + 40);
            if (v39 <= v38 || v35 < 1 || v39 <= v35 || v39 - v38 < v35)
            {
              fsck_printf_err("invalid btree node address range (0x%llx+%llu)\n", v35, v38, v30, v31, v32, v33, v34, v35);
              v18 = 92;
              v19 = 1238;
              goto LABEL_45;
            }

            mark_object_allocated(a1, v35, v38, *(a3 + 16), 0x40000000, v35, 0, 3, *(a4 + 28), 5u);
          }

          else if (v45)
          {
            omap_sv_mark_reaper_entry(v35, v24 | 3);
          }
        }

        else
        {
          v36 = *(a3 + 16);
          v47[0] = *a3;
          v47[1] = v36;
          v48 = *(a3 + 32);
          v37 = sub_100093C08(a1, a2, v47, a6);
          if (v37)
          {
            return v37;
          }
        }

        if (++v23 >= *(a4 + 36))
        {
          return 0;
        }
      }

      fsck_printf_err("btree node (oid (0%llx)) being reaped has invalid val_len (%u) at index (%d) \n", v28, v29, v30, v31, v32, v33, v34, v10);
      v18 = 92;
      v19 = 559;
LABEL_45:
      v20 = 92;
      goto LABEL_11;
    }

    return 0;
  }

  fsck_printf_err("btree node (oid (0%llx)) being reaped is hashed\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 24));
  v18 = 22;
  v19 = 916;
  v20 = 22;
LABEL_11:
  fsck_fail_func(v19, v20);
  return v18;
}

uint64_t sub_100094888(uint64_t a1, __int128 *a2, uint64_t a3)
{
  memset(v44, 0, sizeof(v44));
  memset(v42, 0, sizeof(v42));
  v6 = a2[1];
  v36 = *a2;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v35[1] = 0;
  v35[2] = 0;
  v35[0] = a1;
  v37 = v6;
  v38 = *(a2 + 4);
  if (!*(a3 + 48))
  {
    goto LABEL_9;
  }

  inited = tree_init_ext(v44, a1, 0, *(a3 + 40) & 0xC0000000, *(a3 + 40), 11, 0, *(*(a1 + 8) + 36), 16, 16, 0, *(a3 + 48), omap_key_compare);
  if (!inited)
  {
    v40 = 0;
    v41 = 0;
    v18 = tree_iterator_init(v42, v44, 0, &v40, 0x10u, 0x10u, v39, 16);
    if (v18 || (v18 = fsck_iterate(v42, sub_100094F1C, v35, 0), v18))
    {
      v8 = v18;
      v19 = *(a3 + 48);
      strerror(v18);
      fsck_printf_err("Could not iterate omap tree to read reaper objects (oid 0x%llx): %s\n", v20, v21, v22, v23, v24, v25, v26, v19);
      v17 = 567;
      goto LABEL_7;
    }

    *(a2 + 2) = *(a3 + 40);
    *(a2 + 3) = *(*(a1 + 8) + 36);
    *(a2 + 3) = *(a3 + 48);
    *(a2 + 4) = 0;
    v27 = a2[1];
    v32 = *a2;
    v33 = v27;
    v34 = 0;
    v28 = sub_100093C08(a1, 0, &v32, 0);
    if (v28)
    {
      return v28;
    }

LABEL_9:
    v29 = *(a3 + 56);
    if (!v29)
    {
      return 0;
    }

    *(a2 + 2) = *(a3 + 44);
    *(a2 + 3) = *(*(a1 + 8) + 36);
    *(a2 + 3) = v29;
    *(a2 + 4) = 0;
    v30 = a2[1];
    v32 = *a2;
    v33 = v30;
    v34 = 0;
    v28 = sub_100093C08(a1, 0, &v32, 0);
    if (!v28)
    {
      return 0;
    }

    return v28;
  }

  v8 = inited;
  v9 = *(a3 + 48);
  strerror(inited);
  fsck_printf_err("Could not initialize omap tree (oid 0x%llx): %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
  v17 = 566;
LABEL_7:
  fsck_fail_func(v17, v8);
  return v8;
}

uint64_t sub_100094A94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  bzero(v38, 0x400uLL);
  v39 = a3;
  v6 = *(a3 + 152);
  if (!v6)
  {
LABEL_16:
    v30 = *(a3 + 144);
    v31 = *(a3 + 120);
    v32 = *(a2 + 1);
    v48 = *a2;
    v49 = v32;
    *&v50 = a2[4];
    v9 = sub_100095000(a1, v38, &v48, 0, v30, v31);
    if (!v9)
    {
      *(a2 + 2) = 1073741835;
      *(a2 + 3) = *(*(a1 + 8) + 36);
      a2[3] = *(a3 + 128);
      a2[4] = 0;
      v33 = *(a2 + 1);
      v48 = *a2;
      v49 = v33;
      *&v50 = 0;
      return sub_100093C08(a1, 0, &v48, 0);
    }

    return v9;
  }

  v7 = *a2;
  v8 = a2[2];
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46[0] = a1;
  v46[1] = v38;
  v46[2] = 0;
  v46[3] = v7;
  v46[4] = a2[1];
  v46[5] = v8;
  v47 = *(a2 + 3);
  LODWORD(v9) = tree_init_ext(v53, a1, v38, *(a3 + 124) & 0xC0000000, *(a3 + 124), 16, 0, *(*(a1 + 8) + 36), 0, 0, 0, v6, jkey_compare);
  v10 = malloc_type_calloc(1uLL, 0x340uLL, 0xC893D30DuLL);
  v11 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xE7670BF5uLL);
  v12 = v11;
  if (!v9 && v10 && v11)
  {
    v13 = tree_iterator_init(&v48, v53, 0, v10, 8u, 0x340u, v11, 3808);
    if (v13 || (v13 = fsck_iterate(&v48, sub_100095198, v46, 0), v13))
    {
      v9 = v13;
      v14 = *(v39 + 152);
      strerror(v13);
      fsck_printf_err("Could not iterate snap meta tree to read reaper objects (oid 0x%llx): %s\n", v15, v16, v17, v18, v19, v20, v21, v14);
      fsck_fail_func(0x23A, v9);
    }

    else
    {
      v35 = *(v39 + 124);
      v36 = *(*(a1 + 8) + 36);
      v37 = *(v39 + 152);
      v40 = v7;
      v41 = v35;
      v42 = v36;
      v43 = v8;
      v44 = v37;
      v45 = 0;
      v9 = sub_100093C08(a1, 0, &v40, 0);
    }

LABEL_12:
    free(v10);
    goto LABEL_13;
  }

  if (v9)
  {
    v9 = v9;
  }

  else
  {
    v9 = 12;
  }

  v22 = *(v39 + 152);
  strerror(v9);
  fsck_printf_err("Could not initialize snap meta tree (oid 0x%llx): %s\n", v23, v24, v25, v26, v27, v28, v29, v22);
  fsck_fail_func(0x239, v9);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v12)
  {
    free(v12);
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  return v9;
}

uint64_t sub_100094D64(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[1];
  v33 = *a2;
  v36 = 0;
  v37 = 0;
  v32[1] = 0;
  v32[2] = 0;
  v32[0] = a1;
  v34 = v3;
  v35 = *(a2 + 4);
  if ((*(a3 + 27) & 0x40) != 0)
  {
    memset(v40, 0, sizeof(v40));
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    inited = tree_init_ext(v40, a1, 0, 0x40000000, 2, 26, 0, *(*(a1 + 8) + 36), 8, 8, 0, *(a3 + 32), uint64_key_compare);
    if (inited)
    {
      v4 = inited;
      v9 = *(a3 + 32);
      strerror(inited);
      fsck_printf_err("Could not initialize gbitmap tree (oid 0x%llx): %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = 553;
    }

    else
    {
      v18 = tree_iterator_init(v38, v40, 0, &v37, 8u, 8u, &v36, 8);
      if (!v18)
      {
        v18 = fsck_iterate(v38, sub_100095348, v32, 0);
        if (!v18)
        {
          v28 = *(*(a1 + 8) + 36);
          *(a2 + 2) = 0x40000000;
          *(a2 + 3) = v28;
          *(a2 + 3) = *(a3 + 32);
          v29 = a2[1];
          v30[0] = *a2;
          v30[1] = v29;
          v31 = *(a2 + 4);
          v4 = sub_100093C08(a1, 0, v30, 0);
          if (v4)
          {
            return v4;
          }

          return 0;
        }
      }

      v4 = v18;
      v19 = *(a3 + 32);
      strerror(v18);
      fsck_printf_err("Could not iterate gbitmap tree to read reaper objects (oid 0x%llx): %s\n", v20, v21, v22, v23, v24, v25, v26, v19);
      v17 = 571;
    }

    fsck_fail_func(v17, v4);
    return v4;
  }

  return 0;
}

uint64_t sub_100094F1C(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if (*a3)
  {
    return 0;
  }

  v10 = *(*a5 + 8);
  v11 = (*(v10 + 36) + a3[1] - 1) / *(v10 + 36);
  v12 = *(a3 + 1);
  v13 = *(v10 + 40);
  if (v13 - v11 >= v12 && v13 > v11 && v12 >= 1 && v13 > v12)
  {
    if ((v8 & 0xE0) == 0x20)
    {
      v17 = 36;
    }

    else
    {
      v17 = 14;
    }

    v18 = a5[5];
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 13;
    }

    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    mark_object_allocated(*a5, v12, v11, v18, 0, *a1, a1[1], v19, v20, 5u);
    return 0;
  }

  fsck_printf_err("omap entry (oid 0x%llx): invalid ov_range (0x%llx+%llu)\n", v12, v11, a4, a5, a6, a7, a8, *a1);
  v21 = 92;
  fsck_fail_func(0x4D7, 92);
  return v21;
}

uint64_t sub_100095000(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6)
{
  memset(v43, 0, sizeof(v43));
  memset(v41, 0, sizeof(v41));
  v10 = a3[1];
  v35 = *a3;
  v42 = 0;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  v34[0] = a1;
  v34[1] = a2;
  v34[2] = a4;
  v36 = v10;
  v37 = *(a3 + 4);
  inited = tree_init_ext(v43, a1, a2, a6 & 0xC0000000, a6, 15, 0, *(*(a1 + 8) + 36), 0, 0, 0, a5, jkey_compare);
  if (inited)
  {
    v12 = inited;
    strerror(inited);
    fsck_printf_err("Could not initialize extentref tree (oid 0x%llx): %s\n", v13, v14, v15, v16, v17, v18, v19, a5);
    v20 = 548;
  }

  else
  {
    v40 = 0;
    v21 = tree_iterator_init(v41, v43, 0, &v40, 8u, 0x340u, v38, 20);
    if (!v21)
    {
      v21 = fsck_iterate(v41, sub_100095290, v34, 0);
      if (!v21)
      {
        v30 = *(*(a1 + 8) + 36);
        *(a3 + 2) = a6;
        *(a3 + 3) = v30;
        *(a3 + 3) = a5;
        *(a3 + 4) = 0;
        v31 = a3[1];
        v32[0] = *a3;
        v32[1] = v31;
        v33 = 0;
        return sub_100093C08(a1, 0, v32, 0);
      }
    }

    v12 = v21;
    strerror(v21);
    fsck_printf_err("Could not iterate extentref tree to read reaper objects(oid 0x%llx): %s\n", v22, v23, v24, v25, v26, v27, v28, a5);
    v20 = 568;
  }

  fsck_fail_func(v20, v12);
  return v12;
}

uint64_t sub_100095198(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (*a1 >> 60 != 1)
  {
    return 0;
  }

  v9 = *a5;
  v10 = *(a5 + 8);
  v11 = *a3;
  v12 = *(a3 + 40);
  v13 = *(a5 + 40);
  v27[0] = *(a5 + 24);
  v27[1] = v13;
  v28 = *(a5 + 56);
  v20 = sub_100095000(v9, v10, v27, v5 & 0xFFFFFFFFFFFFFFFLL, v11, v12);
  if (!v20)
  {
    v21 = *(a3 + 8);
    v22 = *(*(*a5 + 8) + 40);
    if (v22 - 1 < v21 || v22 < 2 || v21 < 1 || v22 <= v21)
    {
      fsck_printf_err("invalid sblock_oid (%llu)\n", v21, v14, v15, v16, v17, v18, v19, *(a3 + 8));
      v20 = 92;
      fsck_fail_func(0x4D9, 92);
      return v20;
    }

    mark_object_allocated(*a5, v21, 1uLL, *(a5 + 40), 0x40000000, v21, *a1 & 0xFFFFFFFFFFFFFFFLL, 13, 0, 5u);
    return 0;
  }

  return v20;
}

uint64_t sub_100095290(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if (*a3 >> 60 != 1)
  {
    return 0;
  }

  v9 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  v10 = v8 & 0xFFFFFFFFFFFFFFFLL;
  v11 = *(*(*a5 + 8) + 40);
  if (v11 - (v8 & 0xFFFFFFFFFFFFFFFLL) >= v9 && v11 > v10 && v9 != 0 && v11 > v9)
  {
    mark_object_allocated(*a5, v9, v10, *(a5 + 40), 0x40000000, v9, *(a5 + 16), 0, 0xFu, 6u);
    return 0;
  }

  fsck_printf_err("invalid extent address range (0x%llx+%llu)\n", *a1 & 0xFFFFFFFFFFFFFFFLL, v10, a4, a5, a6, a7, a8, *a1);
  v15 = 92;
  fsck_fail_func(0x4D8, 92);
  return v15;
}

uint64_t sub_100095348(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3 & 0x7FFFFFFFFFFFFFFFLL;
  v9 = *(*(*a5 + 8) + 40);
  if (v9 - 1 >= v8 && v9 >= 2)
  {
    v11 = v8 == 0;
    *a3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v9 > v8)
  {
    mark_object_allocated(*a5, v8, 1uLL, *(a5 + 40), 0x40000000, v8, 0, 27, 0, 5u);
    return 0;
  }

  else
  {
    fsck_printf_err("invalid gbitmap block oid 0x%llx\n", v8, a3, a4, a5, a6, a7, a8, *a3);
    v13 = 92;
    fsck_fail_func(0x4DA, 92);
  }

  return v13;
}

char *phys_extent_init(char *result)
{
  if (result[10] == 1 && qword_100104338 == 0)
  {
    if (!tree_init_ext(&xmmword_100104300, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 21, 0, 0, uint64_key_compare))
    {
      tree_create(&xmmword_100104300, 0, 64);
    }

    result = memory_storage_register_tree(&xmmword_100104300, "phys extent", phys_extent_cleanup);
    if (result)
    {
      fsck_printf_warn("failed to register the phys extent tree in the fsck memory storage\n", v2, v3, v4, v5, v6, v7, v8, v9);

      return fsck_fail_func(0x587, 12);
    }
  }

  return result;
}

uint64_t phys_extent_cleanup()
{
  xmmword_1000E94F8 = 0u;
  unk_1000E9508 = 0u;
  xmmword_1000E94D8 = 0u;
  unk_1000E94E8 = 0u;
  xmmword_1000E94B8 = 0u;
  unk_1000E94C8 = 0u;
  xmmword_1000E9498 = 0u;
  unk_1000E94A8 = 0u;
  xmmword_1000E9478 = 0u;
  unk_1000E9488 = 0u;
  xmmword_1000E9458 = 0u;
  unk_1000E9468 = 0u;
  xmmword_1000E9438 = 0u;
  unk_1000E9448 = 0u;
  xmmword_1000E9418 = 0u;
  unk_1000E9428 = 0u;
  xmmword_1000E93F8 = 0u;
  unk_1000E9408 = 0u;
  xmmword_1000E93D8 = 0u;
  *&qword_1000E93E8 = 0u;
  BYTE8(xmmword_1000E93F8) = 1;
  tree_destroy(&xmmword_100104300, 0);

  return tree_destroy(&xmmword_100104340, 0);
}

uint64_t file_extent_register(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6[0] = a4;
  v6[1] = a5;
  return sub_100095590(a1, a2, a3, 1, sub_100095908, v6);
}

uint64_t sub_100095590(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(_BYTE *, uint64_t), uint64_t a6)
{
  if (!qword_100104338)
  {
    return 0;
  }

  v10 = a2;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = a2;
  memset(v26, 0, sizeof(v26));
  result = sub_1000966D0(&v27, v26, 0xFFFFFFFE);
  if (result == 2 && (result = sub_1000966D0(&v27, v26, 1u), result == 2) && a4)
  {
    v27 = -1;
  }

  else
  {
    if (result == 2)
    {
      return 0;
    }

    if (result)
    {
LABEL_59:
      if (result == 12)
      {
        xmmword_1000E94F8 = 0u;
        unk_1000E9508 = 0u;
        xmmword_1000E94D8 = 0u;
        unk_1000E94E8 = 0u;
        xmmword_1000E94B8 = 0u;
        unk_1000E94C8 = 0u;
        xmmword_1000E9498 = 0u;
        unk_1000E94A8 = 0u;
        xmmword_1000E9478 = 0u;
        unk_1000E9488 = 0u;
        xmmword_1000E9458 = 0u;
        unk_1000E9468 = 0u;
        xmmword_1000E9438 = 0u;
        unk_1000E9448 = 0u;
        xmmword_1000E9418 = 0u;
        unk_1000E9428 = 0u;
        xmmword_1000E93F8 = 0u;
        unk_1000E9408 = 0u;
        xmmword_1000E93D8 = 0u;
        *&qword_1000E93E8 = 0u;
        BYTE8(xmmword_1000E93F8) = 1;
        tree_destroy(&xmmword_100104300, 0);
        tree_destroy(&xmmword_100104340, 0);
        result = 0;
        *(a1 + 10) = 0;
      }

      return result;
    }
  }

  v13 = a3 + v10;
  if (a3 + v10 < v10)
  {
    return 0;
  }

  while (1)
  {
    v14 = v27;
    if (a4)
    {
      v15 = v27 - v10;
      if (v27 > v10)
      {
        v16 = v15 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
        *v26 = v16;
        v17 = v15 & 0xFFFFFFFFFFFFFFFLL;
        *&v26[16] = 0;
        v27 = v10;
        v14 = v10;
LABEL_17:
        v20 = v13 <= v14 || v13 - v14 >= v17;
        v19 = v13;
        if (v20)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    v16 = *v26;
    v17 = *v26 & 0xFFFFFFFFFFFFFFFLL;
    v18 = v10 <= v27 || v10 - v27 >= v17;
    v19 = v10;
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = v19;
    v30[1] = *&v26[8];
    *(&v30[1] + 5) = *&v26[13];
    v21 = (v14 + v16 - v19) & 0xFFFFFFFFFFFFFFFLL;
    v30[0] = v16 & 0xF000000000000000 | v21;
    *v26 = (v17 - v21) | v16 & 0xF000000000000000;
    if (*&v26[16])
    {
      result = sub_1000967E8(&xmmword_100104300, &v27, v26);
      if (result)
      {
        goto LABEL_59;
      }

      result = sub_1000967E8(&xmmword_100104300, &v31, v30);
      if (result)
      {
        goto LABEL_59;
      }

      v14 = v27;
    }

LABEL_25:
    v22 = v14 - v10;
    if (v14 >= v10)
    {
      v23 = v22 < v13 - v10 && v13 - v10 >= (*v26 & 0xFFFFFFFFFFFFFFFuLL);
      if (v23 && v22 <= v13 - v10 - (*v26 & 0xFFFFFFFFFFFFFFFLL))
      {
        a5(v26, a6);
        if ((a4 & 1) != 0 || *&v26[16])
        {
          result = sub_1000967E8(&xmmword_100104300, &v27, v26);
        }

        else
        {
          result = sub_100096778(&xmmword_100104300, &v27);
        }

        if (result)
        {
          goto LABEL_59;
        }

        v14 = v27;
      }
    }

    if (v29 && (*v28 & 0xFFFFFFFFFFFFFFFLL) + v29 == v14 && *&v28[16] == *&v26[16] && v28[20] == v26[20])
    {
      *v28 = ((*v26 & 0xFFFFFFFFFFFFFFFLL) + (*v28 & 0xFFFFFFFFFFFFFFFLL)) | *v28 & 0xF000000000000000;
      if (*&v28[16])
      {
        if (sub_100096778(&xmmword_100104300, &v27))
        {
          return 1;
        }

        result = sub_1000967E8(&xmmword_100104300, &v29, v28);
        if (result)
        {
          goto LABEL_59;
        }

        v14 = v27;
      }
    }

    else
    {
      v29 = v14;
      *v28 = *v26;
      *&v28[13] = *&v26[13];
    }

    v25 = (*v26 & 0xFFFFFFFFFFFFFFFLL) + v14;
    if (v25 > v10)
    {
      v10 = v25;
    }

    result = sub_1000966D0(&v27, v26, 2u);
    if (result != 2 || (a4 & 1) == 0)
    {
      break;
    }

    v27 = -1;
LABEL_54:
    if (v10 > v13)
    {
      return 0;
    }
  }

  if (!result)
  {
    goto LABEL_54;
  }

  if (result != 2)
  {
    goto LABEL_59;
  }

  return 0;
}

uint64_t sub_100095908(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    sub_1000968E8();
  }

  *(result + 8) = *a2;
  ++*(result + 16);
  if ((*(result + 20) & 1) == 0)
  {
    *(result + 20) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_100095960(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_100096914();
  }

  *(result + 20) = 1;
  return result;
}

uint64_t sub_10009599C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_100096940();
  }

  --*(result + 16);
  return result;
}

uint64_t phys_extent_diff_iterator_init(uint64_t a1)
{
  v2 = sub_100095A8C(a1 + 48, &xmmword_100104300);
  if (v2 || (v2 = sub_100095A8C(a1 + 168, &xmmword_100104340), v2))
  {
    v3 = v2;
    v4 = strerror(v2);
    fsck_printf_err("unable to init physical extent tree iterator for repairs: %s\n", v5, v6, v7, v8, v9, v10, v11, v4);
    fsck_fail_func(0x461, v3);
    return v3;
  }

  else
  {
    *(a1 + 8) = sub_100095B50;
    *(a1 + 16) = a1 + 288;
    *(a1 + 24) = a1 + 296;
    *(a1 + 32) = 0x1500000008;
    *(a1 + 317) = 1;

    return sub_100095B50(a1);
  }
}

uint64_t sub_100095A8C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 56))
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = tree_iterator_init(a1, a2, 0, (a1 + 72), 8u, 8u, (a1 + 80), 21);
  if (v3)
  {
    v4 = v3;
    v5 = strerror(v3);
    fsck_printf_err("unable to init physical extent tree iterator for repairs: %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
    fsck_fail_func(0x460, v4);
LABEL_5:
    *(a1 + 40) = 1;
    goto LABEL_6;
  }

  if (a1 && (*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    v15 = *(a1 + 80);
    *(a1 + 104) = *(a1 + 72);
    v13 = v15 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_6:
  v13 = 0;
  *(a1 + 104) = -1;
LABEL_7:
  *(a1 + 112) = v13;
  return v4;
}

uint64_t sub_100095B50(uint64_t a1)
{
  result = sub_100096874(a1 + 48);
  if (!result)
  {
    result = sub_100096874(a1 + 168);
    if (!result)
    {
      if (*(a1 + 208) == 1)
      {
        v3 = *(a1 + 88);
        *(a1 + 40) = v3;
        if (v3)
        {
          return 0;
        }

        v5 = 0;
        v4 = *(a1 + 72);
      }

      else
      {
        *(a1 + 40) = 0;
        if (*(a1 + 88))
        {
          v4 = 0;
        }

        else
        {
          v4 = *(a1 + 72);
        }

        v5 = *(a1 + 192);
      }

      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = *(a1 + 152);
      v9 = *(a1 + 272);
      v10 = v8 - v9;
      if (v8 >= v9)
      {
        v11 = *(a1 + 272);
      }

      else
      {
        v11 = *(a1 + 152);
      }

      if (v8 >= v9)
      {
        if (v8 <= v9)
        {
          v16 = *(a1 + 160);
          v17 = *(a1 + 280);
          if (v16 >= v17)
          {
            v10 = *(a1 + 280);
          }

          else
          {
            v10 = *(a1 + 160);
          }

          *(a1 + 152) = v10 + v8;
          *(a1 + 160) = v16 - v10;
          *(a1 + 272) = v10 + v9;
          *(a1 + 280) = v17 - v10;
          *(v6 + 8) = -1;
          v13 = *(v4 + 16) - *(v5 + 16);
          v14 = 0x2000000000000000;
        }

        else
        {
          v15 = *(a1 + 280);
          if (v15 < v10)
          {
            v10 = *(a1 + 280);
          }

          *(a1 + 272) = v10 + v9;
          *(a1 + 280) = v15 - v10;
          *(v6 + 8) = -1;
          v13 = -*(v5 + 16);
          v14 = 0x2000000000000000;
          v4 = v5;
        }
      }

      else
      {
        v12 = *(a1 + 160);
        v10 = v9 - v8;
        if (v12 < v9 - v8)
        {
          v10 = *(a1 + 160);
        }

        *(a1 + 152) = v10 + v8;
        *(a1 + 160) = v12 - v10;
        *(v6 + 8) = *(v4 + 8);
        v13 = *(v4 + 16);
        v14 = 0x1000000000000000;
      }

      result = 0;
      *(v6 + 16) = v13;
      *(v6 + 20) = *(v4 + 20);
      *v7 = v11;
      *v6 = v10 & 0xFFFFFFFFFFFFFFFLL | v14;
    }
  }

  return result;
}

uint64_t mark_extent_maybe(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  if (a5 == 1)
  {
    if (a2)
    {
      v5 = *(*(a2 + 40) + 8);
    }

    else
    {
      v5 = 0;
    }

    return mark_object_allocated(result, a3, a4, v5, 0x40000000, a3, *(a2 + 56), 0, 0xFu, 2u);
  }

  return result;
}

uint64_t phys_extent_register(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v11 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v12 = *a4;
  v13 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  v63 = *a4 >> 60;
  if (!qword_100104338 || *(a2 + 14) == 1)
  {
    if ((a5 & 3) != 0)
    {
      return 92;
    }

    mark_extent_maybe(a1, a2, v11, v13, v63);
    return 0;
  }

  v15 = a4;
  if (byte_1000E9515)
  {
    v60 = a5;
    v59 = a3;
    v17 = qword_1000E93F0;
    v57 = a1;
    v58 = qword_1000E93E8;
    v18 = *qword_1000E93E8;
    v19 = *qword_1000E93F0 & 0xFFFFFFFFFFFFFFFLL;
    v62 = *qword_1000E93F0 >> 60;
  }

  else
  {
    v14 = phys_extent_diff_iterator_init(&xmmword_1000E93D8);
    if (v14)
    {
      return v14;
    }

    v60 = v8;
    v59 = a3;
    v17 = qword_1000E93F0;
    v57 = a1;
    v58 = qword_1000E93E8;
    v18 = *qword_1000E93E8;
    v19 = *qword_1000E93F0 & 0xFFFFFFFFFFFFFFFLL;
    a5 = *qword_1000E93F0 >> 60;
    LOBYTE(v62) = a5;
    if ((BYTE8(xmmword_1000E93F8) & 1) == 0)
    {
      mark_extent_maybe(v57, a2, v18, v19, a5);
    }
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  if (v60)
  {
    return sub_1000963E4(a2 + 768, v59, 0, *(a2 + 56), 0, 0);
  }

  if (!v13)
  {
    v14 = 0;
    v46 = v62;
    goto LABEL_115;
  }

  v64 = 0;
  v56 = v12 & 0xF000000000000000;
  v61 = v15;
  do
  {
    while (1)
    {
      if (BYTE8(xmmword_1000E93F8))
      {
        v18 = -1;
      }

      v20 = v18 >= v11 ? v11 : v18;
      if (*(v17 + 20) == 1)
      {
        v21 = *(a2 + 56);
        if (v18 < v11)
        {
          if (v19 >= v11 - v18)
          {
            v22 = v11 - v18;
          }

          else
          {
            v22 = v19;
          }

          v18 += v22;
          v19 -= v22;
          if (v21)
          {
            goto LABEL_88;
          }

          goto LABEL_27;
        }

        if (v11 < v18)
        {
          if (v13 >= v18 - v11)
          {
            v22 = v18 - v11;
          }

          else
          {
            v22 = v13;
          }

          v11 += v22;
          v13 -= v22;
          if (v21)
          {
            goto LABEL_88;
          }

          goto LABEL_42;
        }

        if (v13 >= v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v13;
        }

        v18 += v22;
        v19 -= v22;
        v11 += v22;
        v13 -= v22;
        if (v21)
        {
LABEL_56:
          v34 = -1;
          goto LABEL_64;
        }
      }

      else
      {
        if (v18 < v11)
        {
          if (v19 >= v11 - v18)
          {
            v22 = v11 - v18;
          }

          else
          {
            v22 = v19;
          }

          v18 += v22;
          v19 -= v22;
LABEL_27:
          if (!*(v17 + 4))
          {
            goto LABEL_88;
          }

          fsck_fail_func(0x462, 92);
          v23 = *(v17 + 4);
          HIDWORD(v64) |= v23 > 0;
          v24 = fsck_printf_warn;
          if ((v64 & 0x100000000) != 0)
          {
            v24 = fsck_printf_err;
          }

          v24("mismatch between extentref entry reference count (0) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v23, v20, v22);
          goto LABEL_78;
        }

        if (v11 < v18)
        {
          if (v13 >= v18 - v11)
          {
            v22 = v18 - v11;
          }

          else
          {
            v22 = v13;
          }

          v11 += v22;
          v13 -= v22;
LABEL_42:
          fsck_fail_func(0x463, 92);
          v32 = *(v15 + 4);
          if (v32)
          {
            HIDWORD(v64) |= v32 < 0;
            v33 = fsck_printf_warn;
            if ((v64 & 0x100000000) != 0)
            {
              v33 = fsck_printf_err;
            }

            v33("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (0) for extent (%llu + %llu)\n", v32, v20, v22);
          }

          else
          {
            fsck_printf_warn("invalid extent (%llu + %llu) with reference count (0)\n", v25, v26, v27, v28, v29, v30, v31, v20);
          }

LABEL_73:
          v34 = 0;
          goto LABEL_79;
        }

        v22 = v13 >= v19 ? v19 : v13;
        v18 += v22;
        v19 -= v22;
        v11 += v22;
        v13 -= v22;
      }

      if (*(v17 + 4) == *(v15 + 4))
      {
        goto LABEL_56;
      }

      fsck_fail_func(0x464, 92);
      v35 = *(v15 + 4);
      v36 = *(v17 + 4);
      if ((v64 & 0x100000000) != 0 || v35 < v36)
      {
        HIDWORD(v64) = 1;
        (fsck_printf_err)("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v35, v36, v20, v22);
      }

      else
      {
        HIDWORD(v64) = 0;
        (fsck_printf_warn)("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v35, v36, v20, v22);
      }

      if (!*(v17 + 4))
      {
        goto LABEL_73;
      }

      v34 = 2;
LABEL_64:
      if (v62 != v63)
      {
        if ((v60 & 2) == 0)
        {
          fsck_fail_func(0x465, 92);
        }

        fsck_printf_err("invalid kind (expected %u, actual %u) for extent (%llu + %llu)\n", a2, a3, a4, a5, a6, a7, a8, v62);
        v34 = 2;
        HIDWORD(v64) = 1;
      }

      if ((v60 & 4) != 0)
      {
LABEL_77:
        HIDWORD(v64) = 1;
LABEL_78:
        v34 = 2;
        goto LABEL_79;
      }

      if (v62 == 1)
      {
        v37 = v61[1];
        HIDWORD(v64) |= v37 > 0xFFFFFFFFFFFFFFFDLL;
        if (v37 > 0xFFFFFFFFFFFFFFFDLL)
        {
          v34 = 2;
        }
      }

      else if (v62 == 2 && v61[1] != -1)
      {
        goto LABEL_77;
      }

      if ((v64 & (v34 == -1)) != 0)
      {
        goto LABEL_77;
      }

      if (v34 == -1)
      {
LABEL_81:
        v15 = v61;
        goto LABEL_88;
      }

LABEL_79:
      if (v64)
      {
        goto LABEL_80;
      }

      v38 = *v59;
      v39 = *v59 & 0xFFFFFFFFFFFFFFFLL;
      if (v20 >= v39)
      {
        if (v20 == v39)
        {
          if (v22 == (*v61 & 0xFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_83;
          }

          HIDWORD(v64) = 1;
        }

        else
        {
          v68 = *v59;
          v45 = v61[1];
          v65 = (v20 - v38) & 0xFFFFFFFFFFFFFFFLL | v56;
          v66 = v45;
          v67 = *(v61 + 4);
          HIDWORD(v64) = 1;
          v42 = sub_1000963E4(a2 + 768, &v68, &v65, *(a2 + 56), 2, 1);
          if (v42)
          {
            return v42;
          }
        }

LABEL_80:
        LOBYTE(v64) = 1;
        if (v34 != 2)
        {
          goto LABEL_81;
        }

        goto LABEL_84;
      }

LABEL_83:
      LOBYTE(v64) = 0;
LABEL_84:
      v68 = v20 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v40 = v17[1];
      v65 = v22 & 0xFFFFFFFFFFFFFFFLL | (v62 << 60);
      v66 = v40;
      v67 = *(v17 + 4);
      if (v34)
      {
        v41 = &v65;
      }

      else
      {
        v41 = 0;
      }

      v42 = sub_1000963E4(a2 + 768, &v68, v41, *(a2 + 56), v34, BYTE4(v64) & 1);
      v15 = v61;
      if (v42)
      {
        return v42;
      }

LABEL_88:
      if (!v19)
      {
        break;
      }

LABEL_93:
      if (!v13)
      {
        goto LABEL_112;
      }
    }

    if (BYTE8(xmmword_1000E93F8))
    {
      goto LABEL_92;
    }

    v43 = (*(&xmmword_1000E93D8 + 1))(&xmmword_1000E93D8);
    if (v43)
    {
      v14 = v43;
      v48 = strerror(v43);
      fsck_printf_err("error iterating physical extent tree: %s\n", v49, v50, v51, v52, v53, v54, v55, v48);
      fsck_fail_func(0x466, v14);
      return v14;
    }

    if (BYTE8(xmmword_1000E93F8))
    {
LABEL_92:
      v19 = 0;
      goto LABEL_93;
    }

    v17 = qword_1000E93F0;
    v58 = qword_1000E93E8;
    v18 = *qword_1000E93E8;
    v19 = *qword_1000E93F0 & 0xFFFFFFFFFFFFFFFLL;
    v44 = *qword_1000E93F0 >> 60;
    mark_extent_maybe(v57, a2, *qword_1000E93E8, v19, v44);
    LOBYTE(v62) = v44;
  }

  while (v13);
LABEL_112:
  v46 = v62;
  if (v64)
  {
    v68 = *v59;
    v14 = sub_1000963E4(a2 + 768, &v68, 0, *(a2 + 56), 0, BYTE4(v64) & 1);
  }

  else
  {
    v14 = 0;
  }

LABEL_115:
  *v58 = v18;
  *v17 = v19 & 0xFFFFFFFFFFFFFFFLL | (v46 << 60);
  return v14;
}