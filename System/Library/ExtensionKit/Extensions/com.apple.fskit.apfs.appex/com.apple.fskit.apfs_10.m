uint64_t sub_10007BDE8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = 0;
  if (!a3[14])
  {
    fsck_printf_err("ersb_recovery_extents_count is non-zero (%llu), but ersb_recovery_list_oid == 0\n", a2, a3, a4, a5, a6, a7, a8, a3[13]);
    v17 = 92;
    v20 = 720;
LABEL_12:
    fsck_fail_func(v20, 92);
    v16 = 0;
    goto LABEL_13;
  }

  v9 = a3[15];
  if (!v9)
  {
    fsck_printf_err("ersb_recovery_extents_count is non-zero (%llu), but ersb_recovery_length == 0\n", a2, a3, a4, a5, a6, a7, a8, a3[13]);
    v17 = 92;
    v20 = 721;
    goto LABEL_12;
  }

  if (v9 > 0x1400000)
  {
    fsck_printf_warn("ersb_recovery_length (%llu) exceeds recovery length limit (%llu), some checks will be disabled\n", a2, a3, a4, a5, a6, a7, a8, a3[15]);
    v14 = a3 + 13;
    v13 = a3[13];
    v15 = 48 * v13;
    if ((48 * v13) <= a3[15])
    {
      v16 = 0;
      goto LABEL_19;
    }

    v21 = a3[15];
    goto LABEL_11;
  }

  v14 = a3 + 13;
  v13 = a3[13];
  v15 = 48 * v13;
  if (48 * v13 > v9)
  {
LABEL_11:
    fsck_printf_err("ersb_recovery_extents_count is %llu, extent descriptor size is %zu, expected descriptors length is %llu > ersb_recovery_length %llu\n", a2, a3, a4, a5, a6, a7, a8, v13);
    v17 = 92;
    v20 = 722;
    goto LABEL_12;
  }

  v16 = malloc_type_calloc(1uLL, a3[15], 0x151381A2uLL);
  if (!v16)
  {
    fsck_printf_err("error allocating encryption rolling recovery data buffer, ersb_recovery_length %llu\n", a2, a3, a4, a5, a6, a7, a8, a3[15]);
    v17 = 12;
    v18 = 723;
    v19 = 12;
    goto LABEL_57;
  }

LABEL_19:
  v59 = a4;
  v23 = a3[14];
  if (v23)
  {
    v24 = 0;
    while (1)
    {
      if (v24 >= a3[15])
      {
        v56 = a3[15];
        fsck_printf_err("encryption rolling recovery data extends past recovery length, oid 0x%llx, ersb_recovery_length %llu, accumulated length %llu\n", a2, a3, a4, a5, a6, a7, a8, v23);
        v17 = 92;
        v18 = 728;
        goto LABEL_56;
      }

      v25 = copy_obj(a1, a2, 0x40000000, v23, 0, 0, 28, 0, &v60, 0, 1);
      if (v25)
      {
        v17 = v25;
        fsck_printf_err("could not retrieve erb, oid 0x%llx\n", v26, v27, v28, v29, v30, v31, v32, v23);
        v18 = 724;
        v19 = 2;
        goto LABEL_57;
      }

      v33 = v60;
      if (v24 != *(v60 + 4))
      {
        fsck_printf_err("encryption rolling recovery block offset mismatch, oid 0x%llx, expected %llu, actual %llu\n", v26, v27, v28, v29, v30, v31, v32, v23);
        v17 = 92;
        v18 = 725;
        goto LABEL_56;
      }

      v34 = *(a1[1] + 36);
      v35 = v34 - 48 >= a3[15] - v24 ? a3[15] - v24 : v34 - 48;
      if (!v35)
      {
        break;
      }

      if (v9 <= 0x1400000)
      {
        memcpy(v16 + v24, v60 + 48, v35);
        v33 = v60;
      }

      v23 = v33[5];
      v24 += v35;
      free(v33);
      v60 = 0;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    v57 = *(a1[1] + 36);
    fsck_printf_err("encryption rolling recovery block with data size 0, oid 0x%llx, nx_block_size %u, recovery length %llu\n", v26, v27, v28, v29, v30, v31, v32, v23);
    v17 = 92;
    v18 = 726;
  }

  else
  {
    v24 = 0;
LABEL_33:
    v36 = a3[15];
    if (v24 >= v36)
    {
      v37 = a3[5];
      v38 = sub_10007BCD8(v37);
      if (v38)
      {
        if (v9 > 0x1400000 || !*v14)
        {
LABEL_50:
          v17 = 0;
          goto LABEL_13;
        }

        v46 = 0;
        v47 = a1[1];
        v48 = *(v47 + 36);
        v49 = *(v47 + 40);
        v50 = v16 + 5;
        while (1)
        {
          v51 = *(v50 - 2);
          if (v51 < 1 || v49 <= v51)
          {
            fsck_printf_err("recovery extent #%llu: invalid fext_pbn (0x%llx)\n", v59, v40, v41, v42, v43, v44, v45, v46);
            v17 = 92;
            v18 = 730;
            goto LABEL_56;
          }

          v53 = *(v50 - 5);
          v52 = *(v50 - 4);
          if (!v53 || (v54 = v49 * (v48 / v59), v54 <= v53) || v54 <= v52 || v54 - v52 < v53)
          {
            v58 = *(v50 - 4);
            fsck_printf_err("recovery extent #%llu: invalid prange (0x%llx+%llu), dev_bsize %u\n", v59, v40, v41, v42, v43, v44, v45, v46);
            v17 = 92;
            v18 = 732;
            goto LABEL_56;
          }

          if (*(v50 - 1) / v48 >= v49)
          {
            fsck_printf_err("recovery extent #%llu: fext_laddr (0x%llx) exceeds nx_block_count (%llu), fs_bsize %u\n", v59, v40, v41, v42, v43, v44, v45, v46);
            v17 = 92;
            v18 = 733;
            goto LABEL_56;
          }

          v55 = 8 * (v52 * v59 / v38);
          if (v55 + v15 > v36)
          {
            fsck_printf_err("recovery extent #%llu: checksums at offset %llu, length %llu exceed ersb_recovery_length %llu\n", v59, v40, v41, v42, v43, v44, v45, v46);
            v17 = 92;
            v18 = 734;
            goto LABEL_56;
          }

          if ((v37 & 0x20) != 0 && !*v50)
          {
            break;
          }

          ++v46;
          v50 += 6;
          v15 += v55;
          if (*v14 == v46)
          {
            goto LABEL_50;
          }
        }

        fsck_printf_err("recovery extent #%llu: invalid ersb_flags (0x%llx), ERSB_FLAG_CID_IS_TWEAK is set but fext_cid == 0\n", v59, v40, v41, v42, v43, v44, v45, v46);
        v17 = 92;
        v18 = 735;
      }

      else
      {
        fsck_printf_err("checksum block size is invalid, checksum_block_size enum: %llu\n", v39, v40, v41, v42, v43, v44, v45, BYTE1(v37) & 0xF);
        v17 = 92;
        v18 = 729;
      }
    }

    else
    {
      fsck_printf_err("missing encryption rolling recovery data, actual length %llu, ersb_recovery_length %llu\n", a2, a3, a4, a5, a6, a7, a8, v24);
      v17 = 92;
      v18 = 727;
    }
  }

LABEL_56:
  v19 = 92;
LABEL_57:
  fsck_fail_func(v18, v19);
LABEL_13:
  if (v60)
  {
    free(v60);
  }

  if (v16)
  {
    free(v16);
  }

  return v17;
}

uint64_t fsck_ios_encryption_rolling(uint64_t a1, uint64_t a2)
{
  if (((*(*(a2 + 40) + 264) | 0x100u) & 0x109) == 0x100)
  {
    v56 = 0;
    v57 = 0;
    v3 = sub_10007C638(a1, a2, &v57, &v56);
    if (v3)
    {
      v11 = v3;
      if (v3 != 2)
      {
        fsck_printf_err("iOS encryption rolling state object: cannot get ierso xattr\n", v4, v5, v6, v7, v8, v9, v10, v54);
        v12 = 1143;
LABEL_16:
        fsck_fail_func(v12, v11);
        return v11;
      }

      return 0;
    }

    v21 = v57;
    if (v56 <= 4)
    {
      fsck_printf_err("iOS encryption rolling state object: xattr record too small (%zu)\n", v4, v5, v6, v7, v8, v9, v10, v56);
      v11 = 92;
      v22 = 1136;
LABEL_19:
      v25 = 92;
LABEL_20:
      fsck_fail_func(v22, v25);
LABEL_21:
      v23 = v21;
      goto LABEL_22;
    }

    if ((*v57 & 3) != 2)
    {
      fsck_printf_err("iOS encryption rolling state object: xattr invalid storage type, flags (%hu)\n", v4, v5, v6, v7, v8, v9, v10, *v57);
      v11 = 92;
      v22 = 1137;
      goto LABEL_19;
    }

    v24 = v57[1];
    if (v24 + 4 != v56)
    {
      fsck_printf_err("iOS encryption rolling state object: xattr payload (%hu) does not match record size (%zu)\n", v4, v5, v6, v7, v8, v9, v10, v57[1]);
      v11 = 92;
      v22 = 1138;
      goto LABEL_19;
    }

    if (v24 <= 3)
    {
      fsck_printf_err("iOS encryption rolling state object: xattr payload (%hu) is too small\n", v4, v5, v6, v7, v8, v9, v10, v57[1]);
      v11 = 92;
      v22 = 1139;
      goto LABEL_19;
    }

    v27 = *(v57 + 1);
    if (v27 > 2)
    {
      fsck_printf_warn("iOS encryption rolling state object: ierso version (%u) unrecognized\n", v4, v5, v6, v7, v8, v9, v10, *(v57 + 1));
      fsck_fail_func(0x474, -6);
      v11 = 0;
      goto LABEL_21;
    }

    if (qword_1000B3288[v27] != v24)
    {
      v55 = *(v57 + 1);
      fsck_printf_err("iOS encryption rolling state object: size (%u), version (%u) does not match expected size (%zu)\n", v4, v5, v6, v7, v8, v9, v10, v24);
      v11 = 92;
      v22 = 1141;
      goto LABEL_19;
    }

    v28 = malloc_type_calloc(1uLL, 0x170uLL, 0x1000040BCF37258uLL);
    if (!v28)
    {
      fsck_printf_err("iOS encryption rolling state object: failed to allocate ierso\n", v29, v30, v31, v32, v33, v34, v35, v54);
      v11 = 12;
      v22 = 1142;
      v25 = 12;
      goto LABEL_20;
    }

    v36 = v28;
    __memcpy_chk();
    v44 = *v36;
    if (!*v36)
    {
      *(v36 + 32) = 1;
    }

    v45 = 48;
    if (!*(a2 + 56))
    {
      v45 = 40;
    }

    v46 = *(a2 + v45);
    v48 = *(v36 + 8);
    v47 = *(v36 + 16);
    v49 = *(v46 + 176);
    if (v47 > v48 || (v48 < v49 ? (v50 = v49 >> 60 == 0) : (v50 = 0), !v50))
    {
      fsck_printf_err("iOS encryption rolling state object: epoch unordered: current_id (%llu) <= epoch (%llu) < apfs_next_obj_id (%llu) <= MAX_JOBJ_ID (%llu)\n", v37, v38, v39, v40, v41, v42, v43, v47);
      v11 = 92;
      v51 = 1128;
LABEL_38:
      fsck_fail_func(v51, 92);
LABEL_39:
      free(v36);
      goto LABEL_21;
    }

    if (*(v36 + 24) >> 55)
    {
      fsck_printf_err("iOS encryption rolling state object: current_offset (%llu) too large\n", v37, v38, v39, v40, v41, v42, v43, *(v36 + 24));
      v11 = 92;
      v51 = 1129;
      goto LABEL_38;
    }

    v52 = *(v36 + 32);
    if ((v52 - 1) >= 2)
    {
      fsck_printf_err("iOS encryption rolling state object: (version %u) invalid policy (%u)\n", v37, v38, v39, v40, v41, v42, v43, v44);
      v11 = 92;
      v51 = 1130;
      goto LABEL_38;
    }

    v53 = *(v36 + 36);
    if (v52 == 1)
    {
      if (v53 >= 2)
      {
        fsck_printf_err("iOS encryption rolling state object: (version %u) lite rolling has invalid current_state (%u)\n", v37, v38, v39, v40, v41, v42, v43, v44);
        v51 = 1131;
LABEL_56:
        v11 = 92;
        goto LABEL_38;
      }
    }

    else if (v53 - 1 >= 2)
    {
      if (v53)
      {
        fsck_printf_err("iOS encryption rolling state object: (version %u) full rolling has unrecognized current_state (%u)\n", v37, v38, v39, v40, v41, v42, v43, v44);
        v51 = 1133;
        goto LABEL_56;
      }

      if (v47)
      {
        fsck_printf_err("iOS encryption rolling state object: (version %u) current_state unset, yet non-zero current_id (%llu)", v37, v38, v39, v40, v41, v42, v43, v44);
        v51 = 1132;
        goto LABEL_56;
      }
    }

    v11 = sub_10007C7FC(v36);
    if (!v11)
    {
      sub_10007C86C(v36);
    }

    goto LABEL_39;
  }

  v57 = 0;
  v13 = sub_10007C638(a1, a2, &v57, &v56);
  if (!v13)
  {
    fsck_printf_err("iOS encryption rolling state object: non-iOS content protected volume unexpectedly has ierso\n", v14, v15, v16, v17, v18, v19, v20, v54);
    v11 = 92;
    fsck_fail_func(0x479, 92);
    v23 = v57;
LABEL_22:
    free(v23);
    return v11;
  }

  v11 = v13;
  if (v13 != 2)
  {
    fsck_printf_err("iOS encryption rolling state object: cannot determine absence of ierso xattr\n", v14, v15, v16, v17, v18, v19, v20, v54);
    v12 = 1144;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10007C638(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = 38;
  v22 = 3804;
  v24 = 0x4000000000000003;
  v25 = 28;
  strcpy(v26, "com.apple.system.apfs.ierso");
  v8 = malloc_type_malloc(0xEDCuLL, 0xBC85CF50uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v10 = *(a2 + 48);
  v11 = 48;
  if (!*(a2 + 56))
  {
    v11 = 40;
  }

  v12 = *(a2 + v11);
  v13 = *(a2 + 48);
  if (!v10)
  {
    v13 = *(a2 + 40);
  }

  v14 = *(v12 + 116);
  v15 = *(v12 + 136);
  memset(v21, 0, sizeof(v21));
  if ((*(v13 + 56) & 0x20) != 0)
  {
    v16 = *(a2 + 16);
  }

  else
  {
    v16 = 0;
  }

  if (!v10)
  {
    v10 = *(a2 + 40);
  }

  if ((*(v10 + 56) & 0x20) != 0)
  {
    v18 = *(a2 + 20);
  }

  else
  {
    v18 = 0;
  }

  inited = tree_init_ext(v21, a1, a2, v14 & 0xC0000000, v14, 14, v16, *(*(a1 + 8) + 36), 0, 0, v18, v15, jkey_compare);
  if (inited)
  {
    v17 = inited;
  }

  else
  {
    v17 = tree_lookup(v21, *(a2 + 56), 0, &v24, &v23, 0x26u, v9, &v22);
    if (!v17)
    {
      *a3 = v9;
      *a4 = v22;
      return v17;
    }
  }

  free(v9);
  return v17;
}

uint64_t sub_10007C7FC(_DWORD *a1)
{
  if (a1[8] != 2 || a1[9] != 2 || memchr(a1 + 10, 0, 0x80uLL))
  {
    return 0;
  }

  fsck_printf_err("iOS encryption rolling state object: current_xattr is unterminated\n", v1, v2, v3, v4, v5, v6, v7, v10);
  v8 = 92;
  fsck_fail_func(0x46E, 92);
  return v8;
}

char *sub_10007C86C(uint64_t a1)
{
  result = get_timestamp();
  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  if (!v10)
  {
    v10 = result;
  }

  if (!v11)
  {
    v11 = result;
  }

  if (v10 > v11 || v11 > result)
  {
    fsck_printf_warn("iOS encryption rolling state object: (version %u) timestamps unordered: start_time (%llu) <= end_time (%llu) <= current_time (%llu)\n", v3, v4, v5, v6, v7, v8, v9, *a1);

    return fsck_fail_func(0x46F, -4);
  }

  return result;
}

uint64_t validate_snap_name(uint64_t a1, uint64_t *a2, int a3, unint64_t *a4, int a5, int a6, _DWORD *a7)
{
  *a7 = 0;
  if ((a3 - 267) <= 0xFFFFFEFE)
  {
    if (a6)
    {
      v9 = _apfs_type_to_str(*a2 >> 60);
      v87 = *a2 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = 330;
LABEL_37:
      v61 = 92;
      fsck_fail_func(v17, 92);
      return v61;
    }

    return 92;
  }

  v18 = *a2;
  if ((~*a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    if (a6)
    {
      v62 = _apfs_type_to_str(v18 >> 60);
      v92 = *a2 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v63, v64, v65, v66, v67, v68, v69, v62);
      v17 = 331;
      goto LABEL_37;
    }

    return 92;
  }

  v23 = *(a2 + 4);
  if (v23 + 10 != a3 && a6 != 0)
  {
    v25 = _apfs_type_to_str(v18 >> 60);
    v95 = *(a2 + 4);
    v88 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid name_len (%u), given key length (%u)\n", v26, v27, v28, v29, v30, v31, v32, v25);
    fsck_fail_func(0x14D, -9);
    *a7 |= 2u;
    v23 = *(a2 + 4);
  }

  if ((v23 - 257) <= 0xFF00u && a6 != 0)
  {
    v34 = _apfs_type_to_str(*a2 >> 60);
    v89 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v96 = *(a2 + 4);
    fsck_printf_warn("%s (id %llu): invalid name_len (%u)\n", v35, v36, v37, v38, v39, v40, v41, v34);
    *a7 |= 2u;
    fsck_fail_func(0x14C, -9);
    v23 = *(a2 + 4);
  }

  if (*(a2 + v23 + 9))
  {
    v42 = a6 == 0;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = _apfs_type_to_str(*a2 >> 60);
    v99 = *(a2 + 4);
    v90 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v44, v45, v46, v47, v48, v49, v50, v43);
    *a7 |= 1u;
    fsck_fail_func(0x14E, -9);
    v23 = *(a2 + 4);
  }

  if (sub_10007CC60(a2 + 10, v23) && a6)
  {
    v51 = _apfs_type_to_str(*a2 >> 60);
    v97 = *(a2 + 4);
    v91 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v52, v53, v54, v55, v56, v57, v58, v51);
    *a7 |= 1u;
    fsck_fail_func(0x14F, -9);
  }

  if (a5 != 8)
  {
    if (a6)
    {
      v70 = _apfs_type_to_str(*a2 >> 60);
      v93 = *a2 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v71, v72, v73, v74, v75, v76, v77, v70);
      v17 = 336;
      goto LABEL_37;
    }

    return 92;
  }

  v59 = *a4;
  if (!*a4)
  {
    if (!a6)
    {
      return 92;
    }

LABEL_36:
    v78 = _apfs_type_to_str(*a2 >> 60);
    v94 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v98 = *a4;
    fsck_printf_err("%s (id %llu): invalid snap_xid (%llu)\n", v79, v80, v81, v82, v83, v84, v85, v78);
    v17 = 337;
    goto LABEL_37;
  }

  v60 = *(*(a1 + 40) + 16);
  if (v59 <= v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = 92;
  }

  if (v59 > v60 && (a6 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v61;
}

uint64_t sub_10007CC60(UInt8 *bytes, CFIndex numBytes)
{
  v2 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, numBytes, 0x8000100u, 0, kCFAllocatorNull);
  if (v2)
  {
    CFRelease(v2);
    return 0;
  }

  else
  {
    v3 = 92;
    fsck_fail_func(0xB7, 92);
  }

  return v3;
}

uint64_t sub_10007CEB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = *a3;
  if (a4 != 8)
  {
    v23 = _apfs_type_to_str(v13 >> 60);
    v141 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v24, v25, v26, v27, v28, v29, v30, v23);
    v22 = 313;
    goto LABEL_6;
  }

  if ((v13 & 0xFFFFFFFFFFFFFFFLL) == 0 || (v13 & 0xFFFFFFFFFFFFFFFLL) > *(*(a2 + 40) + 16))
  {
    v14 = _apfs_type_to_str(v13 >> 60);
    v140 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = 314;
    goto LABEL_6;
  }

  if ((a6 - 307) <= 0xFFFFFEFE)
  {
    v36 = _apfs_type_to_str(v13 >> 60);
    v142 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v37, v38, v39, v40, v41, v42, v43, v36);
    v22 = 315;
    goto LABEL_6;
  }

  if (!*(a5 + 8))
  {
    v53 = _apfs_type_to_str(v13 >> 60);
    v144 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v154 = *(a5 + 8);
    fsck_printf_err("%s (id %llu): invalid sblock_oid (%llu)\n", v54, v55, v56, v57, v58, v59, v60, v53);
    v22 = 317;
    goto LABEL_6;
  }

  v44 = *(a5 + 32);
  if (v44 <= 1)
  {
    v45 = _apfs_type_to_str(v13 >> 60);
    v143 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v153 = *(a5 + 32);
    fsck_printf_err("%s (id %llu): invalid inum (%llu)\n", v46, v47, v48, v49, v50, v51, v52, v45);
    v22 = 320;
    goto LABEL_6;
  }

  if (v44 <= 0xF && (v44 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v64 = _apfs_type_to_str(v13 >> 60);
    v145 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v155 = *(a5 + 32);
    fsck_printf_warn("%s (id %llu): invalid inum (%llu)\n", v65, v66, v67, v68, v69, v70, v71, v64);
    fsck_fail_func(0x141, -2);
    v44 = *(a5 + 32);
  }

  if (*(a7 + 40) < v44 + 1)
  {
    *(a7 + 40) = v44 + 1;
  }

  if (!*(a5 + 40))
  {
    v88 = _apfs_type_to_str(*a3 >> 60);
    v147 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v157 = *(a5 + 40);
    fsck_printf_err("%s (id %llu): invalid extentref_tree_type (0x%x)\n", v89, v90, v91, v92, v93, v94, v95, v88);
    v22 = 322;
    goto LABEL_6;
  }

  if (*(a5 + 44) >= 4u)
  {
    v72 = _apfs_type_to_str(*a3 >> 60);
    v156 = *(a5 + 44);
    v146 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v73, v74, v75, v76, v77, v78, v79, v72);
    fsck_fail_func(0x143, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v80, v81, v82, v83, v84, v85, *(a5 + 44) & 0xFC))
      {
        *(a5 + 44) &= 3u;
        *a8 = 1;
      }
    }
  }

  v86 = *(a5 + 48);
  if (v86 + 50 == a6)
  {
    v87 = 0;
  }

  else
  {
    v96 = _apfs_type_to_str(*a3 >> 60);
    v158 = *(a5 + 48);
    v148 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid name_len (%u), given value length (%u)\n", v97, v98, v99, v100, v101, v102, v103, v96);
    fsck_fail_func(0x145, 92);
    v86 = *(a5 + 48);
    v87 = 2 * (v86 + 50 > a6);
  }

  if ((v86 - 257) <= 0xFF00u)
  {
    v104 = _apfs_type_to_str(*a3 >> 60);
    v149 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v159 = *(a5 + 48);
    fsck_printf_err("%s (id %llu): invalid name_len (%u)\n", v105, v106, v107, v108, v109, v110, v111, v104);
    fsck_fail_func(0x144, 92);
    v86 = *(a5 + 48);
    v87 = 2;
  }

  if (*(a5 + 50 + v86 - 1))
  {
    v112 = _apfs_type_to_str(*a3 >> 60);
    v162 = *(a5 + 48);
    v150 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v113, v114, v115, v116, v117, v118, v119, v112);
    v87 |= 1u;
    fsck_fail_func(0x146, -9);
    v86 = *(a5 + 48);
  }

  if (sub_10007CC60((a5 + 50), v86))
  {
    v120 = _apfs_type_to_str(*a3 >> 60);
    v160 = *(a5 + 48);
    v151 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v121, v122, v123, v124, v125, v126, v127, v120);
    LOBYTE(v87) = v87 | 1;
    fsck_fail_func(0x147, -9);
  }

  else if (!v87)
  {
LABEL_41:
    v31 = snapshot_register_meta(a3, a5);
    if (v31)
    {
      goto LABEL_7;
    }

    ++*(a7 + 32);
    v128 = *(a5 + 8);
    v129 = *(*(a1 + 8) + 40);
    v130 = *a3;
    if (v129 - 1 >= v128 && v129 >= 2 && v128 >= 1 && v129 > v128)
    {
      mark_object_allocated(a1, v128, 1uLL, 0, 0x40000000, v128, v130 & 0xFFFFFFFFFFFFFFFLL, 13, &_mh_execute_header, &_mh_execute_header >> 32);
      return 0;
    }

    v131 = _apfs_type_to_str(v130 >> 60);
    v152 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v161 = *(a5 + 8);
    fsck_printf_err("%s (id %llu): invalid sblock_oid (%llu)\n", v132, v133, v134, v135, v136, v137, v138, v131);
    v22 = 1244;
LABEL_6:
    v31 = 92;
    fsck_fail_func(v22, 92);
LABEL_7:
    print_jobj_key_val_info(a2, a3, a4, a5, a6, v32, v33, v34, v139);
    return v31;
  }

  if (a6 == 50)
  {
    v31 = 92;
  }

  else
  {
    v31 = snap_meta_repair_name(a1, a2, a3, a5, a6, v87, a8);
  }

  if ((v87 & 2) == 0 || !v31)
  {
    goto LABEL_41;
  }

  return v31;
}

uint64_t sub_10007D3EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  if (a4 != 8)
  {
    v31 = _apfs_type_to_str(v12 >> 60);
    v105 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v32, v33, v34, v35, v36, v37, v38, v31);
    print_jobj_key_val_info(a2, a3, a4, a5, a6, v39, v40, v41, v102);
    v42 = 92;
    v43 = 205;
LABEL_16:
    v55 = 92;
    goto LABEL_17;
  }

  if (a6 != 20)
  {
    v44 = _apfs_type_to_str(v12 >> 60);
    v106 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v45, v46, v47, v48, v49, v50, v51, v44);
    print_jobj_key_val_info(a2, a3, 8, a5, a6, v52, v53, v54, v103);
    v42 = 92;
    v43 = 206;
    goto LABEL_16;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFLL;
  v15 = *a5;
  v16 = *a5 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *(*(a1 + 8) + 40);
  if (v17 > v16 && v14 != 0 && v17 > v14 && v17 - v16 >= v14)
  {
    v29 = 0;
  }

  else
  {
    v21 = _apfs_type_to_str(v12 >> 60);
    v104 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): Bad phys_block_num + len (%llu) for physical extent record\n", v22, v23, v24, v25, v26, v27, v28, v21);
    fsck_fail_func(0x467, 92);
    v29 = 1;
  }

  v57 = v15 >> 60;
  if (!v16)
  {
    v58 = _apfs_type_to_str(*a3 >> 60);
    v107 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): length is 0\n", v59, v60, v61, v62, v63, v64, v65, v58);
    fsck_fail_func(0xCF, 92);
    v29 = 1;
  }

  if (v57 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v66 = _apfs_type_to_str(*a3 >> 60);
    v108 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): unknown kind (%u)\n", v67, v68, v69, v70, v71, v72, v73, v66);
    fsck_fail_func(0x33A, 92);
    v29 = v29 | 2;
  }

  v74 = *(a5 + 1);
  if (!v74)
  {
    v85 = _apfs_type_to_str(*a3 >> 60);
    v110 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): owning_obj_id is 0\n", v86, v87, v88, v89, v90, v91, v92, v85);
    fsck_fail_func(0xD0, 92);
    v29 = v29 | 4;
LABEL_34:
    print_jobj_key_val_info(a2, a3, 8, a5, 20, a6, a7, a8, v101);
    goto LABEL_35;
  }

  if (v57 == 2 && v74 != -1)
  {
    v75 = _apfs_type_to_str(*a3 >> 60);
    v109 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v112 = *(a5 + 1);
    fsck_printf_err("%s (id %llu): invalid owning_obj_id (%llu) for update extent\n", v76, v77, v78, v79, v80, v81, v82, v75);
    v83 = 1230;
    v84 = 92;
LABEL_32:
    fsck_fail_func(v83, v84);
    goto LABEL_33;
  }

  if (v57 == 1 && v74 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v93 = _apfs_type_to_str(*a3 >> 60);
    *(a5 + 1);
    v111 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): owning_obj_id is '%s'\n", v94, v95, v96, v97, v98, v99, v100, v93);
    v83 = 988;
    v84 = -2;
    goto LABEL_32;
  }

LABEL_33:
  if (v29)
  {
    goto LABEL_34;
  }

LABEL_35:
  v42 = phys_extent_register(a1, a2, a3, a5, v29, a6, a7, a8);
  if (!v42)
  {
    return v42;
  }

  v43 = 827;
  v55 = v42;
LABEL_17:
  fsck_fail_func(v43, v55);
  return v42;
}

uint64_t sub_10007D704(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = *a3;
  if (a4 != 8)
  {
    v25 = _apfs_type_to_str(v13 >> 60);
    v358 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v26, v27, v28, v29, v30, v31, v32, v25);
    v23 = 92;
    v24 = 218;
    goto LABEL_5;
  }

  v14 = (v13 & 0xFFFFFFFFFFFFFFFLL);
  if ((v13 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v15 = _apfs_type_to_str(v13 >> 60);
    v357 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v16, v17, v18, v19, v20, v21, v22, v15);
    v23 = 92;
    v24 = 219;
LABEL_5:
    v33 = 92;
LABEL_6:
    fsck_fail_func(v24, v33);
LABEL_7:
    print_jobj_key_val_info(a2, a3, a4, a5, a6, v34, v35, v36, v354);
    return v23;
  }

  v39 = a7;
  v41 = (v14 - 4);
  if (v14 <= 0xF && (v14 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v43 = _apfs_type_to_str(v13 >> 60);
    v359 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v44, v45, v46, v47, v48, v49, v50, v43);
    fsck_fail_func(0xDC, -2);
  }

  if (v39[5] <= v14)
  {
    v39[5] = v14 + 1;
  }

  if (a6 <= 0x5B)
  {
    v51 = _apfs_type_to_str(*a3 >> 60);
    v360 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v52, v53, v54, v55, v56, v57, v58, v51);
    v23 = 92;
    v24 = 221;
    goto LABEL_5;
  }

  v59 = *(a5 + 80) >> 12;
  if (v59 <= 0xE)
  {
    v60 = 1 << v59;
    if ((v60 & 0x1556) != 0)
    {
      goto LABEL_20;
    }

    if ((v60 & 0x4001) != 0)
    {
      v95 = _apfs_type_to_str(*a3 >> 60);
      v365 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v395 = *(a5 + 80) & 0xF000;
      fsck_printf_err("%s (id %llu): invalid type (0%o)\n", v96, v97, v98, v99, v100, v101, v102, v95);
      v23 = 92;
      v24 = 222;
      goto LABEL_5;
    }
  }

  v151 = _apfs_type_to_str(*a3 >> 60);
  v371 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v401 = *(a5 + 80) & 0xF000;
  fsck_printf_warn("%s (id %llu): invalid type (0%o)\n", v152, v153, v154, v155, v156, v157, v158, v151);
  fsck_fail_func(0xDF, -5);
LABEL_20:
  if (!*a5)
  {
    v87 = _apfs_type_to_str(*a3 >> 60);
    v364 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v394 = *a5;
    fsck_printf_err("%s (id %llu): invalid parent_id (%llu)\n", v88, v89, v90, v91, v92, v93, v94, v87);
    v23 = 92;
    v24 = 224;
    goto LABEL_5;
  }

  if ((*a5 - 16) >= 0xFFFFFFFFFFFFFFF4)
  {
    v61 = _apfs_type_to_str(*a3 >> 60);
    v361 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v391 = *a5;
    fsck_printf_warn("%s (id %llu): invalid parent_id (%llu)\n", v62, v63, v64, v65, v66, v67, v68, v61);
    fsck_fail_func(0xE1, -2);
  }

  if (v41 <= 0xFFFFFFFFFFFFFFFDLL && *a5 == 1)
  {
    v69 = _apfs_type_to_str(*a3 >> 60);
    v362 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v392 = *a5;
    fsck_printf_err("%s (id %llu): invalid parent_id (%llu) for regular directory\n", v70, v71, v72, v73, v74, v75, v76, v69);
    fsck_fail_func(0xE2, 92);
    v434 = 0;
    v433 = 0;
    xfield = get_xfield((a5 + 92), a6 - 92, 4, &v434, &v433, 0, 0);
    if ((*(a5 + 80) & 0xF000) == 0x4000 && !xfield && !strncmp(v434, ".DocumentRevisions-V100", v433) && fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: parent_id (%llu)? ", a3, a4, a5, a6, a7, a8, *a5))
    {
      *a5 = 2;
      *a8 = 1;
    }

    else
    {
      *(a2 + 13) = 1;
    }
  }

  v78 = *a5;
  if (v14 == 2)
  {
    if (v78 != 1)
    {
      v159 = _apfs_type_to_str(*a3 >> 60);
      v372 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v402 = *a5;
      fsck_printf_err("%s (id %llu): invalid parent_id (%llu) for root directory\n", v160, v161, v162, v163, v164, v165, v166, v159);
      v23 = 92;
      v24 = 227;
      goto LABEL_5;
    }

LABEL_37:
    v103 = 2;
    goto LABEL_39;
  }

  if (v14 == 3)
  {
    if (v78 != 1)
    {
      v79 = _apfs_type_to_str(*a3 >> 60);
      v363 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v393 = *a5;
      fsck_printf_err("%s (id %llu): invalid parent_id (%llu) for private directory\n", v80, v81, v82, v83, v84, v85, v86, v79);
      v23 = 92;
      v24 = 228;
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  v103 = v78 + 1;
LABEL_39:
  if (v39[5] < v103)
  {
    v39[5] = v103;
  }

  v104 = *(a5 + 8);
  if (!v104)
  {
    LOBYTE(v434) = 0;
    v113 = is_file_in_purgatory(a1, a2, v39[8], *a3 & 0xFFFFFFFFFFFFFFFLL, &v434);
    if (v113)
    {
      v23 = v113;
      v24 = 1263;
      v33 = v23;
      goto LABEL_6;
    }

    if ((v434 & 1) == 0)
    {
      v192 = _apfs_type_to_str(*a3 >> 60);
      v375 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v405 = *(a5 + 8);
      fsck_printf_err("%s (id %llu): invalid private_id (%llu)\n", v193, v194, v195, v196, v197, v198, v199, v192);
      v23 = 92;
      v24 = 229;
      goto LABEL_5;
    }

    v104 = *(a5 + 8);
    v41 = (v14 - 4);
  }

  if (v104 == 1)
  {
    v105 = _apfs_type_to_str(*a3 >> 60);
    v366 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v396 = *(a5 + 8);
    fsck_printf_err("%s (id %llu): invalid private_id (%llu)\n", v106, v107, v108, v109, v110, v111, v112, v105);
    v23 = 92;
    v24 = 1264;
    goto LABEL_5;
  }

  if (v104 <= 0xF && (v104 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v114 = _apfs_type_to_str(*a3 >> 60);
    v367 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v397 = *(a5 + 8);
    fsck_printf_warn("%s (id %llu): invalid private_id (%llu)\n", v115, v116, v117, v118, v119, v120, v121, v114);
    fsck_fail_func(0xE6, -2);
    v104 = *(a5 + 8);
  }

  v122 = v104 + 1;
  if (v39[5] < v122)
  {
    v39[5] = v122;
  }

  v428 = v41;
  if ((*(a5 + 80) & 0xF000) != 0x4000)
  {
    if ((*(a5 + 56) & 0x80000000) != 0)
    {
      v200 = _apfs_type_to_str(*a3 >> 60);
      v376 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v406 = *(a5 + 56);
      fsck_printf_err("%s (id %llu): invalid nlink (%d)\n", v201, v202, v203, v204, v205, v206, v207, v200);
      v23 = 92;
      v24 = 236;
      goto LABEL_5;
    }

LABEL_67:
    v167 = *(a5 + 48);
    if (v167 >> 31)
    {
      v168 = _apfs_type_to_str(*a3 >> 60);
      v403 = *(a5 + 48);
      v373 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_warn("%s (id %llu): unknown internal_flags (0x%llx / known flags are: 0x%llx)\n", v169, v170, v171, v172, v173, v174, v175, v168);
      fsck_fail_func(0xED, -3);
      v167 = *(a5 + 48);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        v176 = fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", a3, a4, a5, a6, a7, a8, 0);
        v167 = *(a5 + 48);
        if (v176)
        {
          v167 = *(a5 + 48) & 0x7FFFFFFFLL;
          *(a5 + 48) = v167;
          *a8 = 1;
        }
      }
    }

    if ((v167 & 0x800000) != 0)
    {
      if ((*(*(a2 + 40) + 56) & 0x40) != 0)
      {
        v177 = v167 & 8;
        if ((v167 & 8) != 0 && (*(a5 + 80) & 0xF000) == 0x8000)
        {
          pfkur_register_file_id(v14, a2, a3, a4, a5, a6, a7, a8);
          v167 = *(a5 + 48);
          goto LABEL_88;
        }
      }

      else
      {
        v177 = v167 & 8;
      }

      v178 = _apfs_type_to_str(*a3 >> 60);
      if (v177)
      {
        v404 = *(a5 + 48);
        v421 = *(a5 + 80) & 0xF000;
        v374 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): invalid internal_flags (0x%llx), given type (0%o)\n", v179, v180, v181, v182, v183, v184, v185, v178);
      }

      else
      {
        v377 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v407 = *(a5 + 48);
        fsck_printf_err("%s (id %llu): invalid internal_flags (0x%llx), inconsistent protection class\n", v179, v180, v181, v182, v183, v184, v185, v178);
      }

      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: internal_flags (0x%llx)? ", v186, v187, v188, v189, v190, v191, *(a5 + 48)))
      {
        v23 = 92;
        v24 = 972;
        goto LABEL_5;
      }

      v167 = *(a5 + 48) & 0xFFFFFFFFFF7FFFFFLL;
      *(a5 + 48) = v167;
      *a8 = 1;
    }

LABEL_88:
    if ((*(a5 + 80) & 0xF000) != 0x4000 && (v167 & 4) != 0)
    {
      v208 = _apfs_type_to_str(*a3 >> 60);
      v408 = *(a5 + 48);
      v422 = *(a5 + 80) & 0xF000;
      v378 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid internal_flags (0x%llx), given type (0%o)\n", v209, v210, v211, v212, v213, v214, v215, v208);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: internal_flags (0x%llx)? ", v216, v217, v218, v219, v220, v221, *(a5 + 48)))
      {
        v23 = 92;
        v24 = 238;
        goto LABEL_5;
      }

      v167 = *(a5 + 48) & 0xFFFFFFFFFFFFFFFBLL;
      *(a5 + 48) = v167;
      *a8 = 1;
    }

    if ((v167 & 0x800000) != 0 && (*(*(a2 + 40) + 264) & 0x109) != 0x100)
    {
      v222 = _apfs_type_to_str(*a3 >> 60);
      v409 = *(a5 + 48);
      v423 = *(*(a2 + 40) + 264);
      v379 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_warn("%s (id %llu): invalid internal_flags (0x%llx) given apfs_fs_flags (0x%llx) PFK bit\n", v223, v224, v225, v226, v227, v228, v229, v222);
      fsck_fail_func(0x5E5, -3);
      v236 = fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: internal_flags (0x%llx)? ", v230, v231, v232, v233, v234, v235, *(a5 + 48));
      v167 = *(a5 + 48);
      if (v236)
      {
        v167 &= ~0x800000uLL;
        *(a5 + 48) = v167;
        *a8 = 1;
      }
    }

    if ((v167 & 0x70000000) != 0 && (*(*(a2 + 40) + 48) & 8) == 0)
    {
      v237 = _apfs_type_to_str(*a3 >> 60);
      v410 = *(a5 + 48);
      v424 = *(*(a2 + 40) + 48);
      v380 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_warn("%s (id %llu): invalid internal_flags (0x%llx) given volume readonly compatible features (0x%llx)\n", v238, v239, v240, v241, v242, v243, v244, v237);
      fsck_fail_func(0x5E6, -3);
      v251 = fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: internal_flags (0x%llx)? ", v245, v246, v247, v248, v249, v250, *(a5 + 48));
      v167 = *(a5 + 48);
      if (v251)
      {
        v167 &= 0xFFFFFFFF8FFFFFFFLL;
        *(a5 + 48) = v167;
        *a8 = 1;
      }
    }

    if ((v167 & 6) == 4)
    {
      v252 = _apfs_type_to_str(*a3 >> 60);
      v381 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v411 = *(a5 + 48);
      fsck_printf_warn("%s (id %llu): invalid internal_flags (0x%llx), (dir-stats origin but not dir-stats maintained)\n", v253, v254, v255, v256, v257, v258, v259, v252);
      fsck_fail_func(0x532, -3);
      v167 = *(a5 + 48);
    }

    if ((v167 & 0x20000002) == 0x20000000)
    {
      v260 = _apfs_type_to_str(*a3 >> 60);
      v382 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v412 = *(a5 + 48);
      fsck_printf_warn("%s (id %llu): invalid internal_flags (0x%llx), (dir-stats SAF but not dir-stats maintained)\n", v261, v262, v263, v264, v265, v266, v267, v260);
      fsck_fail_func(0x533, -3);
    }

    if (*(a5 + 60) >= 8u)
    {
      v268 = _apfs_type_to_str(*a3 >> 60);
      v383 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v413 = *(a5 + 60);
      fsck_printf_err("%s (id %llu): invalid default_protection_class (%u)\n", v269, v270, v271, v272, v273, v274, v275, v268);
      v23 = 92;
      v24 = 239;
      goto LABEL_5;
    }

    if ((*(a5 + 70) & 0xBF60) != 0)
    {
      v276 = _apfs_type_to_str(*a3 >> 60);
      v384 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v414 = *(a5 + 68);
      fsck_printf_warn("%s (id %llu): invalid bsd_flags (0x%x)\n", v277, v278, v279, v280, v281, v282, v283, v276);
      fsck_fail_func(0xF0, -3);
    }

    if (*(a5 + 82))
    {
      v284 = _apfs_type_to_str(*a3 >> 60);
      v385 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v415 = *(a5 + 82);
      fsck_printf_warn("%s (id %llu): invalid pad1 (0x%hx)\n", v285, v286, v287, v288, v289, v290, v291, v284);
      fsck_fail_func(0xF1, -10);
    }

    if ((*(*(a2 + 40) + 57) & 2) != 0 && (*(a5 + 80) & 0xB000 | 0x4000) == 0x6000 && !*(a5 + 84))
    {
      v292 = _apfs_type_to_str(*a3 >> 60);
      v386 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v416 = *(a5 + 80);
      fsck_printf_warn("%s (id %llu): zero rdev on char/block device (mode %u)\n", v293, v294, v295, v296, v297, v298, v299, v292);
      fsck_fail_func(0x4C0, 92);
    }

    if (*(a5 + 84) && (*(a5 + 50) & 4) == 0)
    {
      if ((*(*(a2 + 40) + 57) & 2) != 0)
      {
        v314 = *(a5 + 80) & 0xF000;
        if (v314 != 0x2000 && v314 != 0x4000 && v314 != 24576)
        {
          v315 = _apfs_type_to_str(*a3 >> 60);
          v426 = *(a5 + 48);
          v427 = *(a5 + 80);
          v388 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v418 = *(a5 + 84);
          fsck_printf_warn("%s (id %llu): uncompressed_size/rdev/dir_nlink union field is set (%llu) but inode flags and mode do not indicate it should (flags: 0x%llx, mode %u)\n", v316, v317, v318, v319, v320, v321, v322, v315);
          fsck_fail_func(0x4AC, 92);
          if (fsckAskPrompt(fsck_apfs_ctx, "Clear uncompressed size/rdev/dir_nlink? ", v323, v324, v325, v326, v327, v328, v356))
          {
            *(a5 + 84) = 0;
            *a8 = 1;
          }
        }

        if (*(a5 + 88))
        {
          v329 = _apfs_type_to_str(*a3 >> 60);
          v389 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v419 = *(a5 + 88);
          fsck_printf_warn("%s (id %llu): invalid pad2 (0x%x)\n", v330, v331, v332, v333, v334, v335, v336, v329);
          fsck_fail_func(0x4C1, -10);
        }
      }

      else
      {
        v300 = _apfs_type_to_str(*a3 >> 60);
        v417 = *(a5 + 84);
        v425 = *(a5 + 48);
        v387 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_warn("%s (id %llu): uncompressed size is set (%llu) but has-uncompressed-size flag is not set (flags: 0x%llx)\n", v301, v302, v303, v304, v305, v306, v307, v300);
        fsck_fail_func(0xF2, 92);
        if (fsckAskPrompt(fsck_apfs_ctx, "Clear uncompressed size? ", v308, v309, v310, v311, v312, v313, v355))
        {
          *(a5 + 84) = 0;
          *a8 = 1;
        }
      }
    }

    v430 = 0u;
    v431 = 0u;
    v429 = 0u;
    v432 = a5;
    v337 = sub_100082540(a1, a2, a3, (a5 + 92), (a6 - 92), sub_10008276C, v39, a8, &v429);
    if (v337 || (v337 = sub_100083848(a1, a2, v39, &v429, a3, a8), v337))
    {
      v23 = v337;
      v338 = _apfs_type_to_str(*a3 >> 60);
      v390 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid xfields\n", v339, v340, v341, v342, v343, v344, v345, v338);
      goto LABEL_7;
    }

    if (v39[8])
    {
      v346 = 0;
    }

    else
    {
      v346 = a2 + 768;
    }

    v347 = inode_register(a1, a2, v346, v14, a5, *(&v429 + 1), v431, *(&v431 + 1));
    if (v347 || (*(a5 + 48) & 0x10) != 0 && (*(a5 + 80) & 0xF000) == 0x8000 && (v430 >= *(&v430 + 1) ? (v350 = v430 - *(&v430 + 1)) : (v350 = 0), !BYTE5(v429) ? (v351 = 0) : (v351 = v431), !BYTE2(v429) ? (v352 = 0) : (v352 = *(&v429 + 1)), v347 = clone_mapping_register_inode(v14, a5, a6, v350, v351, v352), v347) || *(&v431 + 1) && (v347 = clonegroup_register_inode(v14, a5, a6, v348, v349, v34, v35, v36), v347))
    {
      v23 = v347;
      goto LABEL_7;
    }

    if ((*(a5 + 48) & 1) == 0)
    {
      v353 = *(a5 + 80) & 0xF000;
      if (v353 == 40960)
      {
        v39 += 2;
      }

      else if (v353 != 0x8000)
      {
        if (v353 == 0x4000)
        {
          if (v428 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_159;
          }

          ++v39;
        }

        else
        {
          v39 += 3;
        }
      }

      ++*v39;
    }

LABEL_159:
    if ((*(*(a2 + 40) + 57) & 2) == 0 || (*(a5 + 50) & 8) == 0)
    {
      return 0;
    }

    v23 = purgeable_register_inode(a2, v14);
    if (!v23)
    {
      return v23;
    }

    goto LABEL_7;
  }

  v123 = v39[8];
  if (v123)
  {
    v124 = 0;
  }

  else
  {
    v124 = a2 + 768;
  }

  v23 = dir_register(a1, a2, v123, v14, v124, a6, a7, a8);
  if (!v23)
  {
    v125 = *(a5 + 56);
    if (v125 < 0)
    {
      v126 = _apfs_type_to_str(*a3 >> 60);
      v368 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v398 = *(a5 + 56);
      fsck_printf_warn("%s (id %llu): invalid nchildren (%d)\n", v127, v128, v129, v130, v131, v132, v133, v126);
      fsck_fail_func(0x4BE, -8);
      v125 = *(a5 + 56);
    }

    dir_register_nchildren(v14, v125);
    if ((*(*(a2 + 40) + 57) & 2) != 0)
    {
      v134 = *(a5 + 84);
      if (v134 < 0)
      {
        v135 = _apfs_type_to_str(*a3 >> 60);
        v369 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v399 = *(a5 + 84);
        fsck_printf_warn("%s (id %llu): invalid dir_nlink (%d)\n", v136, v137, v138, v139, v140, v141, v142, v135);
        fsck_fail_func(0x4BF, -8);
        v134 = *(a5 + 84);
      }

      if (*(a5 + 56) < v134)
      {
        v143 = _apfs_type_to_str(*a3 >> 60);
        v400 = *(a5 + 84);
        v420 = *(a5 + 56);
        v370 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_warn("%s (id %llu): directory nlink value %d is greater than nchildren (%d)\n", v144, v145, v146, v147, v148, v149, v150, v143);
        fsck_fail_func(0x483, -8);
        v134 = *(a5 + 84);
      }

      dir_register_nlink(v14, v134);
    }

    goto LABEL_67;
  }

  return v23;
}

uint64_t sub_10007E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, void *a7, _DWORD *a8)
{
  v13 = *a3;
  v242 = 0;
  if ((a4 - 777) <= 0xFFFFFD00)
  {
    v14 = _apfs_type_to_str(v13 >> 60);
    v204 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v15, v16, v17, v18, v19, v20, v21, v14);
    updated = 92;
    v23 = 257;
LABEL_20:
    v70 = 92;
LABEL_21:
    fsck_fail_func(v23, v70);
LABEL_22:
    print_jobj_key_val_info(a2, a3, a4, a5, a6, v71, v72, v73, v203);
    return updated;
  }

  v24 = v13 & 0xFFFFFFFFFFFFFFFLL;
  if ((v13 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v25 = _apfs_type_to_str(v13 >> 60);
    v205 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v26, v27, v28, v29, v30, v31, v32, v25);
    updated = 92;
    v23 = 258;
    goto LABEL_20;
  }

  if (v24 <= 0xF && (v24 > 7 || ((1 << v13) & 0x8C) == 0))
  {
    v37 = _apfs_type_to_str(v13 >> 60);
    v206 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v38, v39, v40, v41, v42, v43, v44, v37);
    fsck_fail_func(0x103, -2);
  }

  if (a7[5] <= v24)
  {
    a7[5] = v24 + 1;
  }

  v45 = *(a3 + 8);
  if ((v45 - 767) <= 0xFD02u)
  {
    v46 = _apfs_type_to_str(*a3 >> 60);
    v207 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v223 = *(a3 + 8);
    fsck_printf_err("%s (id %llu): invalid name_len (%u)\n", v47, v48, v49, v50, v51, v52, v53, v46);
    updated = 92;
    v23 = 260;
    goto LABEL_20;
  }

  if (a4 != (v45 + 10))
  {
    v62 = _apfs_type_to_str(*a3 >> 60);
    v231 = *(a3 + 8);
    v209 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u), given name_len (%u)\n", v63, v64, v65, v66, v67, v68, v69, v62);
    updated = 92;
    v23 = 261;
    goto LABEL_20;
  }

  if (*(a3 + 10 + (v45 - 1)))
  {
    v54 = _apfs_type_to_str(*a3 >> 60);
    v235 = *(a3 + 8);
    v208 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v55, v56, v57, v58, v59, v60, v61, v54);
    updated = 92;
    v23 = 262;
    goto LABEL_20;
  }

  if (sub_10007CC60((a3 + 10), v45))
  {
    v77 = _apfs_type_to_str(*a3 >> 60);
    v224 = *(a3 + 8);
    v210 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v78, v79, v80, v81, v82, v83, v84, v77);
    fsck_fail_func(0x107, -9);
  }

  if (a6 <= 3)
  {
    v85 = _apfs_type_to_str(*a3 >> 60);
    v211 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v86, v87, v88, v89, v90, v91, v92, v85);
    updated = 92;
    v23 = 264;
    goto LABEL_20;
  }

  __s1 = (a3 + 10);
  v93 = *a5;
  if ((v93 & 0xFFE8) != 0)
  {
    v94 = _apfs_type_to_str(*a3 >> 60);
    v225 = *a5;
    v212 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v95, v96, v97, v98, v99, v100, v101, v94);
    fsck_fail_func(0x109, -3);
    v93 = *a5;
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v106 = fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v102, v103, v104, v105, v75, v76, v93 & 0xE8);
      v93 = *a5;
      if (v106)
      {
        v93 &= 0x17u;
        *a5 = v93;
        *a8 = 1;
      }
    }
  }

  if ((~v93 & 3) == 0)
  {
    v107 = _apfs_type_to_str(*a3 >> 60);
    v213 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v226 = *a5;
    fsck_printf_err("%s (id %llu): invalid flags (0x%x)\n", v108, v109, v110, v111, v112, v113, v114, v107);
    updated = 92;
    v23 = 266;
    goto LABEL_20;
  }

  if ((v93 & 4) != 0)
  {
    v237 = *(a3 + 8);
    if (strncmp(__s1, "com.apple.fs.symlink", v237))
    {
      if (strncmp(__s1, "com.apple.fs.altlink", v237) && strncmp(__s1, "com.apple.fs.firmlink", v237) && strncmp(__s1, "com.apple.fs.cow-exempt-file-count", v237) && strncmp(__s1, "com.apple.fs.graft-vol-uuid", v237) && strncmp(__s1, "com.apple.fs.graft-jobj-id-base", v237) && strncmp(__s1, "com.apple.fs.graft-jobj-id-len", v237) && strncmp(__s1, "com.apple.system.fs.speculative_telemetry", v237))
      {
        v115 = _apfs_type_to_str(*a3 >> 60);
        v236 = *(a3 + 8);
        v227 = *a5;
        v214 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_warn("%s (id %llu): invalid flags (0x%x), given name (<%.*s> ; name_len %d)\n", v116, v117, v118, v119, v120, v121, v122, v115);
        fsck_fail_func(0x10B, -3);
        LOWORD(v93) = *a5;
      }
    }
  }

  if ((v93 & 1) != 0 && a5[1] != 48)
  {
    v134 = _apfs_type_to_str(*a3 >> 60);
    v229 = a5[1];
    v233 = *a5;
    v216 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid xdata_len (%u), given flags (0x%x)\n", v135, v136, v137, v138, v139, v140, v141, v134);
    updated = 92;
    v23 = 268;
    goto LABEL_20;
  }

  v123 = a5[1];
  if ((v93 & 2) != 0 && v123 >= 0xEDD)
  {
    v124 = _apfs_type_to_str(*a3 >> 60);
    v228 = a5[1];
    v232 = *a5;
    v215 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid xdata_len (%u), given flags (0x%x)\n", v125, v126, v127, v128, v129, v130, v131, v124);
    updated = 92;
    v23 = 269;
    goto LABEL_20;
  }

  if (v123 + 4 != a6)
  {
    v142 = _apfs_type_to_str(*a3 >> 60);
    v234 = a5[1];
    v217 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid length (%u), given xdata_len (%u)\n", v143, v144, v145, v146, v147, v148, v149, v142);
    updated = 92;
    v23 = 270;
    goto LABEL_20;
  }

  if (a7[8])
  {
    v132 = 0;
  }

  else
  {
    v132 = a2 + 768;
  }

  inode_register_xattr(a1, v132, a8, a3, a5, &v242, v75, v76);
  if (v133)
  {
    updated = v133;
    v23 = 973;
LABEL_55:
    v70 = updated;
    goto LABEL_21;
  }

  v150 = *(a3 + 8);
  v151 = strncmp(__s1, "com.apple.ResourceFork", v150);
  v152 = *a5;
  if (!v151)
  {
    if ((v152 & 1) == 0)
    {
      v164 = _apfs_type_to_str(*a3 >> 60);
      v219 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): com.apple.ResourceFork is expected to be stream based\n", v165, v166, v167, v168, v169, v170, v171, v164);
      updated = 92;
      v23 = 1453;
      goto LABEL_20;
    }

LABEL_70:
    v172 = *(a5 + 10);
    __src = *(a5 + 2);
    v240 = v172;
    v241 = *(a5 + 18);
    if (__src <= 1)
    {
      v173 = _apfs_type_to_str(*a3 >> 60);
      v220 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid xattr_obj_id (%llu)\n", v174, v175, v176, v177, v178, v179, v180, v173);
      updated = 92;
      v23 = 271;
      goto LABEL_20;
    }

    if (__src <= 0xF && (__src - 4) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v181 = _apfs_type_to_str(*a3 >> 60);
      v221 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_warn("%s (id %llu): invalid xattr_obj_id (%llu)\n", v182, v183, v184, v185, v186, v187, v188, v181);
      fsck_fail_func(0x110, -2);
    }

    if (a7[5] < (__src + 1))
    {
      a7[5] = __src + 1;
    }

    v189 = sub_100083E40(a1, a2, a3, 0, &__src + 1, a7, a8);
    if (!v189)
    {
      v200 = *(a2 + 48);
      v201 = v200;
      if (!v200)
      {
        v201 = *(a2 + 40);
      }

      if ((*(v201 + 56) & 0x20) != 0)
      {
        v202 = __src;
        a7[9] = v24;
        a7[10] = v202;
      }

      if (!v242)
      {
        v189 = dstream_register(v24, __src, v240, 0, 0, 0, v190, v191);
        if (v189)
        {
          goto LABEL_78;
        }

        v200 = *(a2 + 48);
      }

      if (!v200)
      {
        v200 = *(a2 + 40);
      }

      if ((*(v200 + 56) & 0x20) != 0 || v242 || (crypto_register_dstream(v24, &__src + 8), !v189))
      {
        if (*a8)
        {
          memcpy(a5 + 2, &__src, a5[1]);
        }

        return 0;
      }
    }

LABEL_78:
    updated = v189;
    v192 = _apfs_type_to_str(*a3 >> 60);
    v222 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid dstream\n", v193, v194, v195, v196, v197, v198, v199, v192);
    goto LABEL_22;
  }

  if (v152)
  {
    goto LABEL_70;
  }

  v153 = *(a2 + 48);
  if (!v153)
  {
    v153 = *(a2 + 40);
  }

  if ((*(v153 + 56) & 0x20) == 0)
  {
    return 0;
  }

  v154 = v150;
  updated = 0;
  if (a6 == 20 && v24 == a7[9])
  {
    if (!strncmp(__s1, "com.apple.decmpfs", v154))
    {
      v155 = *(*(a1 + 8) + 36);
      updated = dstream_update_uncompressed_size(a7[10], (*(a5 + 6) + v155 - 1) / v155 * v155);
      if (!updated)
      {
        return updated;
      }

      v156 = _apfs_type_to_str(*a3 >> 60);
      v218 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v230 = a7[10];
      fsck_printf_err("%s (id %llu): failed to update dstream (%llu)\n", v157, v158, v159, v160, v161, v162, v163, v156);
      v23 = 953;
      goto LABEL_55;
    }

    return 0;
  }

  return updated;
}

uint64_t sub_10007EE44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a3;
  if (a4 != 16)
  {
    v23 = _apfs_type_to_str(v12 >> 60);
    v126 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v24, v25, v26, v27, v28, v29, v30, v23);
    v22 = 293;
    goto LABEL_5;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = _apfs_type_to_str(v12 >> 60);
    v125 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = 294;
LABEL_5:
    v31 = 92;
    fsck_fail_func(v22, 92);
    print_jobj_key_val_info(a2, a3, a4, a5, a6, v32, v33, v34, v124);
    return v31;
  }

  if (v13 <= 0xF && v13 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v38 = _apfs_type_to_str(v12 >> 60);
    v127 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v39, v40, v41, v42, v43, v44, v45, v38);
    fsck_fail_func(0x127, -2);
  }

  v46 = *(a7 + 40);
  if (v46 <= v13)
  {
    v46 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v47 = a3[1];
  if (v47 <= 1)
  {
    v48 = _apfs_type_to_str(*a3 >> 60);
    v128 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v137 = a3[1];
    fsck_printf_err("%s (id %llu): invalid sibling_id (%llu)\n", v49, v50, v51, v52, v53, v54, v55, v48);
    v22 = 296;
    goto LABEL_5;
  }

  if (v47 <= 0xF && (v47 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v56 = _apfs_type_to_str(*a3 >> 60);
    v129 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v138 = a3[1];
    fsck_printf_warn("%s (id %llu): invalid sibling_id (%llu)\n", v57, v58, v59, v60, v61, v62, v63, v56);
    fsck_fail_func(0x129, -2);
    v47 = a3[1];
    v46 = *(a7 + 40);
  }

  v64 = v47 + 1;
  if (v46 < v64)
  {
    *(a7 + 40) = v64;
    v46 = v64;
  }

  if ((a6 - 777) <= 0xFFFFFD00)
  {
    v65 = _apfs_type_to_str(*a3 >> 60);
    v130 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v66, v67, v68, v69, v70, v71, v72, v65);
    v22 = 298;
    goto LABEL_5;
  }

  v73 = *a5;
  if (*a5 <= 1)
  {
    v74 = _apfs_type_to_str(*a3 >> 60);
    v131 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v139 = *a5;
    fsck_printf_err("%s (id %llu): invalid parent_id (%llu)\n", v75, v76, v77, v78, v79, v80, v81, v74);
    v22 = 299;
    goto LABEL_5;
  }

  if (v73 <= 0xF && (v73 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v82 = _apfs_type_to_str(*a3 >> 60);
    v132 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v140 = *a5;
    fsck_printf_warn("%s (id %llu): invalid parent_id (%llu)\n", v83, v84, v85, v86, v87, v88, v89, v82);
    fsck_fail_func(0x12C, -2);
    v73 = *a5;
    v46 = *(a7 + 40);
  }

  v90 = v73 + 1;
  if (v46 < v90)
  {
    *(a7 + 40) = v90;
  }

  v91 = *(a5 + 4);
  if ((v91 - 767) <= 0xFD02u)
  {
    v92 = _apfs_type_to_str(*a3 >> 60);
    v133 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v93, v94, v95, v96, v97, v98, v99, v92);
    v22 = 301;
    goto LABEL_5;
  }

  if (a6 != (v91 + 10))
  {
    v108 = _apfs_type_to_str(*a3 >> 60);
    v142 = *(a5 + 4);
    v135 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u), given name_len (%u)\n", v109, v110, v111, v112, v113, v114, v115, v108);
    v22 = 302;
    goto LABEL_5;
  }

  if (*(a5 + (v91 - 1) + 10))
  {
    v100 = _apfs_type_to_str(*a3 >> 60);
    v143 = *(a5 + 4);
    v134 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v101, v102, v103, v104, v105, v106, v107, v100);
    v22 = 303;
    goto LABEL_5;
  }

  if (sub_10007CC60(a5 + 10, v91))
  {
    v116 = _apfs_type_to_str(*a3 >> 60);
    v141 = *(a5 + 4);
    v136 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v117, v118, v119, v120, v121, v122, v123, v116);
    fsck_fail_func(0x130, -9);
  }

  return 0;
}

void sub_10007F218(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  if (a4 != 8)
  {
    v24 = _apfs_type_to_str(v12 >> 60);
    v59 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v25, v26, v27, v28, v29, v30, v31, v24);
    print_jobj_key_val_info(a2, a3, a4, a5, a6, v32, v33, v34, v56);
    v22 = 210;
    goto LABEL_5;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = _apfs_type_to_str(v12 >> 60);
    v58 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = 625;
LABEL_5:
    fsck_fail_func(v22, 92);
    return;
  }

  if (v13 <= 0xF && (v13 > 7 || ((1 << v12) & 0x8C) == 0))
  {
    v37 = _apfs_type_to_str(v12 >> 60);
    v60 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v38, v39, v40, v41, v42, v43, v44, v37);
    fsck_fail_func(0x272, -2);
  }

  if (*(a7 + 40) <= v13)
  {
    *(a7 + 40) = v13 + 1;
  }

  if (a6 != 4)
  {
    v45 = _apfs_type_to_str(*a3 >> 60);
    v61 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v46, v47, v48, v49, v50, v51, v52, v45);
    print_jobj_key_val_info(a2, a3, 8, a5, a6, v53, v54, v55, v57);
    v22 = 211;
    goto LABEL_5;
  }

  dstream_register_dstream_id(a3, a5, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10007F3D4(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a2 + 48);
  if (!v15)
  {
    v15 = *(a2 + 40);
  }

  v16 = *a3;
  if ((*(v15 + 56) & 0x20) != 0)
  {
    v27 = _apfs_type_to_str(v16 >> 60);
    v150 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): present on sealed volume\n", v28, v29, v30, v31, v32, v33, v34, v27);
    v26 = 922;
  }

  else if (a4 == 8)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFFLL;
    if ((v16 & 0xFFFFFFFFFFFFFFFLL) > 1)
    {
      if (v17 <= 0xF && v17 - 6 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        v49 = _apfs_type_to_str(v16 >> 60);
        v152 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v50, v51, v52, v53, v54, v55, v56, v49);
        fsck_fail_func(0xF6, -2);
      }

      if (*(a7 + 40) <= v17)
      {
        *(a7 + 40) = v17 + 1;
      }

      if (a6 > 0x17)
      {
        if (*(a5 + 6) == 1)
        {
          v65 = 336;
        }

        else
        {
          v65 = 256;
        }

        if (*(a5 + 6) == 1)
        {
          v66 = 168;
        }

        else
        {
          v66 = 128;
        }

        if (*(a5 + 4) != 6)
        {
          v65 = v66;
        }

        if (v65 + 24 < a6)
        {
          v67 = _apfs_type_to_str(*a3 >> 60);
          v154 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          fsck_printf_warn("%s (id %llu): invalid value length (%u)\n", v68, v69, v70, v71, v72, v73, v74, v67);
        }

        if (*(a7 + 64))
        {
          v75 = 0;
        }

        else
        {
          v75 = a2 + 768;
        }

        crypto_register(a2, a3, a5, v75, a5, a6, a7, a8);
        v43 = v76;
        if (v76 || v17 == 4)
        {
          if (!v76)
          {
            return v43;
          }

          goto LABEL_10;
        }

        if ((*(*(a2 + 40) + 264) & 0x109) == 0x100)
        {
          v77 = 6;
        }

        else
        {
          v77 = 5;
        }

        if (v77 != *(a5 + 4) && (*(a5 + 4) || container_is_internal_embedded(a1)))
        {
          v78 = _apfs_type_to_str(*a3 >> 60);
          v155 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v163 = *(a5 + 4);
          fsck_printf_warn("%s (id %llu): invalid state.major_version (%u)\n", v79, v80, v81, v82, v83, v84, v85, v78);
          fsck_fail_func(0xF9, -6);
        }

        if (*(a5 + 6) >= 2u)
        {
          v86 = _apfs_type_to_str(*a3 >> 60);
          v156 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v164 = *(a5 + 6);
          fsck_printf_warn("%s (id %llu): invalid state.minor_version (%u)\n", v87, v88, v89, v90, v91, v92, v93, v86);
          fsck_fail_func(0xFA, -6);
        }

        if (*(a5 + 8))
        {
          v94 = _apfs_type_to_str(*a3 >> 60);
          v157 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v165 = *(a5 + 8);
          fsck_printf_warn("%s (id %llu): invalid state.cpflags (%u)\n", v95, v96, v97, v98, v99, v100, v101, v94);
          fsck_fail_func(0xFB, -3);
        }

        if ((*(a5 + 12) & 0x18) != 0)
        {
          v102 = _apfs_type_to_str(*a3 >> 60);
          v158 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v166 = *(a5 + 12);
          fsck_printf_warn("%s (id %llu): invalid state.persistent_class (%u)\n", v103, v104, v105, v106, v107, v108, v109, v102);
          fsck_fail_func(0xFC, -6);
        }

        if (!*(a5 + 16) && *(a5 + 4) != 6 && container_is_internal_embedded(a1))
        {
          v110 = _apfs_type_to_str(*a3 >> 60);
          v159 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v167 = *(a5 + 16);
          fsck_printf_warn("%s (id %llu): invalid state.key_os_version (%u)\n", v111, v112, v113, v114, v115, v116, v117, v110);
          fsck_fail_func(0xFD, -6);
        }

        if (*(a5 + 20) >= 2u)
        {
          v118 = _apfs_type_to_str(*a3 >> 60);
          v160 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v168 = *(a5 + 20);
          fsck_printf_warn("%s (id %llu): invalid state.key_revision (%u)\n", v119, v120, v121, v122, v123, v124, v125, v118);
          fsck_fail_func(0xFE, -6);
        }

        LODWORD(v126) = *(a5 + 22);
        v127 = *(a5 + 4);
        v128 = (v126 >> 8) + v126;
        if (*(a5 + 6) == 1)
        {
          v129 = 336;
        }

        else
        {
          v129 = 256;
        }

        if (*(a5 + 6) == 1)
        {
          v130 = 168;
        }

        else
        {
          v130 = 128;
        }

        if (v127 == 6)
        {
          v131 = (v126 >> 8) + v126;
        }

        else
        {
          v131 = *(a5 + 22);
        }

        if (v127 != 6)
        {
          v129 = v130;
        }

        if (v131 > v129)
        {
          v132 = _apfs_type_to_str(*a3 >> 60);
          v161 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v169 = *(a5 + 22);
          fsck_printf_warn("%s (id %llu): invalid state.key_len (%u)\n", v133, v134, v135, v136, v137, v138, v139, v132);
          fsck_fail_func(0xFF, -11);
          LODWORD(v126) = *(a5 + 22);
          v127 = *(a5 + 4);
          v128 = (v126 >> 8) + v126;
        }

        if (v127 == 6)
        {
          v126 = v128;
        }

        else
        {
          v126 = v126;
        }

        if (v126 + 24 == a6)
        {
          return 0;
        }

        v140 = _apfs_type_to_str(*a3 >> 60);
        v170 = *(a5 + 22);
        v162 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): invalid length (%u), given state.key_len (%u)\n", v141, v142, v143, v144, v145, v146, v147, v140);
        v26 = 256;
      }

      else
      {
        v57 = _apfs_type_to_str(*a3 >> 60);
        v153 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v58, v59, v60, v61, v62, v63, v64, v57);
        v26 = 247;
      }
    }

    else
    {
      v18 = _apfs_type_to_str(v16 >> 60);
      v149 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v19, v20, v21, v22, v23, v24, v25, v18);
      v26 = 245;
    }
  }

  else
  {
    v35 = _apfs_type_to_str(v16 >> 60);
    v151 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v36, v37, v38, v39, v40, v41, v42, v35);
    v26 = 244;
  }

  v43 = 92;
  fsck_fail_func(v26, 92);
LABEL_10:
  print_jobj_key_val_info(a2, a3, a4, a5, a6, v44, v45, v46, v148);
  return v43;
}

uint64_t sub_10007F8D4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v15 = a2[6];
  if (!v15)
  {
    v15 = a2[5];
  }

  if ((*(v15 + 56) & 0x20) != 0)
  {
    v24 = _apfs_type_to_str(*a3 >> 60);
    v52 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): file extent record present on sealed volume\n", v25, v26, v27, v28, v29, v30, v31, v24);
    v32 = 921;
LABEL_12:
    v23 = 92;
    fsck_fail_func(v32, 92);
    goto LABEL_13;
  }

  if (a4 != 16)
  {
    v33 = _apfs_type_to_str(*a3 >> 60);
    v53 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v34, v35, v36, v37, v38, v39, v40, v33);
    v32 = 212;
    goto LABEL_12;
  }

  if (a6 != 24)
  {
    v41 = _apfs_type_to_str(*a3 >> 60);
    v54 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v42, v43, v44, v45, v46, v47, v48, v41);
    v32 = 213;
    goto LABEL_12;
  }

  v16 = sub_100084668(a1, a2, a3, a5, a7, a8);
  if (v16 || (dstream_register_fext(a3, a5, v17, v18, v19, v20, v21, v22), v16))
  {
    v23 = v16;
  }

  else
  {
    sub_100084C90(a2, a3, a5, a7, a8);
    v23 = v50;
    if (!v50)
    {
      return v23;
    }
  }

LABEL_13:
  print_jobj_key_val_info(a2, a3, a4, a5, a6, v20, v21, v22, v51);
  return v23;
}

uint64_t sub_10007FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = a5;
  v13 = *(*(a2 + 40) + 56);
  if ((v13 & 9) != 0)
  {
    v14 = 12;
  }

  else
  {
    v14 = 10;
  }

  v15 = *a3;
  v16 = a4;
  if (v14 > a4 || v14 + 766 < a4)
  {
    v18 = _apfs_type_to_str(v15 >> 60);
    v195 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v19, v20, v21, v22, v23, v24, v25, v18);
    v26 = 92;
    v27 = 275;
LABEL_9:
    fsck_fail_func(v27, 92);
LABEL_27:
    print_jobj_key_val_info(a2, a3, a4, v9, a6, v28, v29, v30, v194);
    return v26;
  }

  v31 = a1;
  v32 = v15 & 0xFFFFFFFFFFFFFFFLL;
  if ((v13 & 9) == 0)
  {
    v33 = (a3 + 10);
    v35 = *(a3 + 8);
    v36 = -1;
    if (v32)
    {
      goto LABEL_12;
    }

LABEL_20:
    v46 = _apfs_type_to_str(v15 >> 60);
    v197 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v47, v48, v49, v50, v51, v52, v53, v46);
    v26 = 92;
    v45 = 276;
    goto LABEL_25;
  }

  v33 = (a3 + 12);
  v34 = *(a3 + 8);
  v35 = v34 & 0x3FF;
  v36 = v34 >> 10;
  if (!v32)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v32 <= 0xF && (v32 > 7 || ((1 << v15) & 0x8E) == 0))
  {
    v219 = v33;
    v221 = a8;
    v225 = a7;
    v227 = v35;
    v71 = _apfs_type_to_str(v15 >> 60);
    v200 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v72, v73, v74, v75, v76, v77, v78, v71);
    fsck_fail_func(0x115, -2);
    v33 = v219;
    a8 = v221;
    a7 = v225;
    v35 = v227;
    v31 = a1;
  }

  if (*(a7 + 40) <= v32)
  {
    *(a7 + 40) = v32 + 1;
  }

  if ((v35 - 767) <= 0xFD02u)
  {
    v37 = _apfs_type_to_str(*a3 >> 60);
    v196 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid name_len (%u)\n", v38, v39, v40, v41, v42, v43, v44, v37);
    v26 = 92;
    v45 = 278;
LABEL_25:
    fsck_fail_func(v45, 92);
LABEL_26:
    v9 = a5;
    goto LABEL_27;
  }

  if (v14 + v35 != v16)
  {
    v62 = _apfs_type_to_str(*a3 >> 60);
    v199 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u), given name_len (%u)\n", v63, v64, v65, v66, v67, v68, v69, v62);
    v26 = 92;
    v45 = 279;
    goto LABEL_25;
  }

  if (v33[(v35 - 1)])
  {
    v54 = _apfs_type_to_str(*a3 >> 60);
    v198 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v55, v56, v57, v58, v59, v60, v61, v54);
    v26 = 92;
    v45 = 280;
    goto LABEL_25;
  }

  v220 = (v35 - 1);
  v222 = a8;
  v224 = v31;
  v226 = a7;
  v79 = v33;
  v80 = v35;
  if (sub_10007CC60(v33, v35))
  {
    v81 = _apfs_type_to_str(*a3 >> 60);
    v201 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v82, v83, v84, v85, v86, v87, v88, v81);
    fsck_fail_func(0x119, -9);
  }

  v228 = v80;
  if ((v13 & 9) != 0)
  {
    v230 = -1;
    if (!utf8_normalizeOptCaseFoldAndHash(v79, v220, (v13 >> 3) & 1, sub_1000850BC, &v230))
    {
      v89 = v230 & 0x3FFFFF;
      if ((v230 & 0x3FFFFF) != v36)
      {
        v90 = _apfs_type_to_str(*a3 >> 60);
        v202 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): invalid hash (0x%x, expected 0x%x) of name (%.*s)\n", v91, v92, v93, v94, v95, v96, v97, v90);
        fsck_fail_func(0x11A, 92);
        v102 = dir_repair_drec_hash(a3, a4, v89, a2 + 768, v98, v99, v100, v101);
        if (v102)
        {
          v26 = v102;
          goto LABEL_26;
        }
      }
    }
  }

  if (a6 <= 0x11)
  {
    v103 = _apfs_type_to_str(*a3 >> 60);
    v203 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v104, v105, v106, v107, v108, v109, v110, v103);
    v26 = 92;
    v45 = 283;
    goto LABEL_25;
  }

  v9 = a5;
  v111 = *a5;
  if (*a5 <= 1uLL)
  {
    v112 = _apfs_type_to_str(*a3 >> 60);
    v212 = *a5;
    v204 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid file_id (%llu) (%s)\n", v113, v114, v115, v116, v117, v118, v119, v112);
    v26 = 92;
    v27 = 284;
    goto LABEL_9;
  }

  if (v111 <= 0xF && (v111 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v120 = _apfs_type_to_str(*a3 >> 60);
    v213 = *a5;
    v205 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid file_id (%llu) (%s)\n", v121, v122, v123, v124, v125, v126, v127, v120);
    fsck_fail_func(0x11D, -2);
    v111 = *a5;
  }

  v128 = v80;
  if (*(v226 + 40) < v111 + 1)
  {
    *(v226 + 40) = v111 + 1;
    v111 = *a5;
  }

  if (v111 == 2)
  {
    if (v80 == 5 && v32 == 1 && !(*v79 ^ 0x746F6F72 | *(v79 + 4)))
    {
      goto LABEL_57;
    }

    v129 = _apfs_type_to_str(*a3 >> 60);
    v206 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v214 = *a5;
    fsck_printf_warn("%s (id %llu): file_id (%llu) and name (%.*s) mismatch for root directory\n", v130, v131, v132, v133, v134, v135, v136, v129);
    fsck_fail_func(0x11E, -9);
    v128 = v80;
    v111 = *a5;
  }

  if (v111 == 3)
  {
    if (v128 == 12 && v32 == 1 && !(*v79 ^ 0x2D65746176697270 | *(v79 + 8) ^ 0x726964))
    {
      goto LABEL_57;
    }

    v137 = _apfs_type_to_str(*a3 >> 60);
    v207 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v215 = *a5;
    fsck_printf_warn("%s (id %llu): file_id (%llu) and name (%.*s) mismatch for private directory\n", v138, v139, v140, v141, v142, v143, v144, v137);
    fsck_fail_func(0x11F, -9);
  }

  if (v32 == 7)
  {
    goto LABEL_63;
  }

LABEL_57:
  v145 = *(a5 + 16);
  if (v145 >= 0x10)
  {
    v146 = _apfs_type_to_str(*a3 >> 60);
    v216 = *(a5 + 16);
    v208 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): unknown flags (0x%hx / known flags are: 0x%hx)\n", v147, v148, v149, v150, v151, v152, v153, v146);
    fsck_fail_func(0x121, -3);
    LOWORD(v145) = *(a5 + 16);
    if (*(*(v224 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v160 = fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v154, v155, v156, v157, v158, v159, v145 & 0xF0);
      LOWORD(v145) = *(a5 + 16);
      if (v160)
      {
        LOWORD(v145) = *(a5 + 16) & 0xF;
        *(a5 + 16) = v145;
        *v222 = 1;
      }
    }
  }

  v161 = v145 & 0xF;
  if (v161 <= 0xE)
  {
    v162 = 1 << v161;
    if ((v162 & 0x1556) != 0)
    {
      goto LABEL_63;
    }

    if ((v162 & 0x4001) != 0)
    {
      v176 = _apfs_type_to_str(*a3 >> 60);
      v210 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v217 = *(a5 + 16) & 0xF;
      fsck_printf_err("%s (id %llu): invalid type (%u)\n", v177, v178, v179, v180, v181, v182, v183, v176);
      v26 = 92;
      v27 = 290;
      goto LABEL_9;
    }
  }

  v184 = _apfs_type_to_str(*a3 >> 60);
  v211 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v218 = *(a5 + 16) & 0xF;
  fsck_printf_warn("%s (id %llu): invalid type (%u)\n", v185, v186, v187, v188, v189, v190, v191, v184);
  fsck_fail_func(0x123, -5);
LABEL_63:
  v163 = v224;
  v164 = v226;
  v165 = sub_100082540(v224, a2, a3, (a5 + 18), (a6 - 18), sub_1000850FC, v226, v222, 0);
  if (v165)
  {
    v26 = v165;
    v166 = _apfs_type_to_str(*a3 >> 60);
    v209 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid xfields\n", v167, v168, v169, v170, v171, v172, v173, v166);
    goto LABEL_27;
  }

  if (v32 == 3)
  {
    if (v228 < 0xE || (v163 = v224, v164 = v226, strncmp("tmp-ino-clone-", v79, 0xEuLL)))
    {
      v174 = *(a5 + 16) & 0xF;
      if (v174 == 10)
      {
        v175 = v164 + 2;
        goto LABEL_78;
      }

      v175 = v164;
      if (v174 == 8)
      {
LABEL_78:
        --*v175;
        goto LABEL_79;
      }

      if (v174 != 4)
      {
        v175 = v164 + 3;
        goto LABEL_78;
      }

      if ((*a5 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        v175 = v164 + 1;
        goto LABEL_78;
      }
    }
  }

LABEL_79:
  v192 = v164[8];
  if (v192)
  {
    v193 = 0;
  }

  else
  {
    v193 = a2 + 768;
  }

  return dir_increment_drec_count(v163, a2, v192, a3, a4, a5, a6, v193);
}

uint64_t sub_10008026C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a2 + 48);
  if (!v13)
  {
    v13 = *(a2 + 40);
  }

  v14 = *a3;
  if ((*(v13 + 57) & 2) != 0)
  {
    v25 = _apfs_type_to_str(v14 >> 60);
    v93 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key on expanded-records volume\n", v26, v27, v28, v29, v30, v31, v32, v25);
    v24 = 1399;
  }

  else if (a4 == 8)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFLL;
    if ((v14 & 0xFFFFFFFFFFFFFFFLL) > 1)
    {
      if (v15 <= 0xF && v15 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v47 = _apfs_type_to_str(v14 >> 60);
        v95 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v48, v49, v50, v51, v52, v53, v54, v47);
        fsck_fail_func(0x133, -2);
      }

      v55 = *(a7 + 40);
      if (v55 <= v15)
      {
        v55 = v15 + 1;
        *(a7 + 40) = v15 + 1;
      }

      if (a6 == 32)
      {
        v56 = a5[2];
        if (v56 == 1)
        {
          v57 = _apfs_type_to_str(*a3 >> 60);
          v96 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v100 = a5[2];
          fsck_printf_err("%s (id %llu): invalid chained_key (%llu)\n", v58, v59, v60, v61, v62, v63, v64, v57);
          v24 = 310;
        }

        else
        {
          if (v56 <= 0xF && v56 > 3)
          {
            v73 = _apfs_type_to_str(*a3 >> 60);
            v98 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v101 = a5[2];
            fsck_printf_warn("%s (id %llu): invalid chained_key (%llu)\n", v74, v75, v76, v77, v78, v79, v80, v73);
            fsck_fail_func(0x137, -2);
            v56 = a5[2];
            v55 = *(a7 + 40);
          }

          v81 = v56 + 1;
          if (v55 < v81)
          {
            *(a7 + 40) = v81;
          }

          if (a5[3])
          {
            dir_stats_register_dir_stats(v15, a5);
            v41 = v82;
            if (!v82)
            {
              return v41;
            }

            goto LABEL_10;
          }

          v83 = _apfs_type_to_str(*a3 >> 60);
          v99 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v102 = a5[3];
          fsck_printf_err("%s (id %llu): invalid gen_count (%llu)\n", v84, v85, v86, v87, v88, v89, v90, v83);
          v24 = 312;
        }
      }

      else
      {
        v65 = _apfs_type_to_str(*a3 >> 60);
        v97 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v66, v67, v68, v69, v70, v71, v72, v65);
        v24 = 308;
      }
    }

    else
    {
      v16 = _apfs_type_to_str(v14 >> 60);
      v92 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v17, v18, v19, v20, v21, v22, v23, v16);
      v24 = 306;
    }
  }

  else
  {
    v33 = _apfs_type_to_str(v14 >> 60);
    v94 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v34, v35, v36, v37, v38, v39, v40, v33);
    v24 = 305;
  }

  v41 = 92;
  fsck_fail_func(v24, 92);
LABEL_10:
  print_jobj_key_val_info(a2, a3, a4, a5, a6, v42, v43, v44, v91);
  return v41;
}

uint64_t sub_100080510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  v18 = 0;
  v11 = validate_snap_name(a2, a3, a4, a5, a6, 1, &v18);
  if (v11)
  {
    v15 = v11;
LABEL_4:
    print_jobj_key_val_info(a2, a3, a4, a5, a6, v12, v13, v14, v17);
    return v15;
  }

  v15 = snapshot_register_name(a3, a5);
  if (v15)
  {
    goto LABEL_4;
  }

  return v15;
}

uint64_t sub_1000805B8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a3;
  if (a4 != 8)
  {
    v23 = _apfs_type_to_str(v12 >> 60);
    v75 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v24, v25, v26, v27, v28, v29, v30, v23);
    v22 = 530;
    goto LABEL_7;
  }

  if (a6 != 8)
  {
    v31 = _apfs_type_to_str(v12 >> 60);
    v76 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v32, v33, v34, v35, v36, v37, v38, v31);
    v22 = 531;
    goto LABEL_7;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = _apfs_type_to_str(v12 >> 60);
    v74 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = 532;
LABEL_7:
    v39 = 92;
    fsck_fail_func(v22, 92);
    print_jobj_key_val_info(a2, a3, a4, a5, a6, v40, v41, v42, v73);
    return v39;
  }

  if (v13 <= 0xF && v13 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v46 = _apfs_type_to_str(v12 >> 60);
    v77 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v47, v48, v49, v50, v51, v52, v53, v46);
    fsck_fail_func(0x215, -2);
  }

  v54 = *(a7 + 40);
  if (v54 <= v13)
  {
    v54 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v55 = *a5;
  if (*a5 <= 1uLL)
  {
    v56 = _apfs_type_to_str(*a3 >> 60);
    v78 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v80 = *a5;
    fsck_printf_err("%s (id %llu): invalid file_id (%llu)\n", v57, v58, v59, v60, v61, v62, v63, v56);
    v22 = 534;
    goto LABEL_7;
  }

  if (v55 <= 0xF)
  {
    v64 = _apfs_type_to_str(*a3 >> 60);
    v79 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v81 = *a5;
    fsck_printf_warn("%s (id %llu): invalid file_id (%llu)\n", v65, v66, v67, v68, v69, v70, v71, v64);
    fsck_fail_func(0x217, -2);
    v55 = *a5;
    v54 = *(a7 + 40);
  }

  v72 = v55 + 1;
  v39 = 0;
  if (v54 < v72)
  {
    *(a7 + 40) = v72;
  }

  return v39;
}

uint64_t sub_1000807C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = *a3;
  if (a4 == 16)
  {
    v16 = v13 & 0xFFFFFFFFFFFFFFFLL;
    v17 = *(a3 + 8);
    v18 = HIBYTE(v17);
    if (HIBYTE(v17) != 2)
    {
      if (v18 != 1)
      {
        v19 = v13 >> 60;
        if (v18)
        {
          v58 = _apfs_type_to_str(v19);
          v200 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v216 = *(a3 + 15);
          fsck_printf_warn("%s (id %llu): Unknown type (0x%x)\n", v59, v60, v61, v62, v63, v64, v65, v58);
          fsck_fail_func(0x3AF, -5);
          return 0;
        }

        v20 = _apfs_type_to_str(v19);
        v196 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v215 = *(a3 + 15);
        fsck_printf_err("%s (id %llu): Invalid type (0x%x)\n", v21, v22, v23, v24, v25, v26, v27, v20);
        v28 = 942;
        goto LABEL_7;
      }

      if (a6 <= 2)
      {
        v42 = _apfs_type_to_str(v13 >> 60);
        v198 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v43, v44, v45, v46, v47, v48, v49, v42);
        v28 = 938;
        goto LABEL_7;
      }

      if (v16 <= 1)
      {
        v66 = _apfs_type_to_str(v13 >> 60);
        v201 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v67, v68, v69, v70, v71, v72, v73, v66);
        v28 = 939;
        goto LABEL_7;
      }

      v84 = *(*(a1 + 8) + 36);
      if (v16 <= 0xF && v16 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v85 = _apfs_type_to_str(v13 >> 60);
        v203 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v86, v87, v88, v89, v90, v91, v92, v85);
        fsck_fail_func(0x3AC, -2);
      }

      if (*(a7 + 40) <= v16)
      {
        *(a7 + 40) = v16 + 1;
      }

      if ((*(a3 + 8) & 0xFFFFFFFFFFFFFFuLL) % v84)
      {
        v93 = _apfs_type_to_str(*a3 >> 60);
        v217 = *(a3 + 8) & 0xFFFFFFFFFFFFFFLL;
        v204 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): Logical address %llu not a multiple of the block size (%u)\n", v94, v95, v96, v97, v98, v99, v100, v93);
        v28 = 941;
        goto LABEL_7;
      }

      v167 = sub_1000852D4(a1, a2, a3, a5);
      goto LABEL_54;
    }

    if (a6 <= 0x19)
    {
      v50 = _apfs_type_to_str(v13 >> 60);
      v199 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v51, v52, v53, v54, v55, v56, v57, v50);
      v28 = 1319;
      goto LABEL_7;
    }

    v75 = v17 & 0x1FFFFFFFFFFFFFLL;
    if ((*(*(a2 + 40) + 48) & 8) == 0)
    {
      v76 = _apfs_type_to_str(v13 >> 60);
      v202 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_warn("%s (id %llu): found attribution tag on a volume that doesn't support them\n", v77, v78, v79, v80, v81, v82, v83, v76);
      fsck_fail_func(0x528, -5);
    }

    if (v16 == 9)
    {
      if (*(a7 + 40) > 9uLL)
      {
        v224 = 0;
        if (v75)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v224 = 0;
      *(a7 + 40) = 10;
      if (!v75)
      {
LABEL_31:
        v109 = _apfs_type_to_str(*a3 >> 60);
        v206 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_warn("%s (id %llu): invalid hash (0)\n", v110, v111, v112, v113, v114, v115, v116, v109);
        fsck_fail_func(0x52A, -7);
      }
    }

    else
    {
      v101 = _apfs_type_to_str(*a3 >> 60);
      v205 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v102, v103, v104, v105, v106, v107, v108, v101);
      fsck_fail_func(0x529, 92);
      v224 = v16;
      if (!v75)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    v117 = *(*(a1 + 8) + 36);
    if (*(a5 + 8) % v117)
    {
      v118 = _apfs_type_to_str(*a3 >> 60);
      v218 = *(a5 + 8);
      v207 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_warn("%s (id %llu): invalid physical size (%llu) for hash (%llu)\n", v119, v120, v121, v122, v123, v124, v125, v118);
      fsck_fail_func(0x52B, -11);
      v117 = *(*(a1 + 8) + 36);
    }

    v126 = *(a5 + 16);
    if (v126 % v117)
    {
      v127 = _apfs_type_to_str(*a3 >> 60);
      v219 = *(a5 + 16);
      v208 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_warn("%s (id %llu): invalid full clone size (%llu) for hash (%llu)\n", v128, v129, v130, v131, v132, v133, v134, v127);
      fsck_fail_func(0x53C, -11);
      v126 = *(a5 + 16);
    }

    if (*(a5 + 8) < v126)
    {
      v135 = _apfs_type_to_str(*a3 >> 60);
      v222 = *(a5 + 16);
      v209 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v220 = *(a5 + 8);
      fsck_printf_warn("%s (id %llu): physical size (%llu) is less than full clone size (%llu) for hash (%llu)\n", v136, v137, v138, v139, v140, v141, v142, v135);
      fsck_fail_func(0x53D, -11);
    }

    if (*(a5 + 24) >= 2u)
    {
      v143 = _apfs_type_to_str(*a3 >> 60);
      v221 = *(a5 + 24);
      v210 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v144, v145, v146, v147, v148, v149, v150, v143);
      fsck_fail_func(0x52C, -3);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v151, v152, v153, v154, v155, v156, *(a5 + 24) & 0xFE))
        {
          *(a5 + 24) &= 1u;
          *a8 = 1;
        }
      }
    }

    memset(v225, 0, sizeof(v225));
    v157 = sub_100082540(a1, a2, a3, (a5 + 26), (a6 - 26), sub_1000854B0, a7, a8, v225);
    if (v157)
    {
      v37 = v157;
      v194 = _apfs_type_to_str(*a3 >> 60);
      v211 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid xfields\n", v158, v159, v160, v161, v162, v163, v164, v194);
      goto LABEL_55;
    }

    if (v225[0])
    {
      v165 = strlen(v225 + 1);
      v166 = compute_attr_tag_hash(v225 + 1, v165);
      if (v166 == v75)
      {
        v75 = 0;
      }

      else
      {
        v223 = _apfs_type_to_str(*a3 >> 60);
        strlen(v225 + 1);
        v213 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_warn("%s (id %llu): signing id hash (%llu) for signing id (%s) with length (%zu) does not match attribution tag hash (%llu)\n", v177, v178, v179, v180, v181, v182, v183, v223);
        fsck_fail_func(0x52E, 92);
      }

      if (*(a7 + 64))
      {
        v184 = 0;
      }

      else
      {
        v184 = a2 + 768;
      }

      file_info_register(v184, v166, *a5, *(a5 + 8), *(a5 + 16), *(a5 + 24), v224, v75);
      v37 = v185;
      if (v185)
      {
        v195 = _apfs_type_to_str(*a3 >> 60);
        v214 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): failed to register file info (hash %llu): %d\n", v186, v187, v188, v189, v190, v191, v192, v195);
      }

LABEL_55:
      if (!v37)
      {
        return v37;
      }

      goto LABEL_8;
    }

    v168 = _apfs_type_to_str(*a3 >> 60);
    v212 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): signing id does not exist\n", v169, v170, v171, v172, v173, v174, v175, v168);
    fsck_fail_func(0x52D, 92);
    if (*(a7 + 64))
    {
      v176 = 0;
    }

    else
    {
      v176 = a2 + 768;
    }

    v167 = file_info_delete(v176, v16, v75, 1);
LABEL_54:
    v37 = v167;
    goto LABEL_55;
  }

  v29 = _apfs_type_to_str(v13 >> 60);
  v197 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v30, v31, v32, v33, v34, v35, v36, v29);
  v28 = 937;
LABEL_7:
  v37 = 92;
  fsck_fail_func(v28, 92);
LABEL_8:
  print_jobj_key_val_info(a2, a3, a4, a5, a6, v38, v39, v40, v193);
  return v37;
}

uint64_t sub_100080EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  if (a4 != 28)
  {
    v28 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v29, v30, v31, v32, v33, v34, v35, v28);
    v26 = 92;
    v27 = 1168;
    goto LABEL_7;
  }

  if (a6 <= 0x17)
  {
    v18 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v19, v20, v21, v22, v23, v24, v25, v18);
    v26 = 92;
    v27 = 1169;
LABEL_7:
    fsck_fail_func(v27, 92);
    goto LABEL_8;
  }

  if (v16 <= 1)
  {
    v40 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v41, v42, v43, v44, v45, v46, v47, v40);
    v26 = 92;
    v27 = 1170;
    goto LABEL_7;
  }

  if (v16 <= 0xF && (v16 > 7 || ((1 << *a3) & 0x8C) == 0))
  {
    v49 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v50, v51, v52, v53, v54, v55, v56, v49);
    fsck_fail_func(0x493, -2);
  }

  if (*(a7 + 40) <= v16)
  {
    *(a7 + 40) = v16 + 1;
  }

  if (!*(a3 + 12))
  {
    v57 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid atime (0)\n", v58, v59, v60, v61, v62, v63, v64, v57);
    fsck_fail_func(0x58E, -2);
  }

  v65 = *(a3 + 20);
  if (v65 <= 1)
  {
    v66 = _apfs_type_to_str(v17);
    v128 = *(a3 + 20);
    fsck_printf_err("%s (id %llu): invalid file_id (%llu)\n", v67, v68, v69, v70, v71, v72, v73, v66);
    v26 = 92;
    v27 = 1172;
    goto LABEL_7;
  }

  if (v65 <= 0xF && (v65 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v74 = _apfs_type_to_str(v17);
    v129 = *(a3 + 20);
    fsck_printf_warn("%s (id %llu): invalid file_id (%llu)\n", v75, v76, v77, v78, v79, v80, v81, v74);
    fsck_fail_func(0x495, -2);
    v65 = *(a3 + 20);
  }

  v82 = *(a7 + 40);
  v83 = v65 + 1;
  if (v82 < v83)
  {
    *(a7 + 40) = v83;
    v82 = v83;
  }

  v84 = *(a5 + 8);
  if (v84 <= 1)
  {
    v85 = _apfs_type_to_str(v17);
    v130 = *(a5 + 8);
    fsck_printf_err("%s (id %llu): invalid dstream_id (%llu)\n", v86, v87, v88, v89, v90, v91, v92, v85);
    v26 = 92;
    v27 = 1175;
    goto LABEL_7;
  }

  if (v84 <= 0xF && (v84 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v93 = _apfs_type_to_str(v17);
    v131 = *(a5 + 8);
    fsck_printf_warn("%s (id %llu): invalid dstream_id (%llu)\n", v94, v95, v96, v97, v98, v99, v100, v93);
    fsck_fail_func(0x498, -2);
    v84 = *(a5 + 8);
    v82 = *(a7 + 40);
  }

  v101 = v84 + 1;
  if (v82 < v101)
  {
    *(a7 + 40) = v101;
  }

  if ((*(a5 + 18) & 0xFF43) != 0)
  {
    v102 = _apfs_type_to_str(v17);
    v132 = *(a5 + 16);
    fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v103, v104, v105, v106, v107, v108, v109, v102);
    fsck_fail_func(0x499, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v116 = *(a5 + 16);
      if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v110, v111, v112, v113, v114, v115, 0))
      {
        *(a5 + 16) &= 0xBCFFFFu;
        *a8 = 1;
      }
    }
  }

  v117 = sub_100082540(a1, a2, a3, (a5 + 24), (a6 - 24), sub_1000855FC, a7, a8, 0);
  if (v117)
  {
    v26 = v117;
    v118 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid xfields\n", v119, v120, v121, v122, v123, v124, v125, v118);
  }

  else
  {
    v126 = purgeable_register(*(a3 + 20));
    if (v126)
    {
      v26 = v126;
    }

    else
    {
      v26 = clonegroup_register_purgeable(*(a5 + 8), *(a3 + 20), *(a5 + 16));
      if (!v26)
      {
        return v26;
      }
    }
  }

LABEL_8:
  print_jobj_key_val_info(a2, a3, a4, a5, a6, v36, v37, v38, v127);
  return v26;
}

uint64_t sub_1000812C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v15 = *a3 >> 60;
  if (v15 == 14)
  {
    LODWORD(v15) = *(a3 + 8);
  }

  if (a4 != 20)
  {
    v25 = _apfs_type_to_str(v15);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v26, v27, v28, v29, v30, v31, v32, v25);
    v24 = 1178;
    goto LABEL_9;
  }

  if (a6 != 8)
  {
    v33 = _apfs_type_to_str(v15);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v34, v35, v36, v37, v38, v39, v40, v33);
    v24 = 1179;
    goto LABEL_9;
  }

  if (v14 <= 1)
  {
    v16 = _apfs_type_to_str(v15);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v17, v18, v19, v20, v21, v22, v23, v16);
    v24 = 1180;
LABEL_9:
    v41 = 92;
    fsck_fail_func(v24, 92);
    goto LABEL_10;
  }

  if (v14 <= 0xF && (v14 > 7 || ((1 << *a3) & 0x8C) == 0))
  {
    v47 = _apfs_type_to_str(v15);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v48, v49, v50, v51, v52, v53, v54, v47);
    fsck_fail_func(0x49D, -2);
  }

  v55 = *(a7 + 40);
  if (v55 <= v14)
  {
    v55 = v14 + 1;
    *(a7 + 40) = v14 + 1;
  }

  v56 = *(a3 + 12);
  if (v56 <= 1)
  {
    v57 = _apfs_type_to_str(v15);
    v94 = *(a3 + 12);
    fsck_printf_err("%s (id %llu): invalid file_id (%llu)\n", v58, v59, v60, v61, v62, v63, v64, v57);
    v24 = 1182;
    goto LABEL_9;
  }

  if (v56 <= 0xF && (v56 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v65 = _apfs_type_to_str(v15);
    v95 = *(a3 + 12);
    fsck_printf_warn("%s (id %llu): invalid file_id (%llu)\n", v66, v67, v68, v69, v70, v71, v72, v65);
    fsck_fail_func(0x49F, -2);
    v56 = *(a3 + 12);
    v55 = *(a7 + 40);
  }

  v73 = v56 + 1;
  if (v55 < v73)
  {
    *(a7 + 40) = v73;
    v55 = v73;
  }

  v74 = *a5;
  if (*a5 <= 1)
  {
    v75 = _apfs_type_to_str(v15);
    v96 = *a5;
    fsck_printf_err("%s (id %llu): invalid dstream_id (%llu)\n", v76, v77, v78, v79, v80, v81, v82, v75);
    v24 = 1184;
    goto LABEL_9;
  }

  if (v74 <= 0xF && (v74 > 7 || ((1 << v74) & 0x8C) == 0))
  {
    v83 = _apfs_type_to_str(v15);
    v97 = *a5;
    fsck_printf_warn("%s (id %llu): invalid dstream_id (%llu)\n", v84, v85, v86, v87, v88, v89, v90, v83);
    fsck_fail_func(0x4A1, -2);
    v74 = *a5;
    v55 = *(a7 + 40);
  }

  v91 = v74 + 1;
  if (v55 < v91)
  {
    *(a7 + 40) = v91;
  }

  v92 = dstream_register_purgeable_ts(a3, a5, a3, a4, a5, a6, a7, a8);
  if (v92)
  {
    v41 = v92;
  }

  else
  {
    v41 = purgeable_register_ts(*(a3 + 12));
    if (!v41)
    {
      return v41;
    }
  }

LABEL_10:
  print_jobj_key_val_info(a2, a3, a4, a5, a6, v42, v43, v44, v93);
  return v41;
}

uint64_t sub_100081584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  if (a4 != 12)
  {
    v28 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v29, v30, v31, v32, v33, v34, v35, v28);
    v26 = 92;
    v27 = 1186;
    goto LABEL_7;
  }

  if (a6 <= 0x33)
  {
    v18 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v19, v20, v21, v22, v23, v24, v25, v18);
    v26 = 92;
    v27 = 1187;
LABEL_7:
    fsck_fail_func(v27, 92);
LABEL_8:
    print_jobj_key_val_info(a2, a3, a4, a5, a6, v36, v37, v38, v134);
    return v26;
  }

  if (v16 <= 1)
  {
    v40 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v41, v42, v43, v44, v45, v46, v47, v40);
    v26 = 92;
    v27 = 1188;
    goto LABEL_7;
  }

  if (v16 <= 0xF && v16 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v49 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v50, v51, v52, v53, v54, v55, v56, v49);
    fsck_fail_func(0x4A5, -2);
  }

  v57 = *(a7 + 40);
  if (v57 <= v16)
  {
    v57 = v16 + 1;
    *(a7 + 40) = v16 + 1;
  }

  v58 = *(a5 + 32);
  if (v58 == 1)
  {
    v59 = _apfs_type_to_str(v17);
    v135 = *(a5 + 32);
    fsck_printf_err("%s (id %llu): invalid chained_key (%llu)\n", v60, v61, v62, v63, v64, v65, v66, v59);
    v26 = 92;
    v27 = 1192;
    goto LABEL_7;
  }

  if (v58 <= 0xF && v58 > 3)
  {
    v67 = _apfs_type_to_str(v17);
    v136 = *(a5 + 32);
    fsck_printf_warn("%s (id %llu): invalid chained_key (%llu)\n", v68, v69, v70, v71, v72, v73, v74, v67);
    fsck_fail_func(0x4A9, -2);
    v58 = *(a5 + 32);
    v57 = *(a7 + 40);
  }

  v75 = v58 + 1;
  if (v57 < v75)
  {
    *(a7 + 40) = v75;
  }

  if (!*(a5 + 40))
  {
    v76 = _apfs_type_to_str(v17);
    v137 = *(a5 + 40);
    fsck_printf_warn("%s (id %llu): invalid gen_count (%llu)\n", v77, v78, v79, v80, v81, v82, v83, v76);
    fsck_fail_func(0x4AA, -8);
  }

  v84 = *(a5 + 48);
  if (v84 >= 0x1000)
  {
    v85 = _apfs_type_to_str(v17);
    v138 = *(a5 + 48);
    fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v86, v87, v88, v89, v90, v91, v92, v85);
    fsck_fail_func(0x4AB, -3);
    v84 = *(a5 + 48);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v99 = fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v93, v94, v95, v96, v97, v98, 0);
      v84 = *(a5 + 48);
      if (v99)
      {
        *(a5 + 48) &= 0xFFFu;
        *a8 = 1;
        v84 = *(a5 + 48);
      }
    }
  }

  if ((v84 & 0x200) != 0)
  {
    v100 = _apfs_type_to_str(v17);
    v139 = *(a5 + 32);
    fsck_printf_err("%s (id %llu): found dir-stats object (chained-key %llu) that is unexpectedly being moved\n", v101, v102, v103, v104, v105, v106, v107, v100);
    fsck_fail_func(0x5A8, 92);
    v84 = *(a5 + 48);
  }

  if ((v84 & 2) != 0 && (*(*(a2 + 40) + 48) & 8) == 0)
  {
    v108 = _apfs_type_to_str(v17);
    v140 = *(a5 + 48);
    fsck_printf_warn("%s (id %llu): invalid dir-stats flags (0x%x) on volume without attribution tags\n", v109, v110, v111, v112, v113, v114, v115, v108);
    fsck_fail_func(0x5E7, -3);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v116 = sub_100082540(a1, a2, a3, (a5 + 52), (a6 - 52), sub_100085730, a7, a8, &v142);
  if (v116)
  {
    v26 = v116;
    v117 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid xfields\n", v118, v119, v120, v121, v122, v123, v124, v117);
    goto LABEL_8;
  }

  if ((~*(a5 + 48) & 0x801) == 0 && v144 == 1 && *(&v144 + 1) > *(a5 + 16))
  {
    v125 = _apfs_type_to_str(v17);
    v141 = *(a5 + 16);
    fsck_printf_warn("%s (id %llu): purgeable resource fork size (%llu) is larger than resource fork size (%llu)\n", v126, v127, v128, v129, v130, v131, v132, v125);
    fsck_fail_func(0x5B4, -3);
  }

  dir_stats_register_expanded_dir_stats(v16, a5, a6, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, *(&v144 + 1), v145, *(&v145 + 1));
  v26 = v133;
  if (v133)
  {
    goto LABEL_8;
  }

  return v26;
}

uint64_t sub_1000819D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = *a3;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  v18 = *(a2 + 40);
  if ((*(v18 + 48) & 4) == 0)
  {
    fsck_printf_warn("found clone mapping in an unsupported volume format\n", a2, a3, a4, a5, a6, a7, a8, v83);
    fsck_fail_func(0x5F0, -2);
    v18 = *(a2 + 40);
  }

  if ((*(v18 + 1108) & 1) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFFFFLL;
    if (a4 != 28)
    {
      v38 = _apfs_type_to_str(v17);
      fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v39, v40, v41, v42, v43, v44, v45, v38);
      v28 = 92;
      v29 = 1299;
      goto LABEL_12;
    }

    if (a6 <= 7)
    {
      v20 = _apfs_type_to_str(v17);
      fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v21, v22, v23, v24, v25, v26, v27, v20);
      v28 = 92;
      v29 = 1300;
LABEL_12:
      fsck_fail_func(v29, 92);
LABEL_13:
      print_jobj_key_val_info(a2, a3, a4, a5, a6, v46, v47, v48, v84);
      return v28;
    }

    if (v19 != 9)
    {
      v52 = _apfs_type_to_str(v17);
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v53, v54, v55, v56, v57, v58, v59, v52);
      v28 = 92;
      v29 = 1301;
      goto LABEL_12;
    }

    v50 = *(a7 + 40);
    if (v50 <= 9)
    {
      v50 = 10;
      *(a7 + 40) = 10;
    }

    v51 = *(a3 + 12);
    if (v51 > 0xF)
    {
      v60 = v51 + 1;
      if (v50 < v60)
      {
        *(a7 + 40) = v60;
      }
    }

    else
    {
      v85 = *(a3 + 20);
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): invalid private_id\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 12));
      fsck_fail_func(0x516, -2);
    }

    v61 = *(a3 + 20);
    if (v61 > 0xF)
    {
      v62 = v61 + 1;
      if (*(a7 + 40) < v62)
      {
        *(a7 + 40) = v62;
      }
    }

    else
    {
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): invalid file_id\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 12));
      fsck_fail_func(0x517, -2);
    }

    v63 = *a5;
    v64 = *a5 & 0xFFFFFFFFFFFFFFLL;
    v65 = *(a1 + 8);
    v66 = *(v65 + 36);
    if (v64 % v66 || v64 / v66 > *(v65 + 40))
    {
      v86 = *(a3 + 20);
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): invalid physical_size (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 12));
      fsck_fail_func(0x518, 92);
    }

    if (v63 >> 57)
    {
      v87 = *(a3 + 20);
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 12));
      fsck_fail_func(0x554, -3);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v67, v68, v69, v70, v71, v72, HIBYTE(v63) & 0xFE))
        {
          *a5 = v63 & 0x1FFFFFFFFFFFFFFLL;
          *a8 = 1;
        }
      }
    }

    v89 = 0;
    v90 = 0;
    v73 = sub_100082540(a1, a2, a3, a5 + 4, (a6 - 8), sub_100085984, a7, a8, &v89);
    if (v73)
    {
      v28 = v73;
      v88 = *(a3 + 20);
      fsck_printf_err("clone mapping (private_id %llu, file_id %llu): invalid xfields\n", v74, v75, v76, v77, v78, v79, v80, *(a3 + 12));
      goto LABEL_13;
    }

    if (!v90 || (v81 = file_info_register_clone(v90, v64), !v81))
    {
      if (v89)
      {
        v81 = dir_stats_register_clone(v89, v64);
        if (v81)
        {
          goto LABEL_42;
        }

        v82 = v89;
      }

      else
      {
        v82 = 0;
      }

      v28 = clone_mapping_register(*(a3 + 12), *(a3 + 20), a5, v90, v82);
      if (!v28)
      {
        return v28;
      }

      goto LABEL_13;
    }

LABEL_42:
    v28 = v81;
    goto LABEL_13;
  }

  fsck_printf_err("found clone mapping in a volume with initialized clonegroup tree\n", a2, a3, a4, a5, a6, a7, a8, v83);
  v30 = fsck_fail_func(0x612, 92);
  if (*(a7 + 64))
  {
    print_snapshot_warning(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  else
  {
    fsck_repairs_add(a2 + 768, 7, 0, 0, 0, a3, 0x1Cu, 0, 0);
  }

  return 0;
}

uint64_t fext_validate_repair_key_val(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v11 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v12 = a2[6];
  if (!v12)
  {
    v12 = a2[5];
  }

  if ((*(v12 + 56) & 0x20) != 0)
  {
    if (!(*a3 >> 60))
    {
      v30 = sub_100084668(a1, a2, a3, a5, a7, a8);
      if (!v30)
      {
        return v30;
      }

      goto LABEL_8;
    }

    v22 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): ID larger than MAX_JOBJ_ID (%llu)\n", v23, v24, v25, v26, v27, v28, v29, v22);
    v21 = 920;
  }

  else
  {
    v13 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): fext tree record present on non-sealed volume\n", v14, v15, v16, v17, v18, v19, v20, v13);
    v21 = 919;
  }

  v30 = 92;
  fsck_fail_func(v21, 92);
LABEL_8:
  print_fext_tree_key_val_info(a2, a3, a5, v31, v32, v33, v34, v35);
  return v30;
}

uint64_t clonegroup_validate_repair_key_val(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  if (a4 <= 8)
  {
    fsck_printf_err("clone group tree: invalid key length (%u)\n", a2, a3, a4, a5, a6, a7, a8, a4);
    v8 = 92;
    v9 = 1531;
LABEL_3:
    v10 = 92;
LABEL_4:
    fsck_fail_func(v9, v10);
    return v8;
  }

  v13 = a6;
  v15 = *(a3 + 8);
  if (v15 == 2)
  {
    if (a4 != 17)
    {
      fsck_printf_err("clone group tree: invalid cookie key length (%u)\n", a2, a3, a4, a5, a6, a7, a8, a4);
      v8 = 92;
      v9 = 1559;
      goto LABEL_3;
    }

    if (a6 != 1)
    {
      fsck_printf_err("clone group tree (id %llu): invalid cookie val length (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 9));
      v8 = 92;
      v9 = 1560;
      goto LABEL_3;
    }

    v17 = *(a3 + 9);
    if (*a3 != 1 || v17 <= 0x3FF)
    {
      fsck_printf_err("clone group tree: cookie group_id (%llu) or cookie_group_id (%llu) is invalid\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      v8 = 92;
      v9 = 1561;
      goto LABEL_3;
    }

    v18 = v17 + 1;
    if (*(a7 + 56) < v18)
    {
      v8 = 0;
      *(a7 + 56) = v18;
      return v8;
    }

    return 0;
  }

  if (v15 != 1)
  {
    fsck_printf_warn("clone group tree: unknown type (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 8));
    return 0;
  }

  v16 = *a3;
  if (*a3 <= 0x3FFuLL)
  {
    fsck_printf_err("clone group tree: mapping group_id (%llu) is invalid\n", a2, a3, a4, a5, a6, a7, a8, *a3);
    v8 = 92;
    v9 = 1532;
    goto LABEL_3;
  }

  if (*(a7 + 56) < (v16 + 1))
  {
    *(a7 + 56) = v16 + 1;
  }

  if (a4 != 25)
  {
    fsck_printf_err("clone group tree (id %llu): invalid key length (%u)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v8 = 92;
    v9 = 1524;
    goto LABEL_3;
  }

  v23 = *(a3 + 9);
  if (v23 <= 0xF)
  {
    v56 = *(a3 + 9);
    v59 = *(a3 + 17);
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): private_id is invalid\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v8 = 92;
    v9 = 1525;
    goto LABEL_3;
  }

  v24 = *(a7 + 40);
  if (v24 < v23 + 1)
  {
    *(a7 + 40) = v23 + 1;
    v24 = v23 + 1;
  }

  v25 = *(a3 + 17);
  if (v25 <= 0xF)
  {
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): inum is invalid\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v8 = 92;
    v9 = 1526;
    goto LABEL_3;
  }

  if (v24 < v25 + 1)
  {
    *(a7 + 40) = v25 + 1;
  }

  if (a6 <= 0xB)
  {
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): invalid value length (%u)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v8 = 92;
    v9 = 1527;
    goto LABEL_3;
  }

  v26 = *(a1 + 8);
  v27 = *(v26 + 36);
  if (*a5 % v27 || *a5 / v27 > *(v26 + 40))
  {
    fsck_printf_warn("clonegroup (group id %llu, private_id %llu, file id %llu): invalid physical_size (%llu)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    fsck_fail_func(0x5F8, -11);
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if (*(a5 + 2) >= 0x20u)
  {
    v62 = *(a5 + 2);
    v57 = *(a3 + 9);
    v60 = *(a3 + 17);
    fsck_printf_warn("clonegroup (group id %llu, private_id %llu, file id %llu): unknown flags (0x%x / known flags are: 0x%x)", a2, a3, a4, a5, a6, a7, a8, *a3);
    fsck_fail_func(0x5F9, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v29, v30, v31, v32, v33, v34, a5[1] & 0xE0))
      {
        *(a5 + 2) &= 0x1Fu;
        *a8 = 1;
      }
    }
  }

  v35 = *a3 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
  v64 = 0;
  v65 = v35;
  v66 = 20;
  v63 = 0;
  v36 = sub_100082540(a1, a2, &v65, a5 + 6, (v13 - 12), sub_100085BD0, a7, a8, &v63);
  if (v36)
  {
    v8 = v36;
    v58 = *(a3 + 9);
    v61 = *(a3 + 17);
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): invalid xfields\n", v37, v38, v39, v40, v41, v42, v43, *a3);
    return v8;
  }

  if ((a5[1] & 0x10) != 0)
  {
    if (v64)
    {
      v55 = file_info_register_clone(v64, *a5);
      if (v55)
      {
        return v55;
      }
    }

    if (v63)
    {
      v55 = dir_stats_register_clone(v63, *a5);
      if (v55)
      {
        return v55;
      }
    }
  }

  v44 = clonegroup_register(a3, v63, v64, *(a5 + 2), v28);
  v8 = v44;
  if (v44)
  {
    v45 = *a3;
    v46 = *(a3 + 9);
    v47 = *(a3 + 17);
    strerror(v44);
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): can't register for cross checks: %d (%s)\n", v48, v49, v50, v51, v52, v53, v54, v45);
    v9 = 1530;
    v10 = v8;
    goto LABEL_4;
  }

  return v8;
}

char *fsroot_jobj_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a2)
  {
    fsck_tree_node_repair_init(a1);
  }

  dstream_init(a2);
  crypto_init(a2);
  inode_init(a2);
  dir_stats_init(a2);
  file_info_init();
  result = clone_mapping_init();
  if (a1)
  {
    v19 = *(a1 + 8);

    return purgeable_init(v19, v12, v13, v14, v15, v16, v17, v18, a9);
  }

  return result;
}

uint64_t fsroot_jobj_abort(uint64_t a1)
{
  dstream_abort();
  crypto_abort();
  dir_abort();
  dir_stats_abort();
  file_info_abort();
  clone_mapping_abort();
  purgeable_abort();
  clonegroup_abort();
  result = phys_extent_cleanup();
  *(a1 + 10) = 0;
  return result;
}

uint64_t fsroot_jobj_advance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = dstream_reset(0xFFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
  LODWORD(result) = inode_finalize(a1, a2, a3, v12, v13, v14, v15, v16);
  if (result)
  {
    return result;
  }

  else
  {
    return v11;
  }
}

uint64_t fsroot_jobj_finalize(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = fsck_tree_node_repair_volume(a1, a2, a4);
  }

  v13 = dstream_finalize(a1, a2, a4, a4, a5, a6, a7, a8);
  if (v13)
  {
    v12 = v13;
  }

  v14 = crypto_finalize(a1, a2, a4);
  if (v14)
  {
    v12 = v14;
  }

  v20 = inode_finalize(a1, a2, a4, v15, v16, v17, v18, v19);
  if (v20)
  {
    v25 = v20;
  }

  else
  {
    v25 = v12;
  }

  v26 = dir_finalize(a1, a2, a3, a4, v21, v22, v23, v24);
  if (!(clone_mapping_finalize(a1, a2, a4) | v26))
  {
    v26 = v25;
  }

  v27 = dir_stats_finalize(a1, a2, a4);
  if (v27)
  {
    v26 = v27;
  }

  v28 = file_info_finalize(a1, a2, a3);
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v26;
  }

  v30 = purgeable_finalize(a1, a2, a4);
  if (v30)
  {
    v29 = v30;
  }

  LODWORD(result) = clonegroup_finalize(a1, a2, a4);
  if (result)
  {
    return result;
  }

  else
  {
    return v29;
  }
}

uint64_t sub_100082540(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unsigned __int16 *, unint64_t, uint64_t, uint64_t, _DWORD *, uint64_t), uint64_t a7, _DWORD *a8, uint64_t a9)
{
  if (a5 >= 4)
  {
    v11 = *a4;
    if (a4[1] + 4 * v11 + 4 <= a5)
    {
      if (!*a4)
      {
        v20 = 0;
LABEL_15:
        if (v20 < a4[1])
        {
          fsck_printf_warn("xf: xf_used_data (%u) is larger than expected (%u)\n", a2, a3, a4, a5, a6, a7, a8, a4[1]);
          fsck_fail_func(0x44C, -11);
          if (fsckAskPrompt(fsck_apfs_ctx, "Fix xf_used_data? ", v25, v26, v27, v28, v29, v30, v42))
          {
            v9 = 0;
            a4[1] = v20;
            *a8 = 1;
            return v9;
          }
        }

        return 0;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      v45 = &a4[2 * v11 + 2];
      v21 = a4 + 3;
      do
      {
        if ((a4[1] - v19) < *v21)
        {
          v31 = *a3 >> 60;
          if (v31 == 14)
          {
            LODWORD(v31) = *(a3 + 8);
          }

          v32 = _apfs_type_to_str(v31);
          v33 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v34 = *a4;
          _xf_type_to_str(a3, *(v21 - 2));
          v43 = *v21;
          v44 = a4[1];
          fsck_printf_err("%s (id %llu): xf %u/%u: %s: extended field at offset %u+%u extends beyond xf_used_data (%u)\n", v35, v36, v37, v38, v39, v40, v41, v32);
          v9 = 92;
          v12 = 899;
          goto LABEL_5;
        }

        v22 = a6(a1, a2, a3, a4, v18, v45 + v19, a7, a8, a9);
        if (v22)
        {
          return v22;
        }

        v23 = *v21;
        v21 += 2;
        v24 = (v23 + 7) & 0x1FFF8;
        v20 += v24;
        ++v18;
        v19 += v24;
      }

      while (v18 < *a4);
      if (v20 < 0x10000)
      {
        goto LABEL_15;
      }

      fsck_printf_err("xf: xf total size (%u) is larger than UINT16_MAX\n", a2, a3, a4, a5, a6, a7, a8, v20);
      v9 = 92;
      v12 = 1099;
    }

    else
    {
      fsck_printf_err("xf: xf_num_exts (%u) extended fields do not fit in the given xf_used_data (%u)\n", a2, a3, a4, a5, a6, a7, a8, *a4);
      v9 = 92;
      v12 = 191;
    }

LABEL_5:
    fsck_fail_func(v12, 92);
    return v9;
  }

  return 0;
}

uint64_t sub_10008276C(uint64_t *a1, int8x16_t *a2, uint64_t a3, unsigned __int16 *a4, int a5, UInt8 *bytes, uint64_t a7, _DWORD *a8, uint64_t a9)
{
  v15 = &a4[2 * a5];
  v16 = *(a9 + 48);
  v19 = *(v15 + 4);
  v18 = (v15 + 2);
  v17 = v19;
  v20 = *(v18 + 1);
  if (v19 <= 0x15 && ((0x251uLL >> v17) & 1) == 0 && word_1000B32A0[v17] != v20)
  {
    v55 = *a3 >> 60;
    if (v55 == 14)
    {
      LODWORD(v55) = *(a3 + 8);
    }

    v56 = _apfs_type_to_str(v55);
    v57 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v58 = *a4;
    _xf_type_to_str(a3, *v18);
    v432 = *(v18 + 1);
    fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, expected %u\n", v59, v60, v61, v62, v63, v64, v65, v56);
    v21 = 92;
    v53 = 983;
LABEL_20:
    v54 = 92;
    goto LABEL_21;
  }

  v21 = 0;
  switch(v17)
  {
    case 1:
    case 2:
    case 6:
    case 7:
    case 9:
      v22 = a2;
      v23 = a7;
      v24 = *a3 >> 60;
      if (v24 == 14)
      {
        LODWORD(v24) = *(a3 + 8);
      }

      v25 = _apfs_type_to_str(v24);
      v26 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v414 = *a4;
      _xf_type_to_str(a3, *v18);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: extended field type is no longer used\n", v27, v28, v29, v30, v31, v32, v33, v25);
      v34 = 987;
      goto LABEL_6;
    case 3:
      *uu = *bytes;
      v446 = *uu;
      v450 = a7;
      v445 = a2;
      if (*uu <= 2u)
      {
        v196 = *a3 >> 60;
        if (v196 == 14)
        {
          LODWORD(v196) = *(a3 + 8);
        }

        v197 = _apfs_type_to_str(v196);
        v440 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v442 = v197;
        v198 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid doc_id (%u), less than MIN_DOC_ID (%u)\n", v199, v200, v201, v202, v203, v204, v205, v442);
        fsck_fail_func(0xC2, -2);
        a7 = v450;
        a2 = v445;
      }

      v206 = *(v16 + 68);
      if ((v206 & 0x40) != 0)
      {
        goto LABEL_88;
      }

      v443 = v206 | 0x40;
      v207 = *a3 >> 60;
      if (v207 == 14)
      {
        LODWORD(v207) = *(a3 + 8);
      }

      v208 = _apfs_type_to_str(v207);
      v439 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v441 = v208;
      v209 = *a4;
      _xf_type_to_str(a3, *v18);
      v436 = *(v16 + 68);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: doc_id exists (%u), despite bsd_flags (0x%x)\n", v210, v211, v212, v213, v214, v215, v216, v441);
      v21 = 92;
      fsck_fail_func(0x44D, 92);
      if (fsckAskPrompt(fsck_apfs_ctx, "Set bsd_flags to 0x%x? ", v217, v218, v219, v220, v221, v222, v443))
      {
        a2 = v445;
        *(v16 + 68) = v443;
        *a8 = 1;
        a7 = v450;
LABEL_88:
        if (*(a7 + 48) < (v446 + 1))
        {
          *(a7 + 48) = v446 + 1;
        }

        v223 = validate_doc_id_tree_record(a1, a2, *a3 & 0xFFFFFFFFFFFFFFFLL, uu, a7, a8);
        if (v223)
        {
          v21 = v223;
          v224 = *a3 >> 60;
          if (v224 == 14)
          {
            LODWORD(v224) = *(a3 + 8);
          }

          v225 = _apfs_type_to_str(v224);
          v226 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v421 = *a4;
          _xf_type_to_str(a3, *v18);
          fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid doc_id index\n", v227, v228, v229, v230, v231, v232, v233, v225);
        }

        else
        {
          if (*a8)
          {
            *bytes = *uu;
          }

          v21 = 0;
          *a9 = 1;
        }
      }

      return v21;
    case 4:
      if (bytes[v20 - 1])
      {
        v90 = *a3 >> 60;
        if (v90 == 14)
        {
          LODWORD(v90) = *(a3 + 8);
        }

        v91 = _apfs_type_to_str(v90);
        v92 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v93 = *a4;
        _xf_type_to_str(a3, *v18);
        v438 = *(v18 + 1);
        fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid name (%.*s), given name_len (%u)\n", v94, v95, v96, v97, v98, v99, v100, v91);
        v21 = 92;
        v53 = 196;
        goto LABEL_20;
      }

      if (!sub_10007CC60(bytes, v20))
      {
        return 0;
      }

      v304 = *a3 >> 60;
      if (v304 == 14)
      {
        LODWORD(v304) = *(a3 + 8);
      }

      v305 = _apfs_type_to_str(v304);
      v306 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v307 = *a4;
      _xf_type_to_str(a3, *v18);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid name (%s)\n", v308, v309, v310, v311, v312, v313, v314, v305);
      v78 = 197;
      v79 = -9;
      goto LABEL_60;
    case 5:
    case 12:
    case 15:
    case 16:
    case 18:
      return v21;
    case 8:
      v101 = *(bytes + 1);
      *uu = *bytes;
      v452 = v101;
      v453 = *(bytes + 4);
      if ((*(v16 + 80) & 0xF000) == 0x8000)
      {
        v448 = a7;
        v444 = a2;
        v102 = sub_100083E40(a1, a2, a3, v16, uu, a7, a8);
        if (v102)
        {
          v21 = v102;
          v105 = *a3 >> 60;
          if (v105 == 14)
          {
            LODWORD(v105) = *(a3 + 8);
          }

          v106 = _apfs_type_to_str(v105);
          v107 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v416 = *a4;
          _xf_type_to_str(a3, *v18);
          fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid dstream\n", v108, v109, v110, v111, v112, v113, v114, v106);
          return v21;
        }

        v350 = *(v16 + 8);
        if (v350)
        {
          v447 = *&uu[8];
          v351 = dstream_register(*a3 & 0xFFFFFFFFFFFFFFFLL, v350, *&uu[8], 1, (*(v16 + 48) >> 7) & 1, (*(v16 + 48) >> 22) & 1, v103, v104);
          if (v351)
          {
            v21 = v351;
            v352 = *a3 >> 60;
            if (v352 == 14)
            {
              LODWORD(v352) = *(a3 + 8);
            }

            v353 = _apfs_type_to_str(v352);
            v354 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v355 = *a4;
            _xf_type_to_str(a3, *v18);
            fsck_printf_err("%s (id %llu): xf %u/%u: %s: failed to register dstream: %d\n", v356, v357, v358, v359, v360, v361, v362, v353);
            return v21;
          }

          v383 = v447;
        }

        else
        {
          v383 = *&uu[8];
        }

        *(a9 + 16) = v383;
        v395 = v444[6];
        if (!v395)
        {
          v395 = v444[5];
        }

        if ((*(v395 + 56) & 0x20) == 0)
        {
          crypto_register_dstream(*a3 & 0xFFFFFFFFFFFFFFFLL, uu);
          if (v396)
          {
            v21 = v396;
            v401 = *a3 >> 60;
            if (v401 == 14)
            {
              LODWORD(v401) = *(a3 + 8);
            }

            v402 = _apfs_type_to_str(v401);
            v403 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v404 = *a4;
            _xf_type_to_str(a3, *v18);
            fsck_printf_err("%s (id %llu): xf %u/%u: %s: failed to register dstream for crypto state tracking: %d\n", v405, v406, v407, v408, v409, v410, v411, v402);
            return v21;
          }

          v412 = *(v16 + 8);
          if (v412 < (*a3 & 0xFFFFFFFFFFFFFFFuLL) && (*(v16 + 50) & 0x40) != 0 && *(v448 + 64))
          {
            sub_100084550(a1, v444, v412, v448, v397, v398, v399, v400);
          }
        }

        if (*a8)
        {
          v413 = v452;
          *bytes = *uu;
          *(bytes + 1) = v413;
          *(bytes + 4) = v453;
        }

LABEL_176:
        v21 = 0;
        *(a9 + 3) = 1;
        return v21;
      }

      v254 = a2;
      v255 = a7;
      v256 = *a3 >> 60;
      if (v256 == 14)
      {
        LODWORD(v256) = *(a3 + 8);
      }

      v257 = _apfs_type_to_str(v256);
      v258 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v424 = *a4;
      _xf_type_to_str(a3, *v18);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found unexpected dstream associated with non-regular file\n", v259, v260, v261, v262, v263, v264, v265, v257);
      if (*(v255 + 64))
      {
        i64 = 0;
      }

      else
      {
        i64 = v254[48].i64;
      }

      v273 = dstream_delete(i64, *a3, v266, v267, v268, v269, v270, v271);
      if (!v273)
      {
        goto LABEL_176;
      }

      v21 = v273;
      v274 = *a3 >> 60;
      if (v274 == 14)
      {
        LODWORD(v274) = *(a3 + 8);
      }

      v275 = _apfs_type_to_str(v274);
      v276 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v425 = *a4;
      _xf_type_to_str(a3, *v18);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unable to remove dstream of non-regular inode\n", v277, v278, v279, v280, v281, v282, v283, v275);
      return v21;
    case 10:
      v160 = *bytes;
      if (*bytes <= 0xFuLL && (*bytes - 4) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v449 = a7;
        v162 = *a3 >> 60;
        if (v162 == 14)
        {
          LODWORD(v162) = *(a3 + 8);
        }

        v163 = _apfs_type_to_str(v162);
        v164 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v165 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v166, v167, v168, v169, v170, v171, v172, v163);
        fsck_fail_func(0xC7, -2);
        a7 = v449;
      }

      v173 = *(v16 + 48);
      if ((v173 & 4) != 0 && (v174 = a7, dir_stats_register_origin(v160, *a3 & 0xFFFFFFFFFFFFFFFLL, v173), a7 = v174, v175))
      {
        v21 = v175;
        v176 = *a3 >> 60;
        if (v176 == 14)
        {
          LODWORD(v176) = *(a3 + 8);
        }

        v177 = _apfs_type_to_str(v176);
        v178 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v419 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_err("%s (id %llu): xf %u/%u: %s: failed to register dir-stats (%llu) origin: %d\n", v179, v180, v181, v182, v183, v184, v185, v177);
      }

      else
      {
        if (*(a7 + 40) < (v160 + 1))
        {
          *(a7 + 40) = v160 + 1;
        }

        v21 = 0;
        *(a9 + 2) = 1;
        *(a9 + 8) = v160;
      }

      return v21;
    case 11:
      *uu = *bytes;
      if (!uuid_is_null(uu))
      {
        return 0;
      }

      v80 = *a3 >> 60;
      if (v80 == 14)
      {
        LODWORD(v80) = *(a3 + 8);
      }

      v81 = _apfs_type_to_str(v80);
      v82 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v415 = *a4;
      _xf_type_to_str(a3, *v18);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: uuid is NULL\n", v83, v84, v85, v86, v87, v88, v89, v81);
      v21 = 92;
      v53 = 200;
      goto LABEL_20;
    case 13:
      if ((*(v16 + 49) & 2) == 0)
      {
        v115 = *a3 >> 60;
        if (v115 == 14)
        {
          LODWORD(v115) = *(a3 + 8);
        }

        v116 = _apfs_type_to_str(v115);
        v117 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v417 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: sparse_bytes set even though inode is not sparse\n", v118, v119, v120, v121, v122, v123, v124, v116);
        fsck_fail_func(0xC9, -5);
      }

      v21 = 0;
      *(a9 + 24) = *bytes;
      *(a9 + 4) = 1;
      return v21;
    case 14:
      *(a9 + 1) = 1;
      if ((*(a2[2].i64[1] + 57) & 2) != 0)
      {
        v22 = a2;
        v23 = a7;
        v244 = *a3 >> 60;
        if (v244 == 14)
        {
          LODWORD(v244) = *(a3 + 8);
        }

        v245 = _apfs_type_to_str(v244);
        v246 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v423 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found rdev x-field but volume has rdev in core-inode\n", v247, v248, v249, v250, v251, v252, v253, v245);
        v34 = 1156;
        goto LABEL_6;
      }

      if ((*(v16 + 80) & 0xB000 | 0x4000) != 0x6000)
      {
        v22 = a2;
        v23 = a7;
        v363 = *a3 >> 60;
        if (v363 == 14)
        {
          LODWORD(v363) = *(a3 + 8);
        }

        v364 = _apfs_type_to_str(v363);
        v365 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v430 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found rdev x-field even though inode is not a char/block device\n", v366, v367, v368, v369, v370, v371, v372, v364);
        v34 = 1157;
        goto LABEL_6;
      }

      if (!*bytes)
      {
        v67 = *a3 >> 60;
        if (v67 == 14)
        {
          LODWORD(v67) = *(a3 + 8);
        }

        v68 = _apfs_type_to_str(v67);
        v69 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v70 = *a4;
        _xf_type_to_str(a3, *v18);
        v433 = *(v16 + 80);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found zero rdev on char/block device (mode %u)\n", v71, v72, v73, v74, v75, v76, v77, v68);
        v78 = 1212;
        v79 = 92;
LABEL_60:
        fsck_fail_func(v78, v79);
      }

      return 0;
    case 17:
      v125 = a2[2].i64[1];
      if ((*(v125 + 57) & 2) != 0)
      {
        v22 = a2;
        v23 = a7;
        v284 = *a3 >> 60;
        if (v284 == 14)
        {
          LODWORD(v284) = *(a3 + 8);
        }

        v285 = _apfs_type_to_str(v284);
        v286 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v426 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found nlink x-field but volume has dir-nlink in core-inode\n", v287, v288, v289, v290, v291, v292, v293, v285);
        v34 = 1154;
      }

      else
      {
        if ((*(v125 + 48) & 2) == 0)
        {
          v22 = a2;
          v23 = a7;
          v126 = *a3 >> 60;
          if (v126 == 14)
          {
            LODWORD(v126) = *(a3 + 8);
          }

          v127 = _apfs_type_to_str(v126);
          v128 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v418 = *a4;
          _xf_type_to_str(a3, *v18);
          fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found nlink field but volume doesn't support it\n", v129, v130, v131, v132, v133, v134, v135, v127);
          v34 = 984;
          goto LABEL_6;
        }

        if ((*(v16 + 80) & 0xF000) == 0x4000)
        {
          v326 = *bytes;
          if (*bytes <= *(v16 + 56))
          {
            if (!(v326 >> 31))
            {
LABEL_160:
              dir_register_nlink(*a3 & 0xFFFFFFFFFFFFFFFLL, v326);
              return 0;
            }

            v384 = *a3 >> 60;
            if (v384 == 14)
            {
              LODWORD(v384) = *(a3 + 8);
            }

            v385 = _apfs_type_to_str(v384);
            v386 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v387 = *a4;
            _xf_type_to_str(a3, *v18);
            fsck_printf_warn("%s (id %llu): xf %u/%u: %s: directory nlink value is invalid (%llu)\n", v388, v389, v390, v391, v392, v393, v394, v385);
            LODWORD(v326) = 0;
            v338 = 1211;
          }

          else
          {
            v327 = *a3 >> 60;
            if (v327 == 14)
            {
              LODWORD(v327) = *(a3 + 8);
            }

            v328 = _apfs_type_to_str(v327);
            v329 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v330 = *a4;
            _xf_type_to_str(a3, *v18);
            v437 = *(v16 + 56);
            fsck_printf_warn("%s (id %llu): xf %u/%u: %s: directory nlink value %lld is greater than nchildren (%d)\n", v331, v332, v333, v334, v335, v336, v337, v328);
            v338 = 986;
          }

          fsck_fail_func(v338, -8);
          goto LABEL_160;
        }

        v22 = a2;
        v23 = a7;
        v373 = *a3 >> 60;
        if (v373 == 14)
        {
          LODWORD(v373) = *(a3 + 8);
        }

        v374 = _apfs_type_to_str(v373);
        v375 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v431 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found nlink field even though inode is not a directory\n", v376, v377, v378, v379, v380, v381, v382, v374);
        v34 = 985;
      }

LABEL_6:
      v35 = -5;
LABEL_7:
      fsck_fail_func(v34, v35);
LABEL_8:
      if (*(v23 + 64))
      {
        v41 = 0;
      }

      else
      {
        v41 = v22[48].i64;
      }

      v21 = inode_repairs_add_xf_deletion(v41, *a3, *v18, v36, v37, v38, v39, v40);
      if (v21)
      {
        v42 = *a3 >> 60;
        if (v42 == 14)
        {
          LODWORD(v42) = *(a3 + 8);
        }

        v43 = _apfs_type_to_str(v42);
        v44 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v45 = *a4;
        _xf_type_to_str(a3, *v18);
        strerror(v21);
        fsck_printf_err("%s (id %llu): xf %u/%u: %s: unable to add repair for unexpected xfield: %s\n", v46, v47, v48, v49, v50, v51, v52, v43);
        v53 = 1213;
        v54 = v21;
LABEL_21:
        fsck_fail_func(v53, v54);
      }

      return v21;
    case 19:
      if ((*(v16 + 51) & 0x20) != 0)
      {
        v22 = a2;
        v23 = a7;
        v294 = *a3 >> 60;
        if (v294 == 14)
        {
          LODWORD(v294) = *(a3 + 8);
        }

        v295 = _apfs_type_to_str(v294);
        v296 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v427 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found attribution tag on an inode with unsupported flags\n", v297, v298, v299, v300, v301, v302, v303, v295);
        v34 = 1336;
        goto LABEL_6;
      }

      if ((*(a2[2].i64[1] + 48) & 8) == 0)
      {
        v22 = a2;
        v23 = a7;
        v186 = *a3 >> 60;
        if (v186 == 14)
        {
          LODWORD(v186) = *(a3 + 8);
        }

        v187 = _apfs_type_to_str(v186);
        v188 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v420 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found attribution tag on a volume that doesn't support them\n", v189, v190, v191, v192, v193, v194, v195, v187);
        v34 = 1315;
        goto LABEL_6;
      }

      v339 = *bytes;
      *(a9 + 32) = *bytes;
      if (!v339)
      {
        v340 = *a3 >> 60;
        if (v340 == 14)
        {
          LODWORD(v340) = *(a3 + 8);
        }

        v341 = _apfs_type_to_str(v340);
        v342 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v429 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid hash: (0)\n", v343, v344, v345, v346, v347, v348, v349, v341);
        fsck_fail_func(0x524, -7);
      }

      v21 = 0;
      *(a9 + 5) = 1;
      return v21;
    case 20:
      if ((~*(v16 + 48) & 0x20000004) == 0)
      {
        return 0;
      }

      v22 = a2;
      v23 = a7;
      v234 = *a3 >> 60;
      if (v234 == 14)
      {
        LODWORD(v234) = *(a3 + 8);
      }

      v235 = _apfs_type_to_str(v234);
      v236 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v422 = *a4;
      _xf_type_to_str(a3, *v18);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: inode is expected to be an SAF dir-stats origin\n", v237, v238, v239, v240, v241, v242, v243, v235);
      v34 = 1470;
      v35 = 92;
      goto LABEL_7;
    case 21:
      *(a9 + 40) = *bytes;
      if (*(a2[2].i64[1] + 1112))
      {
        v136 = *(a9 + 40);
        if (v136 > 0x3FF)
        {
          v325 = v136 + 1;
          if (*(a7 + 56) >= v325)
          {
            return 0;
          }

          v21 = 0;
          *(a7 + 56) = v325;
          return v21;
        }

        v22 = a2;
        v23 = a7;
        v137 = *a3 >> 60;
        if (v137 == 14)
        {
          LODWORD(v137) = *(a3 + 8);
        }

        v138 = _apfs_type_to_str(v137);
        v139 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v140 = *a4;
        _xf_type_to_str(a3, *v18);
        v434 = *(a9 + 40);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid clonegroup_id (%llu), less than CLONEGROUP_ID_MIN (%u)\n", v141, v142, v143, v144, v145, v146, v147, v138);
        v148 = 1519;
      }

      else
      {
        v22 = a2;
        v23 = a7;
        v315 = *a3 >> 60;
        if (v315 == 14)
        {
          LODWORD(v315) = *(a3 + 8);
        }

        v316 = _apfs_type_to_str(v315);
        v317 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v428 = *a4;
        _xf_type_to_str(a3, *v18);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found in an unsupported volume\n", v318, v319, v320, v321, v322, v323, v324, v316);
        v148 = 1518;
      }

      fsck_fail_func(v148, -2);
      *(a9 + 40) = 0;
      goto LABEL_8;
    default:
      v149 = *a3 >> 60;
      if (v149 == 14)
      {
        LODWORD(v149) = *(a3 + 8);
      }

      v150 = _apfs_type_to_str(v149);
      v151 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v152 = *a4;
      _xf_type_to_str(a3, *v18);
      v435 = *v18;
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v153, v154, v155, v156, v157, v158, v159, v150);
      v78 = 202;
      v79 = -5;
      goto LABEL_60;
  }
}

uint64_t sub_100083848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v12 = *(a4 + 48);
  v172 = 0;
  v13 = *(v12 + 48);
  if ((v13 & 6) != 0 && (*(a4 + 2) & 1) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFF9;
    v15 = _apfs_type_to_str(*a5 >> 60);
    v153 = *a5 & 0xFFFFFFFFFFFFFFFLL;
    v163 = *(v12 + 48);
    fsck_printf_warn("%s (id %llu): dir-stats key xf does not exist, despite internal_flags (0x%llx)\n", v16, v17, v18, v19, v20, v21, v22, v15);
    fsck_fail_func(0x4CD, -3);
    if (fsckAskPrompt(fsck_apfs_ctx, "Set internal_flags to 0x%llx? ", v23, v24, v25, v26, v27, v28, v14))
    {
      *(v12 + 48) = v14;
      *a6 = 1;
    }
  }

  if (*(a4 + 4) == 1 && (*(a4 + 3) & 1) == 0)
  {
    v29 = _apfs_type_to_str(*a5 >> 60);
    v154 = *a5 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): dstream xf does not exist, despite existence of sparse bytes xf\n", v30, v31, v32, v33, v34, v35, v36, v29);
    fsck_fail_func(0x4EA, -5);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  if (*(a4 + 2) != 1)
  {
    v60 = a6;
    v42 = (a4 + 24);
    v41 = *(a4 + 24);
    v45 = (a4 + 16);
    v44 = *(a4 + 16);
    if (v41 > v44 && v44 != 0)
    {
      v37 = a3;
      v38 = a1;
      v39 = a2;
      v171 = v60;
      v43 = 0;
      goto LABEL_26;
    }

    v62 = v60;
    goto LABEL_33;
  }

  v37 = a3;
  v38 = a1;
  v39 = a2;
  v171 = a6;
  v40 = *(v12 + 48);
  v42 = (a4 + 24);
  v41 = *(a4 + 24);
  v43 = (v40 & 6) == 2;
  v45 = (a4 + 16);
  v44 = *(a4 + 16);
  if (v41 > v44 && v44 != 0)
  {
LABEL_26:
    v63 = is_file_in_purgatory(v38, v39, *(v37 + 64), *a5 & 0xFFFFFFFFFFFFFFFLL, &v172);
    if (v63)
    {
      v51 = v63;
      v64 = 1333;
      v65 = v51;
LABEL_43:
      fsck_fail_func(v64, v65);
      return v51;
    }

    if ((v172 & 1) == 0)
    {
      v77 = _apfs_type_to_str(*a5 >> 60);
      v165 = *v42;
      v170 = *v45;
      v157 = *a5 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): number of sparse bytes (%llu) is larger than alloced_size (%llu)\n", v78, v79, v80, v81, v82, v83, v84, v77);
      v51 = 92;
      v64 = 1259;
      v65 = 92;
      goto LABEL_43;
    }

    if (v43 || (*(v12 + 51) & 0x10) != 0)
    {
      v85 = _apfs_type_to_str(*a5 >> 60);
      v158 = *a5 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_warn("%s (id %llu): sparse bytes mismatch for a file in the purgatory\n", v86, v87, v88, v89, v90, v91, v92, v85);
      fsck_fail_func(0x5FF, -11);
      v93 = *(v12 + 48) & 0xFFFFFFFFEFFFFFFDLL;
      v66 = 1;
      if (fsckAskPrompt(fsck_apfs_ctx, "Set internal_flags to 0x%llx? ", v94, v95, v96, v97, v98, v99, *(v12 + 48) & 0xFD))
      {
        *(v12 + 48) = v93;
        v62 = v171;
        *v171 = 1;
LABEL_47:
        a2 = v39;
        a1 = v38;
        a3 = v37;
        goto LABEL_48;
      }
    }

    else
    {
      v66 = 1;
    }

    v62 = v171;
    goto LABEL_47;
  }

  if ((v40 & 6) != 2)
  {
    v62 = v171;
    a2 = v39;
    a1 = v38;
    a3 = v37;
LABEL_33:
    if (*(a4 + 5) != 1)
    {
LABEL_41:
      v66 = 0;
LABEL_48:
      v100 = *(v12 + 68);
      if ((v100 & 0x40) != 0 && (*a4 & 1) == 0)
      {
        v101 = v62;
        v102 = v100 & 0xFFFFFFBF;
        v103 = _apfs_type_to_str(*a5 >> 60);
        v159 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        v166 = *(v12 + 68);
        fsck_printf_err("%s (id %llu): doc_id xf does not exist, despite bsd_flags (0x%x)\n", v104, v105, v106, v107, v108, v109, v110, v103);
        v51 = 92;
        fsck_fail_func(0x44E, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Set bsd_flags to 0x%x? ", v111, v112, v113, v114, v115, v116, v102))
        {
          return v51;
        }

        *(v12 + 68) = v102;
        v62 = v101;
        *v101 = 1;
      }

      if ((*(v12 + 80) & 0xB000 | 0x4000) == 0x6000 && (*(a4 + 1) & 1) == 0)
      {
        v117 = _apfs_type_to_str(*a5 >> 60);
        v160 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        v167 = *(v12 + 80);
        fsck_printf_warn("%s (id %llu): no rdev xf on char/block device (mode %u)\n", v118, v119, v120, v121, v122, v123, v124, v117);
      }

      v125 = *(v12 + 48);
      if (*(a4 + 5) != (v125 & 0x10000000) >> 28)
      {
        if ((v125 & 0x10000000) != 0 || !*(a4 + 5))
        {
          v126 = v125 & 0xFFFFFFFFEFFFFFFFLL;
          v127 = 1318;
          v128 = "%s (id %llu): attribution tag xf does not exist, despite internal_flags (0x%llx)\n";
          goto LABEL_66;
        }

        if (v66)
        {
          if (v172)
          {
            return 0;
          }

          goto LABEL_65;
        }

        v51 = is_file_in_purgatory(a1, a2, *(a3 + 64), *a5 & 0xFFFFFFFFFFFFFFFLL, &v172);
        if (v51)
        {
          return v51;
        }

        if ((v172 & 1) == 0)
        {
          v125 = *(v12 + 48);
LABEL_65:
          v126 = v125 | 0x10000000;
          v127 = 1317;
          v128 = "%s (id %llu): attribution tag xf exists, despite internal_flags (0x%llx)\n";
LABEL_66:
          v129 = _apfs_type_to_str(*a5 >> 60);
          v161 = *a5 & 0xFFFFFFFFFFFFFFFLL;
          v168 = *(v12 + 48);
          fsck_printf_warn(v128, v130, v131, v132, v133, v134, v135, v136, v129);
          fsck_fail_func(v127, -3);
          if (fsckAskPrompt(fsck_apfs_ctx, "Set internal_flags to 0x%llx? ", v137, v138, v139, v140, v141, v142, v126))
          {
            v51 = 0;
            *(v12 + 48) = v126;
            *v62 = 1;
            return v51;
          }
        }
      }

      return 0;
    }

    v47 = v44 >= v41;
    v67 = v44 - v41;
    if (v47)
    {
      v49 = v67;
    }

    else
    {
      v49 = 0;
    }

LABEL_37:
    if (*(a4 + 5) == 1)
    {
      file_info_register_inode(*a5 & 0xFFFFFFFFFFFFFFFLL, *(a4 + 32), v49);
      if (v68)
      {
        v51 = v68;
        v69 = _apfs_type_to_str(*a5 >> 60);
        v156 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): failed to register attribution tag: %d\n", v70, v71, v72, v73, v74, v75, v76, v69);
        return v51;
      }
    }

    goto LABEL_41;
  }

  v47 = v44 >= v41;
  v48 = v44 - v41;
  if (v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  dir_stats_register_descendant(*(a4 + 8), v49, (v40 >> 29) & 1);
  if (!v50)
  {
    if ((*(v12 + 80) & 0xF000) == 0x8000)
    {
      v62 = v171;
      if (*(v12 + 56) == 1)
      {
        a2 = v39;
        if ((*(v12 + 48) & 0x180000) == 0x80000)
        {
          a1 = v38;
          if ((*(v12 + 68) & 0x40000020) != 0x20)
          {
            dir_stats_register_purgeable(*(a4 + 8), v49);
            a3 = v37;
            if (v144)
            {
              v51 = v144;
              v145 = _apfs_type_to_str(*a5 >> 60);
              v169 = *(a4 + 8);
              v162 = *a5 & 0xFFFFFFFFFFFFFFFLL;
              fsck_printf_err("%s (id %llu): failed to register dir-stats (%llu) purgeable_size: %d\n", v146, v147, v148, v149, v150, v151, v152, v145);
              return v51;
            }

            goto LABEL_37;
          }

          goto LABEL_79;
        }

LABEL_78:
        a1 = v38;
LABEL_79:
        a3 = v37;
        goto LABEL_37;
      }
    }

    else
    {
      v62 = v171;
    }

    a2 = v39;
    goto LABEL_78;
  }

  v51 = v50;
  v52 = _apfs_type_to_str(*a5 >> 60);
  v164 = *(a4 + 8);
  v155 = *a5 & 0xFFFFFFFFFFFFFFFLL;
  fsck_printf_err("%s (id %llu): failed to register dir-stats (%llu) descendant: %d\n", v53, v54, v55, v56, v57, v58, v59, v52);
  return v51;
}

uint64_t sub_100083E40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, _DWORD *a7)
{
  v14 = *(*(a1 + 8) + 36);
  v15 = *(a2 + 40);
  if (!a4 && *a3 >> 60 != 4)
  {
    sub_100085E18();
  }

  v16 = a5[1];
  v188 = *(a2 + 40);
  if (v16 % v14)
  {
    v17 = _apfs_type_to_str(*a3 >> 60);
    v172 = a5[1];
    v162 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): dstream.alloced_size (%llu) is not a multiple of the block size (%u)\n", v18, v19, v20, v21, v22, v23, v24, v17);
    v25 = 92;
    fsck_fail_func(0x381, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Truncate alloced_size to block size? ", v26, v27, v28, v29, v30, v31, v159))
    {
      return v25;
    }

    v16 = a5[1] / v14 * v14;
    a5[1] = v16;
    *a7 = 1;
    v15 = v188;
  }

  v32 = *(a6 + 64);
  v186 = a2;
  v187 = a3;
  v184 = a6;
  v185 = a7;
  if (v32)
  {
    v33 = (*(*(a2 + 40) + 264) & 9) == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = 0;
  v35 = a5[2];
  v36 = *(v15 + 264) & 0x109;
  v37 = *a5;
  if (v36)
  {
    v38 = v35 != -1;
  }

  else
  {
    v38 = 1;
  }

  if (v33 && v35 == -1 && a4 && !v36)
  {
    v34 = (*(a4 + 48) & 0x10) == 0;
  }

  v189 = 0;
  if (v37 <= v16 && v38 && !v34 || (v39 = is_file_in_purgatory(a1, v186, v32, *v187 & 0xFFFFFFFFFFFFFFFLL, &v189), v15 = v188, v25 = v39, !v39))
  {
    if (v37 > v16 && (v189 & 1) == 0)
    {
      if ((v40 = *v187, !a4) && (v40 & 0xF000000000000000) == 0x4000000000000000 || (*(a4 + 48) & 0x80) == 0)
      {
        v41 = _apfs_type_to_str(v40 >> 60);
        v173 = *a5;
        v180 = a5[1];
        v163 = *v187 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): dstream.size (%llu) is greater than dstream.alloced_size (%llu)\n", v42, v43, v44, v45, v46, v47, v48, v41);
        v25 = 92;
        fsck_fail_func(0xB8, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Truncate size to alloced size? ", v49, v50, v51, v52, v53, v54, v160))
        {
          return v25;
        }

        *a5 = a5[1];
        *v185 = 1;
        v15 = v188;
      }
    }

    if (!v38 && (v189 & 1) == 0)
    {
      v55 = _apfs_type_to_str(*v187 >> 60);
      v164 = *v187 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): found dstream with unassigned default_crypto_id\n", v56, v57, v58, v59, v60, v61, v62, v55);
      v25 = 92;
      fsck_fail_func(0x3F5, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix unassigned default_crypto_id? ", v63, v64, v65, v66, v67, v68, v161))
      {
        return v25;
      }

      v15 = v188;
      a5[2] = 4 * ((*(v188 + 264) & 0x108) != 0);
      *v185 = 1;
    }

    if (!v33)
    {
      return 0;
    }

    v69 = *(v15 + 264);
    if (v69)
    {
      v70 = a5[2];
      if (!*(v15 + 976))
      {
        if (v70 + 1 < 2)
        {
          return 0;
        }

        v94 = v15;
        v95 = _apfs_type_to_str(*v187 >> 60);
        v176 = a5[2];
        v182 = *(v94 + 264);
        v167 = *v187 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_err("%s (id %llu): invalid dstream.default_crypto_id (%llu) on unencrypted volume, given apfs_fs_flags (0x%llx)\n", v96, v97, v98, v99, v100, v101, v102, v95);
        v25 = 92;
        fsck_fail_func(0xBD, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix default_crypto_id (%llu)? ", v103, v104, v105, v106, v107, v108, a5[2]))
        {
          return v25;
        }

        v25 = 0;
        a5[2] = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v70 = a5[2];
    }

    if (v70 == 1)
    {
      v71 = _apfs_type_to_str(*v187 >> 60);
      v165 = *v187 & 0xFFFFFFFFFFFFFFFLL;
      v174 = a5[2];
      fsck_printf_err("%s (id %llu): invalid dstream.default_crypto_id (%llu)\n", v72, v73, v74, v75, v76, v77, v78, v71);
      v25 = 92;
      fsck_fail_func(0xB9, 92);
      return v25;
    }

    if (v35 != -1)
    {
      if ((*(v15 + 264) & 0x109) == 8)
      {
        v25 = 0;
        if (v70 != 4 && !*(v15 + 976))
        {
          v79 = v15;
          v80 = _apfs_type_to_str(*v187 >> 60);
          v175 = a5[2];
          v181 = *(v79 + 264);
          v166 = *v187 & 0xFFFFFFFFFFFFFFFLL;
          fsck_printf_err("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume, given apfs_fs_flags (0x%llx)\n", v81, v82, v83, v84, v85, v86, v87, v80);
          v25 = 92;
          fsck_fail_func(0xBA, 92);
          if (fsckAskPrompt(fsck_apfs_ctx, "Fix default_crypto_id (%llu)? ", v88, v89, v90, v91, v92, v93, a5[2]))
          {
            v25 = 0;
            a5[2] = 4;
            goto LABEL_51;
          }
        }

        return v25;
      }

      if ((v69 & 1) != 0 || *(v15 + 976) | v70)
      {
        goto LABEL_62;
      }

      v123 = v15;
      v124 = _apfs_type_to_str(*v187 >> 60);
      v178 = a5[2];
      v183 = *(v123 + 264);
      v169 = *v187 & 0xFFFFFFFFFFFFFFFLL;
      fsck_printf_err("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume, given apfs_fs_flags (0x%llx)\n", v125, v126, v127, v128, v129, v130, v131, v124);
      fsck_fail_func(0x34A, 92);
      if ((*(*(v186 + 40) + 57) & 2) == 0 || (~*(a4 + 68) & 0x40000020) != 0)
      {
        v15 = v188;
        if ((*(v188 + 264) & 0x109) == 0x100)
        {
          v148 = fsckAskPrompt(fsck_apfs_ctx, "Fix default_crypto_id (%llu)? ", v132, v133, v134, v135, v136, v137, a5[2]);
          v15 = v188;
          if (v148)
          {
            a5[2] = 4;
            *v185 = 1;
            goto LABEL_66;
          }
        }
      }

      else
      {
        v138 = dstream_delete(v186 + 768, *v187, v132, v133, v134, v135, v136, v137);
        v15 = v188;
        if (!v138)
        {
LABEL_62:
          v149 = a5[2];
          if (v149 - 16 < 0xFFFFFFFFFFFFFFF1)
          {
            goto LABEL_72;
          }

          if (v149 - 2 < 2 || v149 == 5)
          {
            goto LABEL_73;
          }

          if (v149 != 4)
          {
            goto LABEL_71;
          }

LABEL_66:
          if ((*(v15 + 264) & 1) == 0)
          {
            if ((*(v15 + 264) & 0x108) == 0x100)
            {
              v149 = 4;
              goto LABEL_73;
            }

            goto LABEL_71;
          }

          v149 = 4;
          if ((*(v15 + 264) & 0x109) != 0x100 && !*(v15 + 976))
          {
LABEL_71:
            v150 = _apfs_type_to_str(*v187 >> 60);
            v171 = *v187 & 0xFFFFFFFFFFFFFFFLL;
            v179 = a5[2];
            fsck_printf_warn("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume\n", v151, v152, v153, v154, v155, v156, v157, v150);
            fsck_fail_func(0xBC, -2);
            v149 = a5[2];
LABEL_72:
            if (v149 != -1)
            {
              goto LABEL_73;
            }

            return 0;
          }

LABEL_73:
          if (*(v184 + 40) <= v149)
          {
            v25 = 0;
            *(v184 + 40) = v149 + 1;
            return v25;
          }

          return 0;
        }

        v139 = v138;
        v140 = _apfs_type_to_str(*v187 >> 60);
        v170 = *v187 & 0xFFFFFFFFFFFFFFFLL;
        fsck_printf_warn("%s (id %llu): unable to remove dstream of inode %llu\n", v141, v142, v143, v144, v145, v146, v147, v140);
        fsck_fail_func(0x58F, v139);
        v15 = v188;
      }

      *(v186 + 13) = 1;
      goto LABEL_62;
    }

    if (!v34 || (v189 & 1) != 0)
    {
      return 0;
    }

    v109 = _apfs_type_to_str(*v187 >> 60);
    v168 = *v187 & 0xFFFFFFFFFFFFFFFLL;
    v177 = *(a4 + 48);
    fsck_printf_err("%s (id %llu): invalid internal_flags (0x%llx) given unassigned default_crypto_id\n", v110, v111, v112, v113, v114, v115, v116, v109);
    v25 = 92;
    fsck_fail_func(0x534, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix internal flags (0x%llx)? ", v117, v118, v119, v120, v121, v122, *(a4 + 48)))
    {
      return v25;
    }

    v25 = 0;
    *(a4 + 48) |= 0x10uLL;
LABEL_51:
    *v185 = 1;
  }

  return v25;
}

uint64_t sub_100084550(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  result = get_tree_for_jobj(a1, a2, 8, &v18, a5, a6, a7, a8);
  if (!result)
  {
    v15[0] = a1;
    v15[1] = a2;
    v17[0] = a3 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
    v17[1] = 0;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    result = tree_iterator_init(v13, v18, *(a4 + 64), v17, 0x10u, 0x10u, v16, 24);
    if (!result)
    {
      return fsck_iterate(v13, sub_100084610, v15, 0);
    }
  }

  return result;
}

uint64_t sub_100084610(void *a1, int a2, void *a3, int a4, uint64_t *a5)
{
  result = 0xFFFFFFFFLL;
  if (a4 == 24 && a2 == 16 && (*a1 & 0xF000000000000000) == 0x8000000000000000)
  {
    v7 = a3[1];
    if (v7)
    {
      return fixup_cow_exempt_phys_extent(a5[1], v7, (*a3 & 0xFFFFFFFFFFFFFFuLL) / *(*(*a5 + 8) + 36));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100084668(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  if (v6 <= 1)
  {
    v7 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v8, v9, v10, v11, v12, v13, v14, v7);
    v15 = 92;
    v16 = 627;
LABEL_3:
    v17 = 92;
LABEL_4:
    fsck_fail_func(v16, v17);
    return v15;
  }

  v25 = *(*(a1 + 8) + 36);
  if (v6 <= 0xF && v6 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v27 = _apfs_type_to_str(8u);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v28, v29, v30, v31, v32, v33, v34, v27);
    fsck_fail_func(0x274, -2);
  }

  if (*(a5 + 40) <= v6)
  {
    *(a5 + 40) = v6 + 1;
  }

  if (a3[1] % v25)
  {
    v35 = _apfs_type_to_str(8u);
    v146 = a3[1];
    fsck_printf_err("%s (id %llu): Logical address %llu of file extent not a multiple of the block size (%u)\n", v36, v37, v38, v39, v40, v41, v42, v35);
    v15 = 92;
    fsck_fail_func(0x259, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Round down logical address (%llu) to block size? ", v43, v44, v45, v46, v47, v48, a3[1]))
    {
      return v15;
    }

    a3[1] = a3[1] / v25 * v25;
    *a6 = 1;
  }

  v150 = a6;
  v151 = a2;
  v49 = *a4;
  v50 = *a4 & 0xFFFFFFFFFFFFFFLL;
  if (v50 % v25)
  {
    v51 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): Length %llu of file extent not a multiple of the block size (%u)\n", v52, v53, v54, v55, v56, v57, v58, v51);
    fsck_fail_func(0xD6, 92);
    v159[0] = 0;
    tree_for_jobj = get_tree_for_jobj(a1, a2, 8, v159, v59, v60, v61, v62);
    v70 = a3[1];
    v154 = v6;
    v155 = v70;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    LODWORD(v152) = 16;
    v164[0] = 24;
    if (tree_for_jobj || tree_lookup(v159[0], *(a5 + 64), 2u, &v154, &v152, 0x10u, &v160, v164) || v152 != 16 || v154 != v6)
    {
      if (fsckAskPrompt(fsck_apfs_ctx, "Round %s length (%llu) to block size? ", v64, v65, v66, v67, v68, v69, "down"))
      {
LABEL_19:
        v71 = v50 - v50 % v25;
LABEL_20:
        v49 = v71 & 0xFFFFFFFFFFFFFFLL | (*(a4 + 7) << 56);
        *a4 = v49;
        *v150 = 1;
        v50 = v71;
        goto LABEL_21;
      }
    }

    else
    {
      v71 = (v25 + v50 - 1) / v25 * v25;
      v149 = v155 - a3[1] == v71;
      v123 = "up";
      if (v155 - a3[1] != v71)
      {
        v123 = "down";
      }

      if (fsckAskPrompt(fsck_apfs_ctx, "Round %s length (%llu) to block size? ", v64, v65, v66, v67, v68, v69, v123))
      {
        if (v149)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    return 92;
  }

LABEL_21:
  v72 = HIBYTE(v49);
  if (v49 >> 58)
  {
    v90 = _apfs_type_to_str(8u);
    fsck_printf_warn("%s (id %llu): unknown flags: (0x%02x / known flags are: 0x%02x)\n", v91, v92, v93, v94, v95, v96, v97, v90);
    fsck_fail_func(0xD7, -3);
    if (*(*(a1 + 8) + 1384) > 0x959D39220F1C2uLL || !fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v98, v99, v100, v101, v102, v103, HIBYTE(v49) & 0xFC))
    {
      goto LABEL_32;
    }

    v88 = 0x300000000000000;
    v89 = 3;
    goto LABEL_31;
  }

  v73 = v151[6];
  if (!v73)
  {
    v73 = v151[5];
  }

  if ((*(v73 + 56) & 0x20) != 0 && (v49 & 0x100000000000000) != 0)
  {
    v74 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): invalid flags: (0x%02x)\n", v75, v76, v77, v78, v79, v80, v81, v74);
    v15 = 92;
    fsck_fail_func(0x396, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Remove invalid flags (0x%02x)? ", v82, v83, v84, v85, v86, v87, 1))
    {
      return v15;
    }

    v88 = 0x200000000000000;
    v89 = 2;
LABEL_31:
    LOBYTE(v72) = v89 & HIBYTE(v49);
    *a4 = *a4 & 0xFFFFFFFFFFFFFFLL | v49 & v88;
    *v150 = 1;
  }

LABEL_32:
  v104 = v151;
  if ((v72 & 2) != 0)
  {
    v105 = v151[6];
    if (!v105)
    {
      v105 = v151[5];
    }

    if ((*(v105 + 56) & 0x80) == 0)
    {
      v106 = _apfs_type_to_str(8u);
      fsck_printf_err("%s (id %llu): invalid flag: (0x%02x)\n", v107, v108, v109, v110, v111, v112, v113, v106);
      v15 = 92;
      fsck_fail_func(0x3F6, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Remove invalid flag (0x%02x)? ", v114, v115, v116, v117, v118, v119, 2))
      {
        return v15;
      }

      LOBYTE(v72) = v72 & 0xFD;
      *(a4 + 7) = v72;
      v104 = v151;
      *v150 = 1;
    }
  }

  v120 = *(a4 + 8);
  if ((v72 & 2) != 0)
  {
    if (!v120)
    {
      v136 = _apfs_type_to_str(8u);
      v148 = a3[1];
      fsck_printf_err("%s (id %llu): expected physical block number for extent at offset %lld\n", v137, v138, v139, v140, v141, v142, v143, v136);
      v15 = 92;
      v16 = 1015;
      goto LABEL_3;
    }
  }

  else if (!v120)
  {
    goto LABEL_46;
  }

  v121 = *(*(a1 + 8) + 40);
  if (v121 - v50 / v25 < v120 || v121 <= v50 / v25 || v120 < 1 || v121 <= v120)
  {
    v124 = _apfs_type_to_str(8u);
    v147 = *(a4 + 8);
    fsck_printf_err("%s (id %llu): Bad phys_block_num + len (%llu + %llu) for physical file extent record\n", v125, v126, v127, v128, v129, v130, v131, v124);
    v15 = 92;
    v16 = 216;
    goto LABEL_3;
  }

LABEL_46:
  v159[0] = 0;
  v159[1] = 0;
  if (v104)
  {
    v122 = *(*(v104 + 40) + 8);
  }

  else
  {
    v122 = 0;
  }

  v160 = v122;
  v161 = 0xF000040000000;
  v132 = *(a5 + 64);
  v162 = v120;
  v163 = v132;
  v157 = 16;
  v158 = 32;
  if (tree_lookup(&overlap_info, 0, 0, &v160, &v158, 0x20u, v159, &v157))
  {
    goto LABEL_72;
  }

  v155 = 0;
  v156 = 0;
  v152 = 0;
  v153 = 0;
  v135 = v104 ? *(*(v104 + 40) + 8) : 0;
  v144 = *(a4 + 8);
  v154 = v135;
  v155 = v144;
  v156 = v6;
  v145 = a3[1];
  v152 = *(a5 + 64);
  v153 = v145;
  v15 = tree_insert(&phys_ext_backref_tree, 0, &v154, 24, &v152, 16);
  if (!v15)
  {
LABEL_72:
    v133 = *(a4 + 8);
    if (!v133)
    {
      return 0;
    }

    is_cow_exempt = dstream_is_cow_exempt(a3);
    v15 = file_extent_register(v104, v133, v50 / v25, v6, is_cow_exempt);
    if (v15)
    {
      v16 = 828;
      v17 = v15;
      goto LABEL_4;
    }
  }

  return v15;
}

double sub_100084C90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = *a3;
  if ((*a3 & 0x100000000000000) == 0)
  {
    v11 = *(a3 + 16);
    if (v11 <= 0xF)
    {
      v12 = v11 > 5;
      v13 = (1 << v11) & 0x2D;
      if (v12 || v13 == 0)
      {
        v92 = _apfs_type_to_str(*a2 >> 60);
        v124 = *a2 & 0xFFFFFFFFFFFFFFFLL;
        v128 = *(a3 + 16);
        fsck_printf_warn("%s (id %llu): invalid crypto_id (%llu)\n", v93, v94, v95, v96, v97, v98, v99, v92);
        fsck_fail_func(0xD9, -2);
      }
    }
  }

  if (*(a3 + 8))
  {
    v15 = HIBYTE(v10);
    v16 = *(a1 + 40);
    v17 = *(v16 + 264);
    if (*(a4 + 64))
    {
      v18 = (*(v16 + 264) & 9) == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = *(v16 + 976);
      if (v17)
      {
        if (!v19)
        {
          if (*(a3 + 16))
          {
            v64 = _apfs_type_to_str(*a2 >> 60);
            v122 = *a2 & 0xFFFFFFFFFFFFFFFLL;
            v127 = *(a3 + 16);
            fsck_printf_err("%s (id %llu): invalid nonzero crypto_id (%llu) on unencrypted volume\n", v65, v66, v67, v68, v69, v70, v71, v64);
            fsck_fail_func(0x342, 92);
            if (!fsckAskPrompt(fsck_apfs_ctx, "Fix crypto_id (%llu)? ", v72, v73, v74, v75, v76, v77, *(a3 + 16)))
            {
              return result;
            }

            *(a3 + 16) = 0;
            *a5 = 1;
          }

          if ((v10 & 0x100000000000000) != 0)
          {
            v78 = _apfs_type_to_str(*a2 >> 60);
            v123 = *a2 & 0xFFFFFFFFFFFFFFFLL;
            fsck_printf_err("%s (id %llu): extent crypto flag set on unencrypted volume\n", v79, v80, v81, v82, v83, v84, v85, v78);
            fsck_fail_func(0x3CF, 92);
            if (!fsckAskPrompt(fsck_apfs_ctx, "Clear invalid flag? ", v86, v87, v88, v89, v90, v91, v117))
            {
              return result;
            }

            *(a3 + 7) = (v10 & 0xFE00000000000000) >> 56;
            *a5 = 1;
            goto LABEL_32;
          }
        }
      }

      else if (!v19)
      {
        if (!*(a3 + 16))
        {
          v101 = _apfs_type_to_str(*a2 >> 60);
          v125 = *a2 & 0xFFFFFFFFFFFFFFFLL;
          fsck_printf_err("%s (id %llu): invalid zero crypto_id on encrypted volume\n", v102, v103, v104, v105, v106, v107, v108, v101);
          fsck_fail_func(0x343, 92);
          if ((*(*(a1 + 40) + 264) & 0x108) == 0 || !fsckAskPrompt(fsck_apfs_ctx, "Fix crypto_id? ", v109, v110, v111, v112, v113, v114, v118))
          {
            return result;
          }

          *(a3 + 16) = *(a3 + 8);
          LOBYTE(v15) = HIBYTE(v10) | 1;
          *(a3 + 7) = HIBYTE(v10) | 1;
          *a5 = 1;
          v17 = *(*(a1 + 40) + 264);
        }

        if ((v17 & 0x109) == 8 && (v15 & 1) == 0)
        {
          v21 = _apfs_type_to_str(*a2 >> 60);
          v119 = *a2 & 0xFFFFFFFFFFFFFFFLL;
          fsck_printf_err("%s (id %llu): extent crypto flag missing on encrypted volume\n", v22, v23, v24, v25, v26, v27, v28, v21);
          fsck_fail_func(0x3CE, 92);
          if (!fsckAskPrompt(fsck_apfs_ctx, "Set missing flag? ", v29, v30, v31, v32, v33, v34, v115))
          {
            return result;
          }

          LOBYTE(v15) = v15 | 1;
          *(a3 + 7) = v15;
          *(a3 + 16) = *(a3 + 8);
          *a5 = 1;
        }
      }
    }

    if (v15)
    {
LABEL_34:

      return crypto_register_fext(a2, a3);
    }

LABEL_32:
    v49 = *(a3 + 16) + 1;
    if (*(a4 + 40) < v49)
    {
      *(a4 + 40) = v49;
    }

    goto LABEL_34;
  }

  if (*(a3 + 16))
  {
    v35 = _apfs_type_to_str(*a2 >> 60);
    v120 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v126 = *(a3 + 16);
    fsck_printf_warn("%s (id %llu): invalid sparse extent with nonzero crypto_id (%llu)\n", v36, v37, v38, v39, v40, v41, v42, v35);
    fsck_fail_func(0x341, 92);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix crypto_id (%llu)? ", v43, v44, v45, v46, v47, v48, *(a3 + 16)))
    {
      *(a3 + 16) = 0;
      *a5 = 1;
    }
  }

  if ((v10 & 0x100000000000000) != 0 && (*(*(a1 + 40) + 264) & 9) == 0)
  {
    v50 = _apfs_type_to_str(*a2 >> 60);
    v121 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): extent crypto flag set on sparse extent\n", v51, v52, v53, v54, v55, v56, v57, v50);
    fsck_fail_func(0x3E8, -3);
    if (fsckAskPrompt(fsck_apfs_ctx, "Clear invalid flag? ", v58, v59, v60, v61, v62, v63, v116))
    {
      *(a3 + 7) = (v10 & 0xFE00000000000000) >> 56;
      *a5 = 1;
    }
  }

  return result;
}

uint64_t sub_1000850BC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = crc32c(*a3, a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000850FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, uint64_t *a6, uint64_t a7)
{
  v10 = &a4[2 * a5];
  v13 = *(v10 + 4);
  v12 = (v10 + 2);
  v11 = v13;
  if ((v13 - 1) > 1 || *(v12 + 1) == 8)
  {
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        v14 = *a6;
        if (*a6 <= 0xF && (*a6 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = *a3 >> 60;
          if (v16 == 14)
          {
            LODWORD(v16) = *(a3 + 8);
          }

          v17 = _apfs_type_to_str(v16);
          v18 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v19 = *a4;
          _xf_type_to_str(a3, *v12);
          fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid sibling_id (%llu)\n", v20, v21, v22, v23, v24, v25, v26, v17);
          fsck_fail_func(0xC0, -2);
        }

        if (*(a7 + 40) < (v14 + 1))
        {
          v27 = 0;
          *(a7 + 40) = v14 + 1;
          return v27;
        }
      }

      else
      {
        v39 = *a3 >> 60;
        if (v39 == 14)
        {
          LODWORD(v39) = *(a3 + 8);
        }

        v40 = _apfs_type_to_str(v39);
        v41 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v42 = *a4;
        _xf_type_to_str(a3, *v12);
        v52 = *v12;
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v43, v44, v45, v46, v47, v48, v49, v40);
        fsck_fail_func(0xC1, -5);
      }
    }

    return 0;
  }

  v28 = *a3 >> 60;
  if (v28 == 14)
  {
    LODWORD(v28) = *(a3 + 8);
  }

  v29 = _apfs_type_to_str(v28);
  v30 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v31 = *a4;
  _xf_type_to_str(a3, *v12);
  v53 = *v12;
  v51 = *(v12 + 1);
  fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %lu\n", v32, v33, v34, v35, v36, v37, v38, v29);
  v27 = 92;
  fsck_fail_func(0x3D6, 92);
  return v27;
}

uint64_t sub_1000852D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  if (HIBYTE(v4) != 1)
  {
    sub_100085E44();
  }

  v9 = *(a2 + 48);
  if (!v9)
  {
    v9 = *(a2 + 40);
  }

  if ((*(v9 + 56) & 0x20) == 0)
  {
    v10 = _apfs_type_to_str(*a3 >> 60);
    v53 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_warn("%s (id %llu): Found data hash on unsealed volume\n", v11, v12, v13, v14, v15, v16, v17, v10);
    fsck_fail_func(0x3A4, -5);
    return fsck_repairs_add(a2 + 768, 7, 0, 0, 0, a3, 0x10u, 0, 0);
  }

  if ((v4 & 0x3FFF) != 0)
  {
    v19 = _apfs_type_to_str(*a3 >> 60);
    v57 = *(a3 + 8) & 0xFFFFFFFFFFFFFFLL;
    v54 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): Logical address %llu of data hash not a multiple of the hash chunk size (%u)\n", v20, v21, v22, v23, v24, v25, v26, v19);
    v27 = 92;
    v28 = 933;
LABEL_16:
    v44 = 92;
    goto LABEL_17;
  }

  v29 = *(a4 + 2);
  v30 = *(a2 + 20);
  if (v30 != v29 && (v30 > v29 || (*(a2 + 16) & 0xC00) == 0))
  {
    v45 = _apfs_type_to_str(*a3 >> 60);
    v59 = *(a4 + 2);
    v60 = *(a2 + 20);
    v56 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): Unexpected hash size (%u != %u)\n", v46, v47, v48, v49, v50, v51, v52, v45);
    v27 = 92;
    v28 = 934;
    goto LABEL_16;
  }

  if (bitmap_range_is_clear(a4 + 3, 0, 8 * *(a4 + 2), *(a4 + 2)))
  {
    v36 = _apfs_type_to_str(*a3 >> 60);
    v55 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v58 = *(a3 + 8) & 0xFFFFFFFFFFFFFFLL;
    fsck_printf_err("%s (id %llu): Invalid hash at offset %llu\n", v37, v38, v39, v40, v41, v42, v43, v36);
    v27 = 92;
    v28 = 935;
    goto LABEL_16;
  }

  v27 = dstream_register_hash(a1, a3, a4, v31, v32, v33, v34, v35);
  if (v27)
  {
    v28 = 936;
    v44 = v27;
LABEL_17:
    fsck_fail_func(v28, v44);
  }

  return v27;
}

uint64_t sub_1000854B0(int a1, int a2, uint64_t a3, unsigned __int16 *a4, int a5, void *__src, int a7, int a8, _BYTE *a9)
{
  v11 = &a4[2 * a5];
  v13 = *(v11 + 4);
  v12 = (v11 + 2);
  if (v13 == 1)
  {
    v14 = *(v12 + 1);
    if (v14 < 0x100)
    {
      memcpy(a9 + 1, __src, v14);
      v26 = 0;
      *a9 = 1;
    }

    else
    {
      v15 = *a3 >> 60;
      if (v15 == 14)
      {
        LODWORD(v15) = *(a3 + 8);
      }

      v16 = _apfs_type_to_str(v15);
      v17 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v18 = *a4;
      _xf_type_to_str(a3, *v12);
      v39 = *(v12 + 1);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, max %u\n", v19, v20, v21, v22, v23, v24, v25, v16);
      v26 = 92;
      fsck_fail_func(0x521, 92);
    }
  }

  else
  {
    v27 = *a3 >> 60;
    if (v27 == 14)
    {
      LODWORD(v27) = *(a3 + 8);
    }

    v28 = _apfs_type_to_str(v27);
    v29 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v30 = *a4;
    _xf_type_to_str(a3, *v12);
    v40 = *v12;
    fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid x_type (%u)\n", v31, v32, v33, v34, v35, v36, v37, v28);
    fsck_fail_func(0x522, -5);
    return 0;
  }

  return v26;
}

uint64_t sub_1000855FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  v7 = &a4[2 * a5];
  v9 = *(v7 + 4);
  v8 = (v7 + 2);
  if ((v9 - 1) > 1)
  {
    v22 = *a3 >> 60;
    if (v22 == 14)
    {
      LODWORD(v22) = *(a3 + 8);
    }

    v23 = _apfs_type_to_str(v22);
    v24 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v25 = *a4;
    _xf_type_to_str(a3, *v8);
    v35 = *v8;
    fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v26, v27, v28, v29, v30, v31, v32, v23);
    fsck_fail_func(0x50A, -5);
    return 0;
  }

  if (*(v8 + 1) == 8)
  {
    return 0;
  }

  v10 = *a3 >> 60;
  if (v10 == 14)
  {
    LODWORD(v10) = *(a3 + 8);
  }

  v11 = _apfs_type_to_str(v10);
  v12 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v13 = *a4;
  _xf_type_to_str(a3, *v8);
  v36 = *v8;
  v34 = *(v8 + 1);
  fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %lu\n", v14, v15, v16, v17, v18, v19, v20, v11);
  v21 = 92;
  fsck_fail_func(0x509, 92);
  return v21;
}

uint64_t sub_100085730(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = &a4[2 * a5];
  v14 = *(v11 + 4);
  v13 = (v11 + 2);
  v12 = v14;
  if (v14 <= 4 && v12 && word_1000B32CC[v12] != *(v13 + 1))
  {
    v29 = *a3 >> 60;
    if (v29 == 14)
    {
      LODWORD(v29) = *(a3 + 8);
    }

    v30 = _apfs_type_to_str(v29);
    v31 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v32 = *a4;
    _xf_type_to_str(a3, *v13);
    v52 = *(v13 + 1);
    fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, expected %u\n", v33, v34, v35, v36, v37, v38, v39, v30);
    v28 = 92;
    fsck_fail_func(0x4E6, 92);
    return v28;
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v28 = 0;
      *(a9 + 24) = *a6;
      *(a9 + 16) = 1;
      return v28;
    }

    if (v12 == 4)
    {
      v28 = 0;
      *(a9 + 40) = *a6;
      *(a9 + 32) = 1;
      return v28;
    }
  }

  else
  {
    if (v12 == 1)
    {
      v28 = 0;
      *(a9 + 8) = *a6;
      *a9 = 1;
      return v28;
    }

    if (v12 == 2)
    {
      v16 = *a6;
      if ((*a6 - 1) > 0xE || (v16 - 4) > 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*(a7 + 40) < (v16 + 1))
        {
          *(a7 + 40) = v16 + 1;
        }
      }

      else
      {
        v17 = *a3 >> 60;
        if (v17 == 14)
        {
          LODWORD(v17) = *(a3 + 8);
        }

        v18 = _apfs_type_to_str(v17);
        v19 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v20 = *a4;
        _xf_type_to_str(a3, *v13);
        fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid shadow_key (%llu)\n", v21, v22, v23, v24, v25, v26, v27, v18);
        fsck_fail_func(0x53B, -2);
      }

      v28 = 0;
      *(a9 + 56) = v16;
      *(a9 + 48) = 1;
      return v28;
    }
  }

  v40 = *a3 >> 60;
  if (v40 == 14)
  {
    LODWORD(v40) = *(a3 + 8);
  }

  v41 = _apfs_type_to_str(v40);
  v42 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v43 = *a4;
  _xf_type_to_str(a3, *v13);
  v53 = *v13;
  fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v44, v45, v46, v47, v48, v49, v50, v41);
  fsck_fail_func(0x4E7, -5);
  return 0;
}

uint64_t sub_100085984(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = &a4[2 * a5];
  v14 = *(v11 + 4);
  v13 = (v11 + 2);
  v12 = v14;
  if (v14 > 2 || (v12 ? (v15 = word_1000B32D6[v12] == *(v13 + 1)) : (v15 = 1), v15))
  {
    if (v12 == 1)
    {
      if ((*a6 & 0x1FFFFFFFFFFFFFLL) != 0)
      {
        v18 = 0;
        a9[1] = *a6;
        return v18;
      }

      v54 = *a3 >> 60;
      if (v54 == 14)
      {
        LODWORD(v54) = *(a3 + 8);
      }

      v55 = _apfs_type_to_str(v54);
      v56 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v57 = *a4;
      _xf_type_to_str(a3, *v13);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid attribution hash (%llu)\n", v58, v59, v60, v61, v62, v63, v64, v55);
      v41 = 1297;
    }

    else
    {
      if (v12 != 2)
      {
        v30 = *a3 >> 60;
        if (v30 == 14)
        {
          LODWORD(v30) = *(a3 + 8);
        }

        v31 = _apfs_type_to_str(v30);
        v32 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v33 = *a4;
        _xf_type_to_str(a3, *v13);
        v67 = *v13;
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v34, v35, v36, v37, v38, v39, v40, v31);
        v41 = 1298;
        v42 = -5;
        goto LABEL_31;
      }

      v16 = *a6;
      if (*a6 > 0xFuLL || v16 == 2)
      {
        *a9 = v16;
        if (*(a7 + 40) < (v16 + 1))
        {
          v18 = 0;
          *(a7 + 40) = v16 + 1;
          return v18;
        }

        return 0;
      }

      v43 = *a3 >> 60;
      if (v43 == 14)
      {
        LODWORD(v43) = *(a3 + 8);
      }

      v44 = _apfs_type_to_str(v43);
      v45 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v46 = *a4;
      _xf_type_to_str(a3, *v13);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v47, v48, v49, v50, v51, v52, v53, v44);
      v41 = 1296;
    }

    v42 = -2;
LABEL_31:
    fsck_fail_func(v41, v42);
    return 0;
  }

  v19 = *a3 >> 60;
  if (v19 == 14)
  {
    LODWORD(v19) = *(a3 + 8);
  }

  v20 = _apfs_type_to_str(v19);
  v21 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v22 = *a4;
  _xf_type_to_str(a3, *v13);
  v68 = *v13;
  v66 = *(v13 + 1);
  fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %u\n", v23, v24, v25, v26, v27, v28, v29, v20);
  v18 = 92;
  fsck_fail_func(0x50F, 92);
  return v18;
}

uint64_t sub_100085BD0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = &a4[2 * a5];
  v14 = *(v11 + 4);
  v13 = (v11 + 2);
  v12 = v14;
  if (v14 > 2 || (v12 ? (v15 = word_1000B32D6[v12] == *(v13 + 1)) : (v15 = 1), v15))
  {
    if (v12 == 1)
    {
      v17 = *a6;
      if (*a6 > 0xF || v17 == 2)
      {
        *a9 = v17;
        if (*(a7 + 40) < (v17 + 1))
        {
          v16 = 0;
          *(a7 + 40) = v17 + 1;
          return v16;
        }

        return 0;
      }

      v43 = *a3 >> 60;
      if (v43 == 14)
      {
        LODWORD(v43) = *(a3 + 8);
      }

      v44 = _apfs_type_to_str(v43);
      v45 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v46 = *a4;
      _xf_type_to_str(a3, *v13);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v47, v48, v49, v50, v51, v52, v53, v44);
      v41 = 1534;
    }

    else
    {
      if (v12 != 2)
      {
        v30 = *a3 >> 60;
        if (v30 == 14)
        {
          LODWORD(v30) = *(a3 + 8);
        }

        v31 = _apfs_type_to_str(v30);
        v32 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v33 = *a4;
        _xf_type_to_str(a3, *v13);
        v67 = *v13;
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v34, v35, v36, v37, v38, v39, v40, v31);
        v41 = 1523;
        v42 = -5;
        goto LABEL_31;
      }

      if (*a6)
      {
        v16 = 0;
        a9[1] = *a6;
        return v16;
      }

      v54 = *a3 >> 60;
      if (v54 == 14)
      {
        LODWORD(v54) = *(a3 + 8);
      }

      v55 = _apfs_type_to_str(v54);
      v56 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v57 = *a4;
      _xf_type_to_str(a3, *v13);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid attribution hash (%llu)\n", v58, v59, v60, v61, v62, v63, v64, v55);
      v41 = 1522;
    }

    v42 = -2;
LABEL_31:
    fsck_fail_func(v41, v42);
    return 0;
  }

  v19 = *a3 >> 60;
  if (v19 == 14)
  {
    LODWORD(v19) = *(a3 + 8);
  }

  v20 = _apfs_type_to_str(v19);
  v21 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v22 = *a4;
  _xf_type_to_str(a3, *v13);
  v68 = *v13;
  v66 = *(v13 + 1);
  fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %u", v23, v24, v25, v26, v27, v28, v29, v20);
  v16 = 92;
  fsck_fail_func(0x5F1, 92);
  return v16;
}

uint64_t clonegroup_abort()
{
  if (qword_100103BB0)
  {
    result = tree_destroy(&unk_100103B78, 0);
  }

  byte_100103BB8 = 0;
  return result;
}

uint64_t clonegroup_register_inode(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = 0u;
  memset(v68, 0, 27);
  if (byte_100103BB8 != 1)
  {
    return 0;
  }

  v11 = *(a2 + 8);
  v65 = 0;
  v66 = 0;
  v64 = 0;
  get_inode_64bit_xfield(a2, a3, 21, &v64, a5, a6, a7, a8);
  get_inode_64bit_xfield(a2, a3, 10, &v66, v12, v13, v14, v15);
  get_inode_64bit_xfield(a2, a3, 19, &v65, v16, v17, v18, v19);
  v69[0] = v11;
  v69[1] = a1;
  v62 = 43;
  v63 = 16;
  v20 = tree_lookup(&unk_100103B78, 0, 0, v69, &v63, 0x10u, &v67, &v62);
  if (!v20)
  {
    if (v67 != v64)
    {
      fsck_fail_func(0x604, 92);
      fsck_printf_err("file_id %llu (group_id %llu, private_id %llu) has different clonegroup group_id (%llu)\n", v30, v31, v32, v33, v34, v35, v36, a1);
      BYTE2(v68[3]) |= 1u;
    }

    if (v68[1] != v65)
    {
      fsck_fail_func(0x605, 92);
      fsck_printf_err("clonegroup_record (group_id %llu, private_id %llu, file_id %llu) has incorrect attribution tag (%llu)\n", v37, v38, v39, v40, v41, v42, v43, v64);
      BYTE2(v68[3]) |= 1u;
    }

    if (v68[0] == v66)
    {
      v44 = BYTE2(v68[3]);
    }

    else
    {
      fsck_fail_func(0x606, 92);
      fsck_printf_err("clonegroup_record (group_id %llu, private_id %llu, file_id %llu) has incorrect dir-stats key (%llu)\n", v52, v53, v54, v55, v56, v57, v58, v64);
      v44 = BYTE2(v68[3]) | 1;
    }

    v29 = v44 | 2;
    goto LABEL_14;
  }

  v28 = v20;
  if (v20 == 2)
  {
    fsck_printf_warn("missing clone group record for file_id %llu (private_id %llu, group_id %llu)\n", v21, v22, v23, v24, v25, v26, v27, a1);
    fsck_fail_func(0x5E9, 2);
    v67 = 0u;
    memset(v68, 0, 26);
    v29 = 3;
LABEL_14:
    BYTE2(v68[3]) = v29;
    *(&v67 + 1) = v64;
    v68[0] = v66;
    v68[1] = v65;
    v59 = *(a2 + 68);
    if ((v59 & 0x20) != 0)
    {
      v29 |= 0x20u;
      BYTE2(v68[3]) = v29;
    }

    if ((*(a2 + 50) & 8) != 0)
    {
      BYTE2(v68[3]) = v29 | 0x40;
    }

    if ((v59 & 0x20) != 0)
    {
      inode_phys_size = 0;
    }

    else
    {
      inode_phys_size = get_inode_phys_size(a2, a3, v22, v23, v24, v25, v26, v27);
    }

    v68[2] = inode_phys_size;
    sub_100086134(v69, &v67, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  fsck_fail_func(0x607, v20);
  strerror(v28);
  fsck_printf_err("can't cross check inode (id %llu) with its corresponding clonegroup record: %d (%s)\n", v45, v46, v47, v48, v49, v50, v51, a1);
  return v28;
}

uint64_t sub_100086134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 42);
  if ((v10 & 1) == 0 && (~v10 & 6) == 0)
  {
    if ((v10 & 0x48) != 0 || (*(a2 + 40) & 0xF) == 0)
    {
      if ((v10 & 0x20) == 0)
      {

        return tree_remove(&unk_100103B78, 0, a1, 16);
      }
    }

    else
    {
      v12 = *(a2 + 40);
      fsck_printf_warn("file (id %llu) isn't purgeable but its matching clonegroup record flags (0x%x) suggest it is\n", a2, a3, a4, a5, a6, a7, a8, a1[1]);
      fsck_fail_func(0x600, -3);
      *(a2 + 42) |= 1u;
      *(a2 + 40) &= 0xFFF0u;
    }
  }

  return tree_insert(&unk_100103B78, 0, a1, 16, a2, 43);
}

uint64_t clonegroup_register_resource_fork(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13[0] = result;
  v13[1] = a2;
  memset(v12, 0, 43);
  if (byte_100103BB8 == 1)
  {
    v10 = 43;
    v11 = 16;
    result = tree_lookup(&unk_100103B78, 0, 0, v13, &v11, 0x10u, v12, &v10);
    if (!result)
    {
      *&v12[2] = a3;
      return sub_100086134(v13, v12, v4, v5, v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t clonegroup_register_purgeable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v25[0] = a1;
  v25[1] = a2;
  memset(v24, 0, 43);
  if (byte_100103BB8 == 1)
  {
    v4 = a2;
    v22 = 43;
    v23 = 16;
    if (!tree_lookup(&unk_100103B78, 0, 0, v25, &v23, 0x10u, v24, &v22))
    {
      if ((a3 & 0x1000) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = a3;
      }

      v12 = (v11 >> 12) & 8 | (v11 >> 9) & 7;
      if (v12 == (BYTE8(v24[2]) & 0xF))
      {
        v13 = BYTE10(v24[2]);
      }

      else
      {
        fsck_fail_func(0x608, -3);
        fsck_printf_warn("file (id %llu) purgeable_flags (0x%x) disagree with its matching clonegroup record flags (0x%x)\n", v14, v15, v16, v17, v18, v19, v20, v4);
        WORD4(v24[2]) = BYTE8(v24[2]) & 0x10 | v12;
        v13 = BYTE10(v24[2]) | 1;
      }

      BYTE10(v24[2]) = v13 | 8;
      sub_100086134(v25, v24, v5, v6, v7, v8, v9, v10);
    }
  }

  return 0;
}

uint64_t clonegroup_register(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 a4, char a5)
{
  if (byte_100103BB8 != 1)
  {
    return 0;
  }

  v25 = v5;
  v26 = v6;
  v24 = *(a1 + 9);
  memset(v23, 0, 43);
  v21 = 43;
  v22 = 16;
  if (tree_lookup(&unk_100103B78, 0, 0, &v24, &v22, 0x10u, v23, &v21))
  {
    v19 = *a1;
    *&v23[1] = a2;
    *(&v23[1] + 1) = a3;
    *&v23[0] = v19;
    WORD4(v23[2]) = a4;
    BYTE10(v23[2]) = a5 | 0x10;
    return tree_insert(&unk_100103B78, 0, &v24, 16, v23, 43);
  }

  else
  {
    fsck_printf_warn("found multiple clonegroup records for file_id %llu\n", v12, v13, v14, v15, v16, v17, v18, SBYTE8(v24));
    fsck_fail_func(0x609, -2);
    return 0;
  }
}

char *clonegroup_register_dstream(char *result, unsigned int a2)
{
  v19[0] = result;
  v19[1] = 0;
  memset(v18, 0, 43);
  if (!a2)
  {
    return result;
  }

  if (!byte_100103BB8)
  {
    return result;
  }

  v3 = result;
  v16 = 43;
  v17 = 16;
  result = tree_lookup(&unk_100103B78, 0, 1u, v19, &v17, 0x10u, v18, &v16);
  if (result || v19[0] != v3)
  {
    return result;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    if (v11)
    {
      if (v11 != *&v18[0])
      {
        fsck_printf_warn("private_id (%llu) has multiple clonegroup ids (%llu, %llu)\n", v4, v5, v6, v7, v8, v9, v10, v3);
        fsck_fail_func(0x60A, -3);
        v11 = *&v18[0];
      }
    }

    else
    {
      v11 = *&v18[0];
    }

    if (a2 < 2)
    {
      if ((BYTE8(v18[2]) & 0x10) != 0)
      {
        fsck_printf_warn("clonegroup record (group_id %llu, private_id %llu, file_id %llu): has the full clone flag turned on\n", v4, v5, v6, v7, v8, v9, v10, v11);
        fsck_fail_func(0x60C, -3);
        v13 = WORD4(v18[2]) & 0xFFEF;
        goto LABEL_15;
      }
    }

    else if ((BYTE8(v18[2]) & 0x10) == 0)
    {
      fsck_printf_warn("clonegroup record (group_id %llu, private_id %llu, file_id %llu): missing the full clone flag\n", v4, v5, v6, v7, v8, v9, v10, v11);
      fsck_fail_func(0x60B, -3);
      v13 = WORD4(v18[2]) | 0x10;
LABEL_15:
      WORD4(v18[2]) = v13;
      BYTE10(v18[2]) |= 1u;
    }

    BYTE10(v18[2]) |= 4u;
    sub_100086134(v19, v18, v5, v6, v7, v8, v9, v10);
    v14 = 43;
    v15 = 16;
    result = tree_lookup(&unk_100103B78, 0, 2u, v19, &v15, 0x10u, v18, &v14);
    ++v12;
  }

  while (!result && v19[0] == v3);
  if (v12)
  {
    if (a2 != v12)
    {
      fsck_printf_warn("clonegroup records of (private_id %llu) count (%u) != dstream_id refcount (%u)\n", v4, v5, v6, v7, v8, v9, v10, v3);
      return fsck_fail_func(0x60D, -3);
    }
  }

  return result;
}

uint64_t fsck_clonegroup_tree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 64);
  v6 = 48;
  if (!v5)
  {
    v6 = 40;
  }

  v7 = *(a2 + v6);
  v8 = *(v7 + 1112);
  if (!v8)
  {
    return 0;
  }

  memset(v37, 0, sizeof(v37));
  inited = tree_init_ext(v37, a1, a2, 0, 2, 37, 0, *(*(a1 + 8) + 36), 0, 0, 0, v8, clonegroup_tree_compare);
  if (inited)
  {
    v11 = inited;
    v12 = strerror(inited);
    fsck_printf_err("failed to initialize the clone-group tree: %s\n", v13, v14, v15, v16, v17, v18, v19, v12);
    fsck_fail_func(0x5EA, v11);
  }

  else
  {
    if (*(v7 + 1108))
    {
      if (!tree_init_ext(&unk_100103B78, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 43, 0, 0, double_uint64_key_compare))
      {
        tree_create(&unk_100103B78, 0, 64);
      }

      if (memory_storage_register_tree(&unk_100103B78, "clonegroup", clonegroup_abort))
      {
        byte_100103BB8 = 0;
        fsck_printf_warn("failed to register the clonegroup tree in the fsck memory storage\n", v21, v22, v23, v24, v25, v26, v27, v36);
        fsck_fail_func(0x5E8, 12);
      }

      else if ((*(v7 + 1108) & 2) != 0)
      {
        byte_100103BB8 = 0;
        fsck_printf_warn("Skipping clonegroup cross-check since INVALID flag is set\n", v21, v22, v23, v24, v25, v26, v27, v36);
      }

      else
      {
        byte_100103BB8 = 1;
        clone_mapping_abort();
      }
    }

    v28 = fsck_tree(v37, a3, clonegroup_validate_repair_key_val, a4, 0, 0);
    v11 = v28;
    if (v28)
    {
      if (qword_100103BB0)
      {
        v28 = tree_destroy(&unk_100103B78, 0);
      }

      byte_100103BB8 = 0;
      if (v5)
      {
        print_snapshot_warning(v28, v29, v30, v31, v32, v33, v34, v35);
      }
    }
  }

  return v11;
}

uint64_t clonegroup_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_100103BB8 != 1)
  {
    return 0;
  }

  v32 = 0uLL;
  memset(v31, 0, 43);
  v29 = 43;
  v30 = 16;
  v4 = tree_lookup_min(&unk_100103B78, 0, &v32, &v30, v31, &v29);
  if (!v4)
  {
    while (1)
    {
      if ((BYTE10(v31[2]) & 0x20) == 0)
      {
        goto LABEL_15;
      }

      v12 = v32;
      v38[0] = v32;
      v38[1] = 0;
      memset(v37, 0, 43);
      v35 = 43;
      v36 = 16;
      if (tree_lookup(&unk_100103B78, 0, 1u, v38, &v36, 0x10u, v37, &v35) || v38[0] != v12)
      {
        break;
      }

      v13 = 0;
      while (1)
      {
        v13 += (BYTE10(v37[2]) >> 1) & 1;
        if (v13 > 1)
        {
          break;
        }

        v33 = 43;
        v34 = 16;
        if (tree_lookup(&unk_100103B78, 0, 2u, v38, &v34, 0x10u, v37, &v33) || v38[0] != v12)
        {
          goto LABEL_10;
        }
      }

      if ((BYTE8(v31[2]) & 0x10) == 0)
      {
        fsck_printf_warn("compressed clonegroup record (group_id %llu, private_id %llu, file_id %llu): missing the full clone flag\n", v5, v6, v7, v8, v9, v10, v11, v31[0]);
        fsck_fail_func(0x60E, -3);
        v14 = WORD4(v31[2]) | 0x10;
LABEL_14:
        WORD4(v31[2]) = v14;
        BYTE10(v31[2]) |= 1u;
      }

LABEL_15:
      if ((BYTE10(v31[2]) & 2) != 0)
      {
        if ((BYTE10(v31[2]) & 1) == 0)
        {
          goto LABEL_22;
        }

        if ((BYTE10(v31[2]) & 0x10) != 0)
        {
          v16 = sub_100086BC4(a3, &v32, v31, 0, v8, v9, v10, v11);
          if (v16)
          {
LABEL_29:
            v17 = v16;
            v19 = v31[0];
            strerror(v16);
            fsck_printf_err("failed to enqueue clonegroup mapping (group_id %llu, private_id %llu, file_id %llu) repair: %s\n", v20, v21, v22, v23, v24, v25, v26, v19);
            goto LABEL_26;
          }
        }

        v15 = 2;
      }

      else
      {
        fsck_printf_err("found orphan clone group mapping: (group_id %llu, private_id %llu, file_id %llu)\n", v5, v6, v7, v8, v9, v10, v11, v31[0]);
        fsck_fail_func(0x5EB, -2);
        v15 = 0;
      }

      v16 = sub_100086BC4(a3, &v32, v31, v15, v8, v9, v10, v11);
      if (v16)
      {
        goto LABEL_29;
      }

LABEL_22:
      v27 = 43;
      v28 = 16;
      v4 = tree_lookup(&unk_100103B78, 0, 2u, &v32, &v28, 0x10u, v31, &v27);
      if (v4)
      {
        goto LABEL_23;
      }
    }

LABEL_10:
    if ((BYTE8(v31[2]) & 0x10) == 0)
    {
      goto LABEL_15;
    }

    fsck_printf_warn("clonegroup record (group_id %llu, private_id %llu, file_id %llu): has the full clone flag turned on\n", v5, v6, v7, v8, v9, v10, v11, v31[0]);
    fsck_fail_func(0x60F, -3);
    v14 = WORD4(v31[2]) & 0xFFEF;
    goto LABEL_14;
  }

LABEL_23:
  if (v4 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = v4;
  }

LABEL_26:
  tree_destroy(&unk_100103B78, 0);
  byte_100103BB8 = 0;
  return v17;
}

uint64_t sub_100086BC4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a1;
  v41 = *(a3 + 8 * (a4 != 0));
  v42 = 1;
  v43 = *a2;
  if (a4 != 2)
  {
    v18 = 0;
    v17 = 0;
    if (!a1)
    {
LABEL_21:
      v30 = print_snapshot_warning(a1, a2, a3, a4, a5, a6, a7, a8);
      goto LABEL_22;
    }

LABEL_14:
    v30 = fsck_repairs_add(v9, 10, v8, 0, 0, &v41, 0x19u, v18, v17);
LABEL_22:
    v19 = v30;
    goto LABEL_23;
  }

  v11 = (a3 + 16);
  v12 = *(a3 + 16);
  v13 = (a3 + 24);
  v14 = *(a3 + 24);
  if (v14)
  {
    v15 = 28;
  }

  else
  {
    v15 = 16;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 16 * (v14 != 0);
  }

  v17 = v16 + 12;
  a1 = malloc_type_calloc(1uLL, v16 + 12, 0x10000403E1C8BA9uLL);
  v18 = a1;
  if (!a1)
  {
    fsck_printf_err("can't allocate memory to insert a new clonegroup value\n", a2, a3, a4, a5, a6, a7, a8, v40);
    v19 = 12;
    v28 = 1537;
    v29 = 12;
    goto LABEL_16;
  }

  if (!(v14 | v12))
  {
LABEL_20:
    *v18 = *(a3 + 32);
    *(v18 + 8) = *(a3 + 40);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (!*v11 || (a1 = add_xfield((a1 + 12), v16, 1, v11, 8u, 16), !a1))
  {
    if (*v13)
    {
      a1 = add_xfield((v18 + 12), v16, 2, v13, 8u, 16);
      if (a1)
      {
        v19 = a1;
        v31 = strerror(a1);
        fsck_printf_err("can't add attribution tag for clonegroup: %s (%d)\n", v32, v33, v34, v35, v36, v37, v38, v31);
        fsck_fail_func(0x603, v19);
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  v19 = a1;
  v20 = strerror(a1);
  fsck_printf_err("can't add dir stats key for clonegroup: %s (%d)\n", v21, v22, v23, v24, v25, v26, v27, v20);
  v28 = 1538;
  v29 = v19;
LABEL_16:
  fsck_fail_func(v28, v29);
LABEL_23:
  free(v18);
  return v19;
}

uint64_t clonegroup_get_file_ids_of_private_id(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v24 = a1;
  v25 = 0;
  if (byte_100103BB8)
  {
    memset(v23, 0, 43);
    v21 = 43;
    v22 = 16;
    v8 = tree_lookup(&unk_100103B78, 0, 1u, &v24, &v22, 0x10u, v23, &v21);
    v16 = 0;
    if (v8)
    {
LABEL_9:
      if (v8 == 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = v8;
      }
    }

    else
    {
      while (v24 == a1)
      {
        if ((BYTE10(v23[2]) & 2) != 0)
        {
          if (v16 < a3)
          {
            *(a2 + 8 * v16) = v25;
          }

          ++v16;
        }

        v19 = 43;
        v20 = 16;
        v8 = tree_lookup(&unk_100103B78, 0, 2u, &v24, &v20, 0x10u, v23, &v19);
        if (v8)
        {
          goto LABEL_9;
        }
      }

      v17 = 0;
    }

    if (v16 != a3)
    {
      fsck_printf_debug("number of files in clonegroup (%u) != dstream reference count (%u)\n", v9, v10, v11, v12, v13, v14, v15, v16);
      fsck_fail_func(0x611, 92);
    }

    if (a4)
    {
      *a4 = v16;
    }
  }

  else
  {
    v17 = 12;
    fsck_fail_func(0x610, 12);
  }

  return v17;
}

uint64_t inode_repair_set_internal_flags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  return sub_100086F48(a1, &v10, &v9, 8, 17, a6, a7, a8);
}

uint64_t sub_100086F48(uint64_t a1, char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7, 1, a5, 0, a2, 8u, a3, a4);
  }

  return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t inode_repair_clear_internal_flags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  return sub_100086F48(a1, &v10, &v9, 8, 18, a6, a7, a8);
}

uint64_t inode_repairs_add_xf_deletion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v9 = a3;
  if (a1)
  {
    return fsck_repairs_add(a1, 7, 1, 0xFu, 0, &v10, 8u, &v9, 1u);
  }

  print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
  return 0;
}

void inode_register_xattr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, BOOL *a6, uint64_t a7, uint64_t a8)
{
  v10 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  if (v10 != xmmword_100103BC0)
  {
    v73 = *(a4 + 8);
    fsck_printf_warn("extended attribute (id %llu, name %.*s) is orphan\n", a2, a3, a4, a5, a6, a7, a8, *a4);
    fsck_fail_func(0x3C1, -2);
    sub_100087508(a2, a4, *(a4 + 8) + 10, v32, v33, v34, v35, v36);
    goto LABEL_43;
  }

  v14 = *(a4 + 8);
  if (!strncmp((a4 + 10), "com.apple.decmpfs", v14) && (dword_100103C0C & 0x40000020) != 0)
  {
    BYTE8(xmmword_100103BF0) = 1;
    v37 = *(a5 + 2);
    dword_100103C08 = v37;
    if ((*a5 & 2) != 0)
    {
      if (v37 > 0xF)
      {
        if (*(a5 + 4) == 1668116582)
        {
          v53 = *(a5 + 8);
          byte_100103C00 = sub_10008755C(v53, v15, v16, v17, v18, v19, v20, v21);
          byte_100103C01 = (v53 + 0x7FFFFFFF) < 2;
          dword_100103C04 = v53;
          goto LABEL_43;
        }

        fsck_printf_warn("compression xattr (id %llu): compression magic is unknown: 0x%x\n", v15, v16, v17, v18, v19, v20, v21, v10);
        v30 = 1220;
      }

      else
      {
        fsck_printf_warn("compression xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v15, v16, v17, v18, v19, v20, v21, v10);
        v30 = 1219;
      }

      v38 = 92;
      goto LABEL_42;
    }

    if (!*a5 || (*a5 & 1) != 0)
    {
      goto LABEL_43;
    }

    fsck_printf_warn("compression xattr (id %llu): internal flags are invalid (0x%x)\n", v15, v16, v17, v18, v19, v20, v21, v10);
    v30 = 1221;
    goto LABEL_13;
  }

  if (strncmp((a4 + 10), "com.apple.ResourceFork", v14))
  {
    if (strncmp((a4 + 10), "com.apple.system.fs.speculative_telemetry", v14))
    {
      goto LABEL_43;
    }

    timestamp = get_timestamp();
    if ((BYTE11(xmmword_100103BD0) & 0x20) != 0)
    {
      v44 = timestamp;
      v45 = *a5;
      if ((*a5 & 4) == 0)
      {
        fsck_printf_warn("speculative download xattr (id %llu): invalid flags: 0x%x\n", v23, v24, v25, v26, v27, v28, v29, v10);
        fsck_fail_func(0x5B6, -3);
        v52 = fsckAskPrompt(fsck_apfs_ctx, "set missing flag? (0x%x) ", v46, v47, v48, v49, v50, v51, 4);
        v45 = *a5;
        if (v52)
        {
          v45 |= 4u;
          *a5 = v45;
          *a3 = 1;
        }
      }

      if (v45)
      {
        v54 = *(a5 + 12);
        fsck_printf_warn("speculative download xattr (id %llu): shouldn't be stream based\n", v23, v24, v25, v26, v27, v28, v29, v10);
        fsck_fail_func(0x5B7, -5);
        if (v54 > 0xB)
        {
          goto LABEL_43;
        }

        v75 = *(a5 + 2);
        fsck_printf_warn("speculative download xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v55, v56, v57, v58, v59, v60, v61, v10);
        v30 = 1464;
      }

      else
      {
        if (*(a5 + 2) > 0xBu)
        {
          v62 = *(a5 + 4);
          if (v62)
          {
            fsck_printf_warn("speculative download xattr (id %llu): unknown version: %u\n", v23, v24, v25, v26, v27, v28, v29, v10);
            v30 = 1466;
            v38 = -6;
          }

          else
          {
            LODWORD(v64) = *(a5 + 5);
            v65 = *(a5 + 6);
            v66 = *(a5 + 8);
            if (v64 >= 6)
            {
              v76 = *(a5 + 5);
              v64 = *(a5 + 8);
              fsck_printf_warn("speculative download xattr (id %llu): unknown purge reason: %u\n", v23, v24, v25, v26, v27, v28, v29, v10);
              fsck_fail_func(0x5BB, -3);
              v66 = v64;
              LOBYTE(v64) = v76;
            }

            if (v65 >= 0x40)
            {
              v77 = v66;
              fsck_printf_warn("speculative download xattr (id %llu): unknown flags: %x\n", v23, v24, v25, v26, v27, v28, v29, v10);
              fsck_fail_func(0x5BC, -3);
              should_repair_unknown_flags = fsck_should_repair_unknown_flags(a1, v65, 63, v67, v68, v69, v70, v71);
              v66 = v77;
              if (should_repair_unknown_flags)
              {
                *a3 = 1;
                *a5 = v62;
                *(a5 + 1) = v64;
                *(a5 + 2) = v65 & 0x3F;
                *(a5 + 4) = v77;
              }
            }

            if (v66 <= v44)
            {
              goto LABEL_43;
            }

            fsck_printf_warn("speculative download xattr (id %llu): pristine time (%llu) is greater than current time (%llu)\n", v23, v24, v25, v26, v27, v28, v29, v10);
            v30 = 1469;
            v38 = -4;
          }

          goto LABEL_42;
        }

        v74 = *(a5 + 2);
        fsck_printf_warn("speculative download xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v23, v24, v25, v26, v27, v28, v29, v10);
        v30 = 1465;
      }

      v38 = -11;
LABEL_42:
      fsck_fail_func(v30, v38);
LABEL_43:
      if (a6)
      {
        *a6 = v10 != xmmword_100103BC0;
      }

      return;
    }

    fsck_printf_warn("speculative download xattr (id %llu): found outside of an SAF dir stats hierarchy\n", v23, v24, v25, v26, v27, v28, v29, v10);
    v30 = 1461;
LABEL_13:
    v38 = -3;
    goto LABEL_42;
  }

  if ((*a5 & 2) != 0)
  {
    v39 = *(a5 + 2);
LABEL_23:
    if (v39)
    {
      v43 = 2;
    }

    else
    {
      v43 = 1;
    }

    HIDWORD(xmmword_100103BF0) = v43;
    goto LABEL_43;
  }

  v39 = *(a5 + 12);
  v40 = *(a5 + 20);
  *&xmmword_100103BF0 = v40;
  if (!*(&xmmword_100103BC0 + 1) || (dir_stats_register_resource_fork(*(&xmmword_100103BC0 + 1), v40), !v41) && ((WORD2(qword_100103C10) & 0xF000) != 0x8000 || (BYTE8(xmmword_100103BD0) & 2) == 0 || (DWORD2(xmmword_100103BD0) & 0x180000) != 0x80000 || qword_100103C10 != 1 || (dword_100103C0C & 0x40000020) != 0x20 || (dir_stats_register_purgeable_rsrc(*(&xmmword_100103BC0 + 1), v40), !v63)))
  {
    if (!xmmword_100103BD0)
    {
      goto LABEL_23;
    }

    file_info_register_resource_fork(xmmword_100103BD0, v40);
    if (!v42)
    {
      goto LABEL_23;
    }
  }
}

uint64_t sub_100087508(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7, 0, 0, 0, a2, a3, 0, 0);
  }

  return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
}

BOOL sub_10008755C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != 2 && (a1 - 1) <= 0xD)
  {
    return (a1 & 1) == 0;
  }

  if ((a1 + 0x7FFFFFFF) >= 2)
  {
    fsck_printf_warn("inode (id %llu): unknown compression type: %u\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
    fsck_fail_func(0x4C2, 92);
  }

  return 0;
}

uint64_t inode_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = xmmword_100103BC0;
  if (!xmmword_100103BC0)
  {
    return 0;
  }

  v12 = dword_100103C0C;
  if ((dword_100103C0C & 0x20) != 0)
  {
    if ((BYTE8(xmmword_100103BF0) & 1) == 0)
    {
      if (qword_100103C20 != xmmword_100103BC0)
      {
        v15 = is_file_in_purgatory(a1, a2, qword_100103C18, xmmword_100103BC0, &byte_100103C28);
        qword_100103C20 = v8;
        if (v15)
        {
          return v15;
        }
      }

      if (byte_100103C28)
      {
        return 0;
      }

      fsck_printf_warn("inode (id %llu): has the compression bsdflag, but doesn't have the compression xattr\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
      fsck_fail_func(0x4C8, -3);
    }

    if (byte_100103C00 != 1 || HIDWORD(xmmword_100103BF0) == 2)
    {
      goto LABEL_19;
    }

    v25 = xmmword_100103BC0;
    if (qword_100103C20 != xmmword_100103BC0)
    {
      v15 = is_file_in_purgatory(a1, a2, qword_100103C18, xmmword_100103BC0, &byte_100103C28);
      qword_100103C20 = v25;
      if (v15)
      {
        return v15;
      }
    }

    if (byte_100103C28)
    {
      return 0;
    }

    fsck_printf_warn("inode (id %llu): Resource Fork xattr is missing or empty for compressed file\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
    fsck_fail_func(0x4C6, 92);
    v60 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v59) = 32;
    v13 = sub_100086F48(a3, &v60, &v59, 4, 20, v26, v27, v28);
    if (!v13 && dword_100103C08 == 16)
    {
      v60 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x4000000000000000;
      v61 = 18;
      strcpy(v62, "com.apple.decmpfs");
      v13 = sub_100087508(a3, &v60, 28, a4, a5, a6, a7, a8);
    }

    if (!v13)
    {
LABEL_19:
      v12 = dword_100103C0C;
      if ((dword_100103C0C & 0x40000000) != 0 || byte_100103C01 != 1)
      {
        goto LABEL_3;
      }

      fsck_printf_warn("inode (id %llu): compression type is dataless, but the dataless bsd_flag is not set\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
      fsck_fail_func(0x4FD, -3);
      v60 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
      LODWORD(v59) = 0x40000000;
      v13 = sub_100086F48(a3, &v60, &v59, 4, 19, v17, v18, v19);
      if (!v13)
      {
        v12 = dword_100103C0C;
        goto LABEL_3;
      }
    }

    fsck_printf_err("inode (id %llu): failed to enqueue to the repairs\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
    fsck_fail_func(0x4D2, v13);
    goto LABEL_51;
  }

LABEL_3:
  if ((v12 & 0x40000000) == 0)
  {
    goto LABEL_4;
  }

  if ((v12 & 0x20) != 0)
  {
    if (BYTE8(xmmword_100103BF0))
    {
      if (byte_100103C01)
      {
        goto LABEL_4;
      }

      v29 = xmmword_100103BC0;
      if (qword_100103C20 == xmmword_100103BC0 || (v15 = is_file_in_purgatory(a1, a2, qword_100103C18, xmmword_100103BC0, &byte_100103C28), qword_100103C20 = v29, !v15))
      {
        if ((byte_100103C28 & 1) == 0)
        {
          fsck_printf_warn("inode (id %llu): dataless bsd_flag is set, but the compression type is different: 0x%x\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
          v30 = 1226;
LABEL_69:
          fsck_fail_func(v30, -3);
LABEL_4:
          v13 = 0;
          v14 = HIDWORD(xmmword_100103BF0);
          if ((dword_100103C0C & 0x20) == 0 || HIDWORD(xmmword_100103BF0) != 2)
          {
LABEL_52:
            if (v14)
            {
              if (v14 == 1)
              {
LABEL_64:
                xmmword_100103BF0 = 0u;
                *&byte_100103C00 = 0u;
                qword_100103C10 = 0;
                xmmword_100103BD0 = 0u;
                xmmword_100103BE0 = 0u;
                xmmword_100103BC0 = 0u;
                *&dword_100103C04 = -1;
                return v13;
              }

              v32 = WORD4(xmmword_100103BD0) & 0x8000;
              v33 = ~DWORD2(xmmword_100103BD0) & 0x4000;
              if (v13)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v33 = ~DWORD2(xmmword_100103BD0) & 0x8000;
              v32 = WORD4(xmmword_100103BD0) & 0x4000;
              if (v13)
              {
                goto LABEL_60;
              }
            }

            if (v33)
            {
              fsck_printf_warn("inode (id %llu): need to set internal_flags 0x%llx\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
              fsck_fail_func(0x5A9, 92);
              v59 = v33;
              v60 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
              v37 = sub_100086F48(a3, &v60, &v59, 8, 17, v34, v35, v36);
              v13 = v37;
              if (v37)
              {
                v38 = xmmword_100103BC0;
                strerror(v37);
                fsck_printf_err("inode (id %llu): can't add internal flags repair: %d (%s)\n", v39, v40, v41, v42, v43, v44, v45, v38);
                fsck_fail_func(0x5AA, v13);
                goto LABEL_64;
              }
            }

LABEL_60:
            if (v32)
            {
              if (!v13)
              {
                fsck_printf_warn("inode (id %llu): need to clear internal_flags 0x%llx\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
                fsck_fail_func(0x5AB, 92);
                v59 = v32;
                v60 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
                v49 = sub_100086F48(a3, &v60, &v59, 8, 18, v46, v47, v48);
                v13 = v49;
                if (v49)
                {
                  v50 = xmmword_100103BC0;
                  strerror(v49);
                  fsck_printf_err("inode (id %llu): can't add internal flags repair: %d (%s)\n", v51, v52, v53, v54, v55, v56, v57, v50);
                  fsck_fail_func(0x5AC, v13);
                }
              }
            }

            goto LABEL_64;
          }

          if (sub_10008755C(dword_100103C04, a2, a3, a4, a5, a6, a7, a8))
          {
            if ((BYTE8(xmmword_100103BD0) & 0x10) != 0)
            {
              v13 = clone_mapping_register_resource_fork(*(&xmmword_100103BE0 + 1), xmmword_100103BC0, xmmword_100103BF0);
            }

            else
            {
              v13 = 0;
            }

            if (xmmword_100103BE0)
            {
              clonegroup_register_resource_fork(*(&xmmword_100103BE0 + 1), xmmword_100103BC0, xmmword_100103BF0);
            }
          }

          else
          {
            v13 = 0;
          }

LABEL_51:
          v14 = HIDWORD(xmmword_100103BF0);
          goto LABEL_52;
        }

        return 0;
      }
    }

    else
    {
      v31 = xmmword_100103BC0;
      if (qword_100103C20 == xmmword_100103BC0 || (v15 = is_file_in_purgatory(a1, a2, qword_100103C18, xmmword_100103BC0, &byte_100103C28), qword_100103C20 = v31, !v15))
      {
        if ((byte_100103C28 & 1) == 0)
        {
          fsck_printf_warn("inode (id %llu): dataless bsd_flag is set, but the compression xattr is missing\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
          v30 = 1237;
          goto LABEL_69;
        }

        return 0;
      }
    }

    return v15;
  }

  fsck_printf_warn("inode (id %llu): dataless bsd_flag is set, but compression bsd_flag is not\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
  fsck_fail_func(0x4D3, -3);
  if (BYTE8(xmmword_100103BF0) == 1 && byte_100103C01 == 1)
  {
    v60 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v59) = 32;
    v23 = a3;
    v24 = 19;
  }

  else
  {
    v60 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v59) = 0x40000000;
    v23 = a3;
    v24 = 20;
  }

  v13 = sub_100086F48(v23, &v60, &v59, 4, v24, v20, v21, v22);
  if (!v13)
  {
    goto LABEL_4;
  }

  fsck_printf_err("inode (id %llu): failed to enqueue to the repairs\n", a2, a3, a4, a5, a6, a7, a8, xmmword_100103BC0);
  fsck_fail_func(0x4D4, v13);
  return v13;
}

uint64_t inode_register(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (xmmword_100103BC0 == a4)
  {
    sub_100087D28();
  }

  result = inode_finalize(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    *&xmmword_100103BC0 = a4;
    *(&xmmword_100103BC0 + 1) = a6;
    dword_100103C0C = *(a5 + 68);
    v14 = *(a5 + 48);
    *&xmmword_100103BD0 = a7;
    *(&xmmword_100103BD0 + 1) = v14;
    *&xmmword_100103BE0 = a8;
    *(&xmmword_100103BE0 + 1) = *(a5 + 8);
    LODWORD(qword_100103C10) = *(a5 + 56);
    WORD2(qword_100103C10) = *(a5 + 80);
  }

  return result;
}

double inode_init(uint64_t a1)
{
  qword_100103C18 = a1;
  xmmword_100103BF0 = 0u;
  *&byte_100103C00 = 0u;
  xmmword_100103BC0 = 0u;
  xmmword_100103BD0 = 0u;
  xmmword_100103BE0 = 0u;
  qword_100103C10 = 0;
  result = NAN;
  *&dword_100103C04 = -1;
  return result;
}

uint64_t lookup_obj(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  v11 = a4;
  v13 = *(a1[1] + 36);
  v104 = 0uLL;
  v105 = 0;
  if (a3 == 0x80000000)
  {
    v14 = _xp_lookup_obj(a1, a4, a6, a7, &v104);
    if (v14)
    {
      v15 = v14;
      sub_10008810C(a7, a8);
      strerror(v15);
      fsck_printf_err("(oid 0x%llx) %s: _xp_lookup_obj(0x%llx): %s\n", v16, v17, v18, v19, v20, v21, v22, v11);
      v23 = 341;
LABEL_10:
      v33 = v15;
LABEL_44:
      fsck_fail_func(v23, v33);
      return v15;
    }

LABEL_40:
    if (DWORD2(v104) && (v84 = DWORD2(v104) / v13, !(DWORD2(v104) % v13)))
    {
      v93 = *(a1[1] + 40);
      if (v93 - v84 >= v104 && v93 > v84 && v104 >= 1 && v93 > v104)
      {
        v15 = 0;
        *a9 = v104;
        *(a9 + 16) = v105;
        return v15;
      }

      sub_10008810C(a7, a8);
      fsck_printf_err("(oid 0x%llx) %s: invalid object address (0x%llx)\n", v97, v98, v99, v100, v101, v102, v103, v11);
      v15 = 92;
      v23 = 346;
    }

    else
    {
      sub_10008810C(a7, a8);
      fsck_printf_err("(oid 0x%llx) %s: invalid object size (0x%x)\n", v85, v86, v87, v88, v89, v90, v91, v11);
      v15 = 92;
      v23 = 345;
    }

    v33 = 92;
    goto LABEL_44;
  }

  if (a3 == 0x40000000)
  {
    *&v104 = a4;
    DWORD2(v104) = v13;
    goto LABEL_40;
  }

  v25 = _omap_lookup_obj(a1, a2, a4, a5, &v104);
  if (!v25)
  {
    v34 = WORD6(v104);
    if (HIDWORD(v104) >= 0x800)
    {
      sub_10008810C(a7, a8);
      fsck_printf_warn("(oid 0x%llx) %s: invalid ov_flags (0x%x)\n", v35, v36, v37, v38, v39, v40, v41, v11);
      fsck_fail_func(0x1DF, -3);
      v34 = WORD6(v104);
    }

    if ((v34 & 4) == 0 && (v34 & 0xE0) != 0)
    {
      sub_10008810C(a7, a8);
      fsck_printf_warn("(oid 0x%llx) %s: invalid ov_flags (0x%x), crypto key index set for unencrypted object\n", v42, v43, v44, v45, v46, v47, v48, v11);
      fsck_fail_func(0x481, -3);
      v34 = WORD6(v104);
    }

    if ((v34 & 4) == 0 && (v34 & 0x700) != 0)
    {
      sub_10008810C(a7, a8);
      fsck_printf_warn("(oid 0x%llx) %s: invalid ov_flags (0x%x), tweak type set for unencrypted object\n", v49, v50, v51, v52, v53, v54, v55, v11);
      fsck_fail_func(0x4D0, -3);
    }

    if (!a2)
    {
      if ((BYTE12(v104) & 4) == 0)
      {
        goto LABEL_40;
      }

      sub_10008810C(a7, a8);
      fsck_printf_warn("(oid 0x%llx) %s: invalid encryption type ov_flags (0x%x)\n", v60, v61, v62, v63, v64, v65, v66, v11);
      v67 = 480;
      goto LABEL_39;
    }

    v56 = *(a2 + 40);
    v57 = *(v56 + 264);
    if ((BYTE12(v104) & 4) != 0)
    {
      if ((v57 & 1) != 0 && !*(v56 + 976))
      {
        v58 = 854;
        v59 = "(oid 0x%llx) %s: should not be encrypted (ov_flags 0x%x)\n";
        goto LABEL_29;
      }
    }

    else if ((v57 & 1) == 0 && !*(v56 + 976))
    {
      v58 = 855;
      v59 = "(oid 0x%llx) %s: should be encrypted (ov_flags 0x%x)\n";
LABEL_29:
      sub_10008810C(a7, a8);
      fsck_printf_warn(v59, v68, v69, v70, v71, v72, v73, v74, v11);
      fsck_fail_func(v58, -3);
    }

    if ((BYTE12(v104) & 4) == 0)
    {
      goto LABEL_40;
    }

    v75 = (a8 & 0xFFFFFFFE) != 0x24 || *(*(a2 + 40) + 1096) == 0;
    v76 = !v75;
    if (BYTE12(v104) >> 5 == v76)
    {
      goto LABEL_40;
    }

    sub_10008810C(a7, a8);
    fsck_printf_warn("(oid 0x%llx) %s: invalid crypto key index (%u) given obj_subtype\n", v77, v78, v79, v80, v81, v82, v83, v11);
    v67 = 1201;
LABEL_39:
    fsck_fail_func(v67, -3);
    goto LABEL_40;
  }

  v15 = v25;
  if (a7 != 29 || v25 != 2)
  {
    sub_10008810C(a7, a8);
    strerror(v15);
    fsck_printf_err("(oid 0x%llx) %s: _omap_lookup_obj(0x%llx, 0x%llx): %s\n", v26, v27, v28, v29, v30, v31, v32, v11);
    v23 = 344;
    goto LABEL_10;
  }

  return v15;
}

const char *sub_10008810C(int a1, int a2)
{
  v2 = "nx";
  switch(a1)
  {
    case 1:
      return v2;
    case 2:
    case 3:
      if (a2 > 18)
      {
        if (a2 <= 32)
        {
          if (a2 == 19)
          {
            v3 = "oms: ";
            goto LABEL_42;
          }

          if (a2 == 26)
          {
            v3 = "gbitmap: ";
            goto LABEL_42;
          }
        }

        else
        {
          switch(a2)
          {
            case '!':
              v3 = "evict_mapping_tree: ";
              goto LABEL_42;
            case '$':
              v3 = "apfs_sec_root: ";
              goto LABEL_42;
            case '%':
              v3 = "clonegroup_tree: ";
              goto LABEL_42;
          }
        }
      }

      else if (a2 <= 13)
      {
        if (a2 == 10)
        {
          v3 = "extent_list: ";
          goto LABEL_42;
        }

        if (a2 == 11)
        {
          v3 = "om: ";
          goto LABEL_42;
        }
      }

      else
      {
        switch(a2)
        {
          case 14:
            v3 = "apfs_root: ";
            goto LABEL_42;
          case 15:
            v3 = "apfs_extentref: ";
            goto LABEL_42;
          case 16:
            v3 = "apfs_snap_meta: ";
            goto LABEL_42;
        }
      }

      v3 = &byte_1000B36A6;
LABEL_42:
      v4 = "btn";
      if (a1 == 2)
      {
        v4 = "bt";
      }

      v2 = byte_100103C29;
      snprintf(byte_100103C29, 0x28uLL, "%s%s", v3, v4);
      return v2;
    case 5:
      return "sm";
    case 6:
      return "cab";
    case 7:
      return "cib";
    case 8:
      return "sm_ip";
    case 11:
      return "om";
    case 12:
      return "cpm";
    case 13:
      return "apfs";
    case 15:
      return "extent";
    case 17:
      return "nr";
    case 18:
      return "nrl";
    case 20:
      return "efi_jumpstart";
    case 24:
      return "er_state";
    case 25:
      return "gbitmap";
    case 27:
      return "gbitmap_blk";
    case 29:
      return "snap_meta_ext";
    default:
      return "?";
  }
}

uint64_t copy_obj(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, uint64_t **a9, uint64_t a10, char a11)
{
  if (a9)
  {
    return sub_100088400(a1, a2, a3, a4, a5, a6, a7, a8, 0, a9, a10, a11);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100088400(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, uint64_t a9, uint64_t **a10, uint64_t a11, char a12)
{
  v12 = a7;
  v15 = a4;
  v17 = *(a1[1] + 36);
  v430 = 0uLL;
  v431 = 0;
  if (a9 && a10)
  {
    v427 = a3;
    v430 = *(a9 + 144);
    v18 = *(a9 + 168);
    v431 = *(a9 + 160);
    if (v18)
    {
      v418 = a5;
      *(a9 + 168) = 0;
      goto LABEL_7;
    }

    sub_10008810C(a7, a8);
    fsck_printf_err("(oid 0x%llx) %s: object read was finished already\n", v28, v29, v30, v31, v32, v33, v34, v15);
    v22 = 37;
    v35 = 1558;
    v36 = 37;
LABEL_33:
    fsck_fail_func(v35, v36);
    return v22;
  }

  v19 = a1;
  v20 = lookup_obj(a1, a2, a3, a4, a5, a6, a7, a8, &v430);
  v21 = a5;
  v22 = v20;
  if (v20)
  {
    return v22;
  }

  v418 = v21;
  v427 = a3;
  v18 = malloc_type_malloc(DWORD2(v430), 0xDA49114EuLL);
  a1 = v19;
  if (!v18)
  {
    sub_10008810C(v12, a8);
    fsck_printf_err("(oid 0x%llx) %s: malloc(%u)\n", v52, v53, v54, v55, v56, v57, v58, v15);
    v22 = 12;
    v35 = 347;
    v36 = 12;
    goto LABEL_33;
  }

LABEL_7:
  v426 = a1;
  v419 = v431;
  v23 = HIDWORD(v430);
  v24 = *a1;
  if ((BYTE12(v430) & 4) == 0)
  {
    v25 = 0;
    v26 = 0;
    goto LABEL_24;
  }

  if (BYTE12(v430) >= 0x40u)
  {
    sub_100064BB4();
  }

  v27 = (HIDWORD(v430) >> 8) & 7;
  if (v27 >= 2)
  {
    sub_100064B88();
  }

  if (v27 == 1)
  {
    v25 = v15 ^ HIDWORD(v431) | v15 & 0xFFFFFFFF00000000 ^ (v431 << 32);
    v26 = 4;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  if (!a2)
  {
LABEL_24:
    v38 = 0;
    if (a9)
    {
      goto LABEL_25;
    }

LABEL_22:
    v39 = DWORD2(v430);
    v424 = v430;
    extended = dev_read_extended(v24, v430, DWORD2(v430) / v17, v18, v38, 0, 0, v25, v26);
    if (extended)
    {
      v22 = extended;
LABEL_30:
      sub_10008810C(v12, a8);
      strerror(v22);
      fsck_printf_err("(oid 0x%llx) %s: %s(%llu, %u): %s\n", v45, v46, v47, v48, v49, v50, v51, v15);
      fsck_fail_func(0x15C, v22);
LABEL_31:
      free(v18);
      return v22;
    }

    if (a10)
    {
      goto LABEL_36;
    }

LABEL_40:
    v22 = 0;
    *(a9 + 144) = v430;
    *(a9 + 160) = v431;
    *(a9 + 168) = v18;
    return v22;
  }

  v37 = *(a2 + 8 * (BYTE12(v430) >> 5) + 24);
  if (v37)
  {
    v38 = a2 + 96 * (BYTE12(v430) >> 5) + 832;
  }

  else
  {
    v38 = 0;
  }

  if (v37)
  {
    v24 = *(a2 + 8 * (BYTE12(v430) >> 5) + 24);
  }

  if (!a9)
  {
    goto LABEL_22;
  }

LABEL_25:
  if (!a10)
  {
    v44 = dev_read_extended(v24, v430, DWORD2(v430) / v17, v18, v38, 1, a9, v25, v26);
    if (v44)
    {
      v22 = v44;
      goto LABEL_30;
    }

    goto LABEL_40;
  }

  finish = dev_read_finish(v24);
  v424 = v430;
  v39 = DWORD2(v430);
  if (finish)
  {
    v22 = finish;
    goto LABEL_30;
  }

LABEL_36:
  v413 = v39;
  if (a2)
  {
    v60 = *(a2 + 40);
    v61 = (*(v60 + 264) & 1) == 0;
    v62 = *(v60 + 976) == 0;
    if (*(v60 + 976))
    {
      v61 = 1;
    }

    LOBYTE(v417) = *(v60 + 1096) != 0;
    HIDWORD(v417) = v61;
  }

  else
  {
    v417 = 0;
    v62 = 1;
  }

  v63 = v23;
  if ((a6 & 0x20000000) != 0)
  {
    goto LABEL_237;
  }

  v400 = v62;
  v405 = 0;
  v64 = 0;
  v422 = 0;
  v411 = 0;
  v414 = (v23 & 4) != 0;
  v65 = a6 | ((v23 & 4) << 26);
  v425 = v63 >> 5;
  v408 = a2 + 832;
  v409 = a2 + 24;
  v416 = v39 - 8;
  v415 = 8 * v39;
  v66 = 8 * v39;
  v406 = v39 - 8;
  v67 = v419;
  v410 = v15 ^ HIDWORD(v419) | v15 & 0xFFFFFFFF00000000 ^ (v419 << 32);
  v412 = v66;
LABEL_44:
  v420 = v63;
  v407 = v65;
  while (1)
  {
    v69 = fletcher64_verify_cksum(v18, (v18 + 1), v416, 0, v41, v42);
    if (v69)
    {
      sub_10008810C(v12, a8);
      v391 = *v18;
      fsck_printf_warn("(oid 0x%llx) %s: invalid o_cksum (0x%llx)\n", v70, v71, v72, v73, v74, v75, v76, v15);
      fsck_fail_func(0x15E, 92);
    }

    if (bitmap_range_is_clear(v18, 0, v415, v68))
    {
      sub_10008810C(v12, a8);
      fsck_printf_err("(oid 0x%llx) %s: found zeroed-out block\n", v263, v264, v265, v266, v267, v268, v269, v15);
      v22 = 92;
      v270 = 845;
      v271 = 92;
LABEL_236:
      fsck_fail_func(v270, v271);
      goto LABEL_246;
    }

    v79 = v18[1];
    if (v79 == v15)
    {
      v80 = 0;
      v81 = v422;
    }

    else
    {
      v82 = v422;
      if (!v69)
      {
        sub_10008810C(v12, a8);
        v392 = v18[1];
        fsck_printf_err("(oid 0x%llx) %s: invalid o_oid (0x%llx)\n", v83, v84, v85, v86, v87, v88, v89, v15);
        fsck_fail_func(0x15F, 92);
        v82 = v422;
        v79 = v18[1];
      }

      *v77.i8 = vcnt_s8((v79 ^ v15));
      v77.i16[0] = vaddlv_u8(*v77.i8);
      v81 = v82 + v77.i32[0];
      v80 = 92;
    }

    v90 = v18[2];
    if (v90)
    {
      v91 = *(v426[1] + 16);
      if (v90 <= v91)
      {
        v22 = v80;
      }

      else
      {
        v22 = 92;
      }

      if (!v69 && v90 > v91)
      {
LABEL_62:
        v92 = v64;
        v93 = v65;
        v94 = v81;
        sub_10008810C(v12, a8);
        v393 = v18[2];
        fsck_printf_err("(oid 0x%llx) %s: invalid o_xid (0x%llx)\n", v95, v96, v97, v98, v99, v100, v101, v15);
        v22 = 92;
        fsck_fail_func(0x160, 92);
        v81 = v94;
        v65 = v93;
        v64 = v92;
        v66 = v412;
      }
    }

    else
    {
      if (!v69)
      {
        goto LABEL_62;
      }

      v22 = 92;
    }

    if (v67)
    {
      v102 = v18[2];
      if (v102 != v67)
      {
        if (!v69)
        {
          v103 = v65;
          v104 = v81;
          sub_10008810C(v12, a8);
          v394 = v18[2];
          fsck_printf_err("(oid 0x%llx) %s: invalid o_xid (0x%llx, expected 0x%llx)\n", v105, v106, v107, v108, v109, v110, v111, v15);
          fsck_fail_func(0x371, 92);
          v81 = v104;
          v65 = v103;
          v102 = v18[2];
        }

        *v77.i8 = vcnt_s8((v102 ^ v67));
        v77.i16[0] = vaddlv_u8(*v77.i8);
        v81 += v77.i32[0];
        v22 = 92;
      }
    }

    if (v12)
    {
      v112 = *(v18 + 12);
      if (v112 != v12)
      {
        if (!v69)
        {
          v113 = v65;
          v114 = v81;
          sub_10008810C(v12, a8);
          v395 = *(v18 + 6);
          fsck_printf_err("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v115, v116, v117, v118, v119, v120, v121, v15);
          fsck_fail_func(0x161, 92);
          v81 = v114;
          v65 = v113;
          v112 = *(v18 + 12);
        }

        v77.i32[0] = v112 ^ v12;
        *v77.i8 = vcnt_s8(*v77.i8);
        v77.i16[0] = vaddlv_u8(*v77.i8);
        v81 += v77.i32[0];
        v22 = 92;
      }
    }

    if (a8)
    {
      v122 = *(v18 + 7);
      if (v122 != a8)
      {
        if (v69)
        {
          v77.i32[0] = *(v18 + 7) ^ a8;
          *v77.i8 = vcnt_s8(*v77.i8);
          v77.i16[0] = vaddlv_u8(*v77.i8);
          v81 += v77.i32[0];
          v123 = *(v18 + 6);
          if ((v123 & 0xC0000000) == v427)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v423 = v81;
        if (a8 != 33 || v122)
        {
          sub_10008810C(v12, a8);
          v397 = *(v18 + 7);
          fsck_printf_err("(oid 0x%llx) %s: invalid o_subtype (0x%x, expected 0x%x)\n", v137, v138, v139, v140, v141, v142, v143, v15);
          v22 = 92;
          fsck_fail_func(0x164, 92);
          v77.i32[0] = *(v18 + 14) ^ a8;
          *v77.i8 = vcnt_s8(*v77.i8);
          v77.i16[0] = vaddlv_u8(*v77.i8);
          v81 = v77.i32[0] + v423;
        }

        else
        {
          sub_10008810C(v12, 33);
          v396 = *(v18 + 7);
          fsck_printf_warn("(oid 0x%llx) %s: using old subtype (0x%x, expected 0x%x)\n", v124, v125, v126, v127, v128, v129, v130, v15);
          if (!v22)
          {
            v411 |= fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) subtype? ", v131, v132, v133, v134, v135, v136, v15) != 0;
          }

          v81 = v423;
        }

        v65 = v407;
      }
    }

    v123 = *(v18 + 6);
    if ((v123 & 0xC0000000) == v427)
    {
      goto LABEL_90;
    }

    if (!v69)
    {
      v144 = v65;
      v145 = v81;
      sub_10008810C(v12, a8);
      v398 = *(v18 + 6);
      fsck_printf_err("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v146, v147, v148, v149, v150, v151, v152, v15);
      fsck_fail_func(0x162, 92);
      v81 = v145;
      v65 = v144;
      v123 = *(v18 + 6);
    }

LABEL_88:
    v77.i32[0] = *(v18 + 7) & 0xC0000000 ^ v427;
    *v77.i8 = vcnt_s8(*v77.i8);
    v77.i16[0] = vaddlv_u8(*v77.i8);
    v81 += v77.i32[0];
LABEL_89:
    v22 = 92;
LABEL_90:
    v153 = v123 & 0x3FFF0000;
    if (v153 != v65)
    {
      if (v69 && v22)
      {
        goto LABEL_95;
      }

      v154 = v64;
      v155 = v65;
      v156 = v81;
      sub_10008810C(v12, a8);
      v399 = *(v18 + 6);
      fsck_printf_err("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v157, v158, v159, v160, v161, v162, v163, v15);
      fsck_fail_func(0x163, 92);
      if (v22)
      {
        v153 = v18[3] & 0x3FFF0000;
        v81 = v156;
        v65 = v155;
        v64 = v154;
        v66 = v412;
LABEL_95:
        v77.i32[0] = v153 ^ v65;
        *v77.i8 = vcnt_s8(*v77.i8);
        v77.i16[0] = vaddlv_u8(*v77.i8);
        v81 += v77.i32[0];
        goto LABEL_96;
      }

      v231 = fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) flags? ", v164, v165, v166, v167, v168, v169, v15);
      v411 |= v231 != 0;
      if (v231)
      {
        v22 = 0;
      }

      else
      {
        v22 = 92;
      }

      v81 = v156;
      v65 = v155;
      v64 = v154;
      v66 = v412;
    }

LABEL_96:
    v422 = v81;
    if (a8)
    {
      if (v12 && v81 == 1)
      {
        break;
      }
    }

    if (!v69)
    {
LABEL_182:
      if (v22)
      {
        goto LABEL_246;
      }

      goto LABEL_187;
    }

    if (v81)
    {
      v191 = 1005;
      goto LABEL_108;
    }

    v432 = 0;
    if (!v39)
    {
      v191 = 1004;
      goto LABEL_108;
    }

    v401 = v69;
    v402 = v64;
    v403 = v12;
    v404 = v15;
    LODWORD(v210) = 0;
    v211 = 0;
    v212 = v66;
    v213 = 0;
    do
    {
      v214 = v211 >> 3;
      v215 = 1 << (v211 & 7);
      *(v18 + v214) ^= v215;
      v216 = *v18;
      fletcher64_set_cksum(&v432, (v18 + 1), v406, 0, v77, v78);
      if (v216 == v432)
      {
        v210 = v211;
      }

      else
      {
        v210 = v210;
      }

      if (v216 == v432)
      {
        ++v213;
      }

      *(v18 + v214) ^= v215;
      ++v211;
    }

    while (v212 != v211);
    v22 = v22;
    v69 = v401;
    if (!v213)
    {
      v191 = 1004;
      v15 = v404;
      v64 = v402;
      v12 = v403;
      v67 = v419;
      v66 = v412;
      v39 = v413;
      v65 = v407;
      goto LABEL_108;
    }

    v15 = v404;
    v64 = v402;
    v12 = v403;
    v67 = v419;
    v65 = v407;
    if (v213 != 1)
    {
      sub_10008810C(v403, a8);
      fsck_printf_err("(oid 0x%llx) %s: could not repair object to match checksum: too many bit flip candidates (%d)\n", v232, v233, v234, v235, v236, v237, v238, v404);
      v191 = 1003;
      v66 = v412;
      v39 = v413;
LABEL_108:
      fsck_fail_func(v191, 92);
      v190 = v420;
      if (!v22)
      {
        goto LABEL_185;
      }

      goto LABEL_109;
    }

    sub_10008810C(v403, a8);
    fsck_printf_err("(oid 0x%llx) %s: found a bit flip at index 0x%x\n", v217, v218, v219, v220, v221, v222, v223, v404);
    v22 = 92;
    fsck_fail_func(0x3EA, 92);
    v230 = fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) bit flip? ", v224, v225, v226, v227, v228, v229, v404);
    v190 = v420;
    v66 = v412;
    if (v230)
    {
      LOBYTE(v411) = 1;
      *(v18 + (v210 >> 3)) ^= 1 << (v210 & 7);
      goto LABEL_187;
    }

LABEL_102:
    v39 = v413;
    if (!v69)
    {
      goto LABEL_182;
    }

    if (!v22)
    {
      goto LABEL_185;
    }

LABEL_109:
    v192 = v425;
    if (((BYTE4(v417) & ~v64) & v414 & 1) == 0 || !((v425 == 1) | v417 & 1))
    {
      if ((v405 & 1) != 0 || ((HIDWORD(v417) | v414) & 1) == 0)
      {
        goto LABEL_246;
      }

      if ((v190 & 4) != 0)
      {
        v244 = v190 & 0xFFFFFF1B;
      }

      else
      {
        v239 = (a8 & 0xFFFFFFFE) == 36;
        v240 = *(*(a2 + 40) + 1096) != 0;
        v241 = (v239 & v240) == 0;
        if ((v239 & v240) != 0)
        {
          v242 = 256;
        }

        else
        {
          v242 = v240 << 8;
        }

        if (v241)
        {
          v243 = 0;
        }

        else
        {
          v243 = 32;
        }

        v192 = v243 >> 5;
        v244 = v190 & 0xFFFFF81F | v242 | v243 | 4;
      }

      v245 = v426;
      v246 = *v426;
      if ((v244 & 4) == 0)
      {
        v247 = v67;
        v248 = 0;
        v249 = 0;
        goto LABEL_174;
      }

      if (v244 >= 0x40u)
      {
        sub_100064BB4();
      }

      v250 = (v244 >> 8) & 7;
      if (v250 >= 2)
      {
        sub_100064B88();
      }

      v241 = v250 == 1;
      v249 = 4 * (v250 == 1);
      v248 = v241 ? v410 : 0;
      if (a2)
      {
        v247 = v67;
        v251 = *(v409 + 8 * (v244 >> 5));
        if (v251)
        {
          v252 = v408 + 96 * (v244 >> 5);
        }

        else
        {
          v252 = 0;
        }

        v245 = v426;
        if (v251)
        {
          v246 = *(v409 + 8 * (v244 >> 5));
        }
      }

      else
      {
        v247 = v67;
LABEL_174:
        v252 = 0;
      }

      v425 = v192;
      v253 = *(v245[1] + 36);
      if (v39 % v253)
      {
        sub_100064BE0();
      }

      v254 = v244;
      if (dev_read_extended(v246, v424, v39 / v253, v18, v252, 0, 0, v248, v249))
      {
        goto LABEL_246;
      }

      if (v414)
      {
        v262 = "encrypted";
      }

      else
      {
        v262 = "unencrypted";
      }

      fsck_printf_warn("failed to validate %s object, retrying as %s\n", v255, v256, v257, v258, v259, v260, v261, v262);
      v405 = 1;
      v414 ^= 1u;
      v65 = v65 ^ 0x10000000;
      v39 = v413;
      v63 = v254;
      v67 = v247;
      goto LABEL_44;
    }

    v193 = v67;
    v194 = v190 & 0xFFFFFF1F | (32 * ((v425 ^ 1) & 7));
    v195 = v426;
    v196 = *v426;
    if ((v190 & 4) == 0)
    {
      v197 = 0;
      v198 = 0;
LABEL_125:
      v201 = 0;
      goto LABEL_126;
    }

    if ((v190 & 0x1F | (32 * ((v425 ^ 1) & 7))) >= 0x40)
    {
      sub_100064BB4();
    }

    v199 = (v190 >> 8) & 7;
    if (v199 >= 2)
    {
      sub_100064B88();
    }

    v241 = v199 == 1;
    v198 = 4 * (v199 == 1);
    if (v241)
    {
      v197 = v410;
    }

    else
    {
      v197 = 0;
    }

    if (!a2)
    {
      goto LABEL_125;
    }

    v200 = *(v409 + 8 * (v194 >> 5));
    if (v200)
    {
      v201 = v408 + 96 * (v194 >> 5);
    }

    else
    {
      v201 = 0;
    }

    v195 = v426;
    if (v200)
    {
      v196 = *(v409 + 8 * (v194 >> 5));
    }

LABEL_126:
    v202 = *(v195[1] + 36);
    if (v39 % v202)
    {
      sub_100064BE0();
    }

    v425 = v425 ^ 1;
    if (dev_read_extended(v196, v424, v39 / v202, v18, v201, 0, 0, v197, v198))
    {
      goto LABEL_246;
    }

    fsck_printf_warn("failed to validate object with crypto key index (%u), retrying with (%u)\n", v203, v204, v205, v206, v207, v208, v209, v425 ^ 1);
    v64 = 1;
    v420 = v194;
    v67 = v193;
  }

  sub_10008810C(v12, a8);
  fsck_printf_err("(oid 0x%llx) %s: found a bit flip in the header\n", v170, v171, v172, v173, v174, v175, v176, v15);
  fsck_fail_func(0x3E9, 92);
  v183 = fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) header bit flip? ", v177, v178, v179, v180, v181, v182, v15);
  v190 = v420;
  if (!v183)
  {
    goto LABEL_102;
  }

  v18[1] = v15;
  if (!v67)
  {
    v22 = 0;
    v411 = 1;
    goto LABEL_102;
  }

  v18[2] = v67;
  if (v69)
  {
LABEL_185:
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) checksum? ", v184, v185, v186, v187, v188, v189, v15))
    {
      v22 = 92;
      goto LABEL_246;
    }
  }

  LOBYTE(v411) = 1;
LABEL_187:
  v272 = v64;
  if (a2)
  {
    v273 = (v427 | *(*(a2 + 40) + 264) & 1) == 0;
  }

  else
  {
    v273 = 0;
  }

  v274 = v420;
  v275 = v405;
  v276 = a8;
  if (!a8)
  {
    v276 = *(v18 + 7);
  }

  v277 = a2 && (v276 & 0xFFFFFFFE) == 0x24 && *(*(a2 + 40) + 1096);
  if (((v405 | v272) & 1) == 0)
  {
    if (v400)
    {
      v291 = v425 != v277;
      if (v425 != v277)
      {
        sub_10008810C(v12, a8);
        fsck_printf_warn("(oid 0x%llx) %s: invalid crypto key index (%u), expected (%u)\n", v292, v293, v294, v295, v296, v297, v298, v15);
        v22 = 92;
        fsck_fail_func(0x4B4, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) crypto key index? ", v299, v300, v301, v302, v303, v304, v15))
        {
          goto LABEL_246;
        }

        v274 = (v420 & 0xFFFFFF1F | (32 * (v425 & 7))) ^ 0x20;
        LOBYTE(v411) = 1;
      }

      if ((v414 & 1) != v273)
      {
        v305 = v65;
        v306 = v274;
        sub_10008810C(v12, a8);
        fsck_printf_warn("(oid 0x%llx) %s: object is %s but should be %s\n", v307, v308, v309, v310, v311, v312, v313, v15);
        fsck_fail_func(0x374, -3);
        if (fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) encryption and omap flags? ", v314, v315, v316, v317, v318, v319, v15))
        {
          v320 = v306 & 0xFFFFFF1B;
          v321 = v419;
          if ((v306 & 4) == 0)
          {
            v320 |= (32 * (*(*(a2 + 40) + 1096) != 0)) | 4;
          }

          LODWORD(v65) = v305 ^ 0x10000000;
          v291 = 1;
          v274 = v320;
          v322 = 1;
          goto LABEL_225;
        }

        v321 = v419;
        v274 = v306;
        LODWORD(v65) = v305;
LABEL_224:
        v322 = v411;
        goto LABEL_225;
      }
    }

    else
    {
      v291 = 0;
    }

LABEL_223:
    v321 = v419;
    goto LABEL_224;
  }

  if (v272)
  {
    if (v425 == v277)
    {
      sub_10008810C(v12, a8);
      fsck_printf_err("(oid 0x%llx) %s: object is encrypted with crypto key index (%u)but omap says it's encrypted with crypto key index (%u)\n", v278, v279, v280, v281, v282, v283, v284, v15);
      v22 = 92;
      fsck_fail_func(0x4B3, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) omap flags? ", v285, v286, v287, v288, v289, v290, v15))
      {
        goto LABEL_246;
      }

      v291 = 1;
      v274 = v420;
    }

    else
    {
      sub_10008810C(v12, a8);
      fsck_printf_err("(oid 0x%llx) %s: object is encrypted with crypto key index (%u) but should be encrypted with crypto key index (%u)\n", v323, v324, v325, v326, v327, v328, v329, v15);
      v22 = 92;
      fsck_fail_func(0x4B2, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) crypto key index? ", v330, v331, v332, v333, v334, v335, v15))
      {
        goto LABEL_246;
      }

      v291 = 0;
      v274 = (v420 & 0xFFFFFF1F | (32 * (v425 & 7))) ^ 0x20;
      LOBYTE(v411) = 1;
    }

    v275 = v405;
  }

  else
  {
    v291 = 0;
  }

  if ((v275 & 1) == 0)
  {
    goto LABEL_223;
  }

  v421 = v274;
  sub_10008810C(v12, a8);
  if ((v414 & 1) == v273)
  {
    fsck_printf_err("(oid 0x%llx) %s: object is %s but omap says it's %s\n", v336, v337, v338, v339, v340, v341, v342, v15);
    v22 = 92;
    fsck_fail_func(0x373, 92);
    v390 = fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) omap flags? ", v384, v385, v386, v387, v388, v389, v15);
    v321 = v419;
    v322 = v411;
    if (v390)
    {
      v291 = 1;
      v274 = v421;
      goto LABEL_225;
    }
  }

  else
  {
    fsck_printf_err("(oid 0x%llx) %s: object is %s but should be %s\n", v336, v337, v338, v339, v340, v341, v342, v15);
    v22 = 92;
    fsck_fail_func(0x372, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) encryption? ", v343, v344, v345, v346, v347, v348, v15))
    {
      goto LABEL_246;
    }

    v349 = v421 & 0xFFFFFF1B;
    if ((v421 & 4) == 0)
    {
      v349 |= (32 * (*(*(a2 + 40) + 1096) != 0)) | 4;
    }

    LODWORD(v65) = v65 ^ 0x10000000;
    v322 = 1;
    v274 = v349;
    v321 = v419;
LABEL_225:
    v350 = v12;
    if (!v12)
    {
      v350 = *(v18 + 12);
    }

    v351 = a8;
    if (!a8)
    {
      v351 = *(v18 + 7);
    }

    if (v322)
    {
      *(v18 + 6) = v65 | v350 | v427;
      *(v18 + 7) = v351;
      v432 = v424;
      v433 = v413;
      v434 = v274;
      v435 = v321;
      v352 = v274;
      v353 = write_obj(v426, a2, v18, &v432, v77, v78);
      v274 = v352;
      if (v353)
      {
        v22 = v353;
        v354 = strerror(v353);
        fsck_printf_err("error writing object: %s\n", v355, v356, v357, v358, v359, v360, v361, v354);
        v270 = 880;
LABEL_235:
        v271 = v22;
        goto LABEL_236;
      }
    }

    if (v291)
    {
      v362 = v18[1];
      v363 = v18[2];
      v432 = v424;
      v433 = v413;
      v434 = v274;
      v435 = v321;
      inserted = _omap_insert_obj(v426, a2, v362, v363, &v432);
      if (inserted)
      {
        v22 = inserted;
        v365 = strerror(inserted);
        fsck_printf_err("error updating omap entry: %s\n", v366, v367, v368, v369, v370, v371, v372, v365);
        v270 = 885;
        goto LABEL_235;
      }
    }

LABEL_237:
    v22 = 0;
    if (v427 && a12)
    {
      if ((v12 - 6) >= 3)
      {
        v373 = 1;
      }

      else
      {
        v373 = 9;
      }

      if (a2)
      {
        v374 = *(*(a2 + 40) + 8);
      }

      else
      {
        v374 = 0;
      }

      mark_object_allocated(v426, v430, (DWORD2(v430) / *(v426[1] + 36)), v374, v427, v15, v418, v12, a8, v373);
      v22 = 0;
    }
  }

LABEL_246:
  if ((v12 - 4) > 0xFFFFFFFD || v22 | v427)
  {
    if (!v22)
    {
      goto LABEL_251;
    }

    goto LABEL_31;
  }

  v375 = omap_sv_mark(a2 != 0, v15, 1);
  if (v375)
  {
    v383 = v375;
    fsck_printf_warn("object (oid 0x%llx): Unable to mark omap entry in use for omap space verification \n", v376, v377, v378, v379, v380, v381, v382, v15);
    fsck_fail_func(0x3D4, v383);
  }

LABEL_251:
  *a10 = v18;
  v22 = 0;
  if (a11)
  {
    *a11 = v430;
    *(a11 + 16) = v431;
  }

  return v22;
}

uint64_t copy_obj_async(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, uint64_t a9)
{
  if (a9)
  {
    return sub_100088400(a1, a2, a3, a4, a5, a6, a7, a8, a9, 0, 0, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t copy_obj_finish(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, uint64_t a9, uint64_t **a10, uint64_t a11, char a12)
{
  if (a9)
  {
    v12 = a10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 22;
  }

  else
  {
    return sub_100088400(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }
}

double copy_obj_abort(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 168))
  {
    v5 = *(a4 + 156);
    v6 = *a1;
    if ((v5 & 4) != 0)
    {
      if (*(a4 + 156) >= 0x40u)
      {
        sub_100064BB4();
      }

      if ((v5 & 0x600) != 0)
      {
        sub_100064B88();
      }

      if (a2)
      {
        v7 = *(a2 + 8 * (v5 >> 5) + 24);
        if (v7)
        {
          v6 = v7;
        }
      }
    }

    dev_read_finish(v6);
    free(*(a4 + 168));
  }

  result = 0.0;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t write_obj(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5, int8x16_t a6)
{
  fletcher64_set_cksum(a3, (a3 + 8), (*(a4 + 8) - 8), 0, a5, a6);
  v10 = *(a4 + 8);
  v11 = *(a4 + 12);
  v12 = *a1;
  if ((v11 & 4) != 0)
  {
    if (*(a4 + 12) >= 0x40u)
    {
      sub_100064BB4();
    }

    v16 = (v11 >> 8) & 7;
    if (v16 >= 2)
    {
      sub_100064B88();
    }

    if (v16 == 1)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    if (v16 == 1)
    {
      v15 = *(a3 + 8) ^ HIDWORD(*(a4 + 16)) | *(a3 + 8) & 0xFFFFFFFF00000000 ^ (*(a4 + 16) << 32);
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v17 = v11 >> 5;
      v18 = *(a2 + 8 * v17 + 24);
      v19 = a2 + 96 * v17 + 832;
      if (v18)
      {
        v12 = v18;
        v13 = v19;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v20 = *(a1[1] + 36);
  if (v10 % v20)
  {
    sub_100064C0C();
  }

  v21 = dev_write_extended(v12, *a4, v10 / v20, a3, v13, v15, v14);
  if (v21)
  {
    v22 = *(a3 + 8);
    sub_10008810C(*(a3 + 24), *(a3 + 28));
    v23 = *a4;
    v32 = (*(a4 + 8) / *(a1[1] + 36));
    strerror(v21);
    fsck_printf_err("(oid 0x%llx) %s: dev_write(%llu, %u): %s\n", v24, v25, v26, v27, v28, v29, v30, v22);
    fsck_fail_func(0x166, v21);
  }

  if (a2)
  {
    *(a2 + 12) = 1;
  }

  return v21;
}

uint64_t fsck_omap(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a2 + 72);
  if (!a2)
  {
    v10 = a1 + 4;
  }

  v11 = *v10;
  v12 = (a2 + 104);
  v13 = (a2 + 112);
  if (!a2)
  {
    v13 = (a1 + 15);
    v12 = (a1 + 14);
  }

  v14 = *v12;
  v15 = *v13;
  v16 = *(v11 + 8);
  v17 = *(v11 + 32);
  if (v17 >= 0x40)
  {
    v32 = *(v11 + 32);
    fsck_printf_warn("omap (oid 0x%llx): invalid om_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(v11 + 8));
    fsck_fail_func(0x16C, -3);
    v17 = *(v11 + 32);
  }

  if ((v17 & 1) != 0 && *(v11 + 36))
  {
    v33 = *(v11 + 36);
    fsck_printf_err("omap (oid 0x%llx): invalid om_snap_count (%u), given om_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v18 = 92;
    v19 = 365;
LABEL_20:
    fsck_fail_func(v19, 92);
    return v18;
  }

  if (*(v11 + 40) >> 30 == 3 || *(v11 + 40) != 2)
  {
    v34 = *(v11 + 40);
    fsck_printf_err("omap (oid 0x%llx): invalid om_tree_type (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v18 = 92;
    v19 = 366;
    goto LABEL_20;
  }

  if (*(v11 + 44) >> 30 == 3 || *(v11 + 44) != 2)
  {
    v35 = *(v11 + 44);
    fsck_printf_err("omap (oid 0x%llx): invalid om_snapshot_tree_type (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v18 = 92;
    v19 = 367;
    goto LABEL_20;
  }

  v44 = 0;
  omap_tree = get_omap_tree(a1, a2, &v44);
  if (omap_tree)
  {
    return omap_tree;
  }

  omap_tree = fsck_tree(v44, 0, sub_100089D34, 0, 0, 1);
  if (omap_tree)
  {
    return omap_tree;
  }

  if (*(v11 + 32))
  {
    if (*(v11 + 56))
    {
      v36 = *(v11 + 56);
      v40 = *(v11 + 32);
      fsck_printf_err("omap (oid 0x%llx): invalid om_snapshot_tree_oid (0x%llx), given om_flags (0x%x)\n", v24, v25, v26, v27, v28, v29, v30, v16);
      v18 = 92;
      v19 = 368;
      goto LABEL_20;
    }

    if (*(v11 + 64))
    {
      v37 = *(v11 + 64);
      v41 = *(v11 + 32);
      fsck_printf_err("omap (oid 0x%llx): invalid om_most_recent_snap (0x%llx), given om_flags (0x%x)\n", v24, v25, v26, v27, v28, v29, v30, v16);
      v18 = 92;
      v19 = 369;
      goto LABEL_20;
    }

    if (*(v11 + 72))
    {
      v38 = *(v11 + 72);
      v42 = *(v11 + 32);
      fsck_printf_err("omap (oid 0x%llx): invalid om_pending_revert_min (0x%llx), given om_flags (0x%x)\n", v24, v25, v26, v27, v28, v29, v30, v16);
      v18 = 92;
      v19 = 370;
      goto LABEL_20;
    }

    if (*(v11 + 80))
    {
      v39 = *(v11 + 80);
      v43 = *(v11 + 32);
      fsck_printf_err("omap (oid 0x%llx): invalid om_pending_revert_max (0x%llx), given om_flags (0x%x)\n", v24, v25, v26, v27, v28, v29, v30, v16);
      v18 = 92;
      v19 = 371;
      goto LABEL_20;
    }
  }

  if (a2)
  {
    v31 = *(*(a2 + 40) + 8);
  }

  else
  {
    v31 = 0;
  }

  mark_object_allocated(a1, v14, v15 / *(a1[1] + 36), v31, 0x40000000, v16, 0, 11, &_mh_execute_header, &_mh_execute_header >> 32);
  return 0;
}