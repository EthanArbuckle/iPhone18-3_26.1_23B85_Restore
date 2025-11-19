char *dstream_init(uint64_t a1)
{
  qword_100103AF0 = a1;
  if (!tree_init_ext(&unk_100103AF8, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 48, 0, 0, uint64_key_compare))
  {
    tree_create(&unk_100103AF8, 0, 64);
  }

  result = memory_storage_register_tree(&unk_100103AF8, "dstream", dstream_abort);
  if (result)
  {
    fsck_printf_warn("failed to register the dstream tree in the fsck memory storage\n", v2, v3, v4, v5, v6, v7, v8, v9);

    return fsck_fail_func(0x583, 12);
  }

  return result;
}

uint64_t dstream_abort()
{
  if (qword_100103B30)
  {
    result = tree_destroy(&unk_100103AF8, 0);
  }

  qword_100103B38 = 0;
  return result;
}

uint64_t dstream_reset(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100103B38)
  {
    return 0;
  }

  if (qword_100103B38 >= a1)
  {
    if (qword_100103B38 > a1)
    {
      fsck_printf_err("dstream (id %llu) is older than the current dstream (id %llu)\n", a2, a3, a4, a5, a6, a7, a8, a1);
      v12 = 92;
      fsck_fail_func(0x3B8, 92);
      return v12;
    }

    return 0;
  }

  v15 = qword_100103B38;
  if ((BYTE8(xmmword_100103B60) & 3) != 2)
  {
    if ((BYTE8(xmmword_100103B60) & 4) == 0)
    {
      goto LABEL_23;
    }

    if (!xmmword_100103B60 || xmmword_100103B60 != DWORD1(xmmword_100103B60))
    {
      goto LABEL_23;
    }
  }

  v8 = qword_100103B48;
  if (qword_100103B50)
  {
    v9 = (BYTE8(xmmword_100103B60) & 0x80) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v8 = qword_100103B50;
  }

  if ((BYTE8(xmmword_100103B60) & 0x18) == 0 && qword_100103B58 == v8)
  {
    clonegroup_register_dstream(qword_100103B38, DWORD1(xmmword_100103B60));
    v11 = tree_remove(&unk_100103AF8, 0, &v15, 8);
  }

  else
  {
LABEL_23:
    v11 = tree_insert(&unk_100103AF8, 0, &v15, 8, &unk_100103B40, 48);
  }

  v12 = v11;
  if (!v11)
  {
    qword_100103B38 = 0;
  }

  return v12;
}

uint64_t dstream_register(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100103B30)
  {
    return 0;
  }

  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v14 = dstream_reset(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v14)
  {
    return v14;
  }

  v14 = sub_1000702AC(a2, &v45);
  if (v14)
  {
    return v14;
  }

  if ((BYTE8(v47) & 3) == 1)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  if ((BYTE8(v47) & 3) != 0 && !v16)
  {
    v43 = sub_10007179C(&v45, a2, a1);
    fsck_printf_err("found cloned xattr dstream (id %llu, object-ids %s)\n", v17, v18, v19, v20, v21, v22, v23, a2);
    free(v43);
    v15 = 92;
    v24 = 851;
LABEL_23:
    fsck_fail_func(v24, 92);
    return v15;
  }

  if (v10)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = v9 | ((BYTE8(v47) & 0x20) >> 5);
  if (v26)
  {
    v27 = 32;
  }

  else
  {
    v27 = 0;
  }

  if (v8 | ((BYTE8(v47) & 0x40) >> 6))
  {
    v28 = 64;
  }

  else
  {
    v28 = 0;
  }

  v29 = WORD4(v47) & 0xFF9C | v25 | v28 | v27;
  WORD4(v47) = v29;
  if (v26 && DWORD1(v47))
  {
    v44 = sub_10007179C(&v45, a2, a1);
    fsck_printf_err("cloned dstream (id %llu, object-ids %s) is being truncated\n", v30, v31, v32, v33, v34, v35, v36, a2);
    free(v44);
    v15 = 92;
    v24 = 807;
    goto LABEL_23;
  }

  if (DWORD1(v47))
  {
    v37 = *(&v45 + 1);
    if (*(&v45 + 1) != v11)
    {
      if (*(&v45 + 1) > v11)
      {
        *(&v45 + 1) = v11;
        v37 = v11;
      }

      v29 |= 0x10u;
      WORD4(v47) = v29;
      v11 = v37;
    }
  }

  else
  {
    *&v45 = a1;
    *(&v45 + 1) = v11;
  }

  v38 = ++DWORD1(v47);
  v48 = a2;
  if (((v29 & 3) == 2 || (v29 & 4) != 0 && v47 && v47 == v38) && (v46 ? (v39 = (v29 & 0x80) == 0) : (v39 = 1), !v39 ? (v40 = v46) : (v40 = v11), (v29 & 0x18) == 0 && *(&v46 + 1) == v40))
  {
    clonegroup_register_dstream(a2, v38);
    v41 = tree_remove(&unk_100103AF8, 0, &v48, 8);
  }

  else
  {
    v41 = tree_insert(&unk_100103AF8, 0, &v48, 8, &v45, 48);
  }

  v15 = v41;
  if (!v41)
  {
    if (a2 == a1)
    {
      v15 = 0;
      qword_100103B38 = a2;
      unk_100103B40 = v45;
      *&qword_100103B50 = v46;
      xmmword_100103B60 = v47;
      return v15;
    }

    return 0;
  }

  return v15;
}

uint64_t sub_1000702AC(uint64_t a1, _OWORD *a2)
{
  v6 = a1;
  v4 = 48;
  v5 = 8;
  result = tree_lookup(&unk_100103AF8, 0, 0, &v6, &v5, 8u, a2, &v4);
  if (result == 2)
  {
    *a2 = xmmword_1000B3240;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 2) = 0;
    *(a2 + 20) &= 0xFE00u;
    return tree_insert(&unk_100103AF8, 0, &v6, 8, a2, 48);
  }

  return result;
}

uint64_t sub_100070390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  if (a1)
  {
    return fsck_repairs_add(a1, 7, 1, a2, a3, &v9, 8u, a5, a6);
  }

  return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dstream_update_uncompressed_size(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  if (!a1)
  {
    sub_100071B98();
  }

  if (!qword_100103B30)
  {
    return 0;
  }

  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  if (qword_100103B38 == a1)
  {
    result = 0;
    qword_100103B50 = a2;
  }

  else
  {
    v4 = 48;
    v5 = 8;
    LODWORD(result) = tree_lookup(&unk_100103AF8, 0, 0, &v9, &v5, 8u, &v6, &v4);
    if (result)
    {
      if (result == 2)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else
    {
      *&v7 = a2;
      return tree_insert(&unk_100103AF8, 0, &v9, 8, &v6, 48);
    }
  }

  return result;
}

void dstream_register_dstream_id(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 >> 60 != 6)
  {
    sub_100071BC4();
  }

  if (qword_100103B30)
  {
    sub_10007056C(*a1 & 0xFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
    if (!v10)
    {
      if (!qword_100103B38 || qword_100103B38 != (*a1 & 0xFFFFFFFFFFFFFFFLL))
      {
        sub_100071BF0();
      }

      WORD4(xmmword_100103B60) |= 4u;
      LODWORD(xmmword_100103B60) = *a2;
    }
  }
}

double sub_10007056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!dstream_reset(a1, a2, a3, a4, a5, a6, a7, a8) && !qword_100103B38)
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    if (!sub_1000702AC(a1, &v10))
    {
      qword_100103B38 = a1;
      unk_100103B40 = v10;
      *&qword_100103B50 = v11;
      result = *&v12;
      xmmword_100103B60 = v12;
    }
  }

  return result;
}

void dstream_register_fext(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 >> 60 != 8)
  {
    sub_100071C1C();
  }

  if (qword_100103B30)
  {
    sub_10007056C(*a1 & 0xFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
    if (!v10)
    {
      if (!qword_100103B38 || qword_100103B38 != (*a1 & 0xFFFFFFFFFFFFFFFLL))
      {
        sub_100071C48();
      }

      v11 = *a2 & 0xFFFFFFFFFFFFFFLL;
      if (v11)
      {
        v12 = a1[1];
        if (v12 != qword_100103B58)
        {
          WORD4(xmmword_100103B60) |= 8u;
          v12 = a1[1];
        }

        qword_100103B58 = v12 + v11;
      }

      else
      {
        WORD4(xmmword_100103B60) |= 8u;
      }
    }
  }
}

uint64_t dstream_register_hash(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 >> 60 != 13)
  {
    sub_100071C74();
  }

  if (*(a2 + 15) != 1)
  {
    sub_100071CA0();
  }

  if (!qword_100103B30)
  {
    return 0;
  }

  sub_10007056C(*a2 & 0xFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
  v19 = v18;
  if (!v18)
  {
    if (!qword_100103B38 || qword_100103B38 != (*a2 & 0xFFFFFFFFFFFFFFFLL))
    {
      sub_100071CCC();
    }

    v20 = *(a2 + 8) & 0xFFFFFFFFFFFFFFLL;
    v21 = *a3;
    v22 = *(*(a1 + 8) + 36);
    v23 = qword_100103B50;
    if (!qword_100103B50)
    {
      v23 = qword_100103B48;
    }

    WORD4(xmmword_100103B60) |= 0x80u;
    if (v20 >= v23)
    {
      fsck_printf_err("data_hash: object (oid 0x%llx): Found unexpected hash at offset %llu (expected length %llu)\n", v11, v12, v13, v14, v15, v16, v17, qword_100103B38);
      v19 = 92;
      v24 = 929;
    }

    else if (*a3)
    {
      if (v20 == qword_100103B58)
      {
        v19 = 0;
        qword_100103B58 = v20 + (v22 * v21);
        return v19;
      }

      fsck_printf_err("data_hash: object (oid 0x%llx): Missing hash at offset %llu (found %llu)\n", v11, v12, v13, v14, v15, v16, v17, qword_100103B38);
      v19 = 92;
      v24 = 931;
    }

    else
    {
      fsck_printf_err("data_hash: object (oid 0x%llx): Invalid length at offset %llu\n", v11, v12, v13, v14, v15, v16, v17, qword_100103B38);
      v19 = 92;
      v24 = 930;
    }

    fsck_fail_func(v24, 92);
  }

  return v19;
}

uint64_t dstream_register_purgeable_ts(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 >> 60 != 14)
  {
    sub_100071CF8();
  }

  if (*(a1 + 8) != 17)
  {
    sub_100071D24();
  }

  if (!qword_100103B30)
  {
    return 0;
  }

  result = dstream_reset(*a1 & 0xFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    result = sub_1000702AC(*a2, &v14);
    if (!result)
    {
      v10 = BYTE8(v16);
      WORD4(v16) |= 0x100u;
      v11 = *a2;
      v17 = *a2;
      if (((v10 & 3) == 2 || (v10 & 4) != 0 && v16 && v16 == DWORD1(v16)) && (v15 ? (v12 = (v10 & 0x80) == 0) : (v12 = 1), !v12 ? (v13 = v15) : (v13 = *(&v14 + 1)), (v10 & 0x18) == 0 && *(&v15 + 1) == v13))
      {
        clonegroup_register_dstream(v11, DWORD1(v16));
        return tree_remove(&unk_100103AF8, 0, &v17, 8);
      }

      else
      {
        return tree_insert(&unk_100103AF8, 0, &v17, 8, &v14, 48);
      }
    }
  }

  return result;
}

uint64_t dstream_is_cow_exempt(void *a1)
{
  if (!qword_100103B30)
  {
    return 0;
  }

  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v8 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  if (qword_100103B38 == v8)
  {
    v1 = WORD4(xmmword_100103B60);
  }

  else
  {
    v4 = 48;
    v5 = 8;
    v3 = tree_lookup(&unk_100103AF8, 0, 0, &v8, &v5, 8u, v6, &v4);
    result = 0;
    if (v3)
    {
      return result;
    }

    v1 = WORD4(v7);
  }

  return (v1 >> 6) & 1;
}

uint64_t dstream_finalize(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100103B30)
  {
    return 0;
  }

  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  v11 = *(a2 + 48);
  if (!v11)
  {
    v11 = *(a2 + 40);
  }

  v12 = *(v11 + 56);
  v115 = 1;
  if ((v12 & 0x20) != 0 && (is_seal_intact = fsck_is_seal_intact(a1, a2, qword_100103AF0, &v115, 0, 0, 0, 0), is_seal_intact) || (is_seal_intact = dstream_reset(0xFFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8), is_seal_intact))
  {
LABEL_7:
    v14 = is_seal_intact;
    goto LABEL_13;
  }

  v113 = 48;
  v114 = 8;
  v15 = tree_lookup(&unk_100103AF8, 0, 1u, &v119, &v114, 8u, &v116, &v113);
  if (!v15)
  {
    while (1)
    {
      clonegroup_register_dstream(v119, DWORD1(v118));
      if (DWORD1(v118))
      {
        break;
      }

      if ((BYTE8(v118) & 4) != 0)
      {
        fsck_printf_warn("found orphan dstream id object (id %llu, refcnt %u)\n", v17, v18, v19, v20, v21, v22, v23, v119);
        fsck_fail_func(0x256, -2);
        is_seal_intact = sub_1000711D8(a3, 0, 0, 0, v119, 0, v33, v34);
        if (is_seal_intact)
        {
          goto LABEL_7;
        }
      }

      if (*(&v117 + 1))
      {
        v35 = "sealed volume hash records";
        if ((BYTE8(v118) & 0x80) == 0)
        {
          v35 = "file extents";
        }

        fsck_printf_warn("found orphan %s (id %llu, size %llu)\n", v17, v18, v19, v20, v21, v22, v23, v35);
        fsck_fail_func(0x257, -2);
        if ((v12 & 0x20) == 0)
        {
          is_seal_intact = sub_100071240(a1, a2, a3, v119, &v116, 0);
          if (is_seal_intact)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_77:
      v111 = 48;
      v112 = 8;
      v15 = tree_lookup(&unk_100103AF8, 0, 2u, &v119, &v112, 8u, &v116, &v111);
      if (v15)
      {
        goto LABEL_10;
      }
    }

    if ((BYTE8(v118) & 3) != 1)
    {
LABEL_40:
      if (v117)
      {
        v44 = (BYTE8(v118) & 0x80) == 0;
      }

      else
      {
        v44 = 1;
      }

      if (v44)
      {
        v45 = *(&v116 + 1);
      }

      else
      {
        v45 = v117;
      }

      if ((BYTE8(v118) & 8) != 0 || *(&v117 + 1) != v45)
      {
        LOBYTE(v120[0]) = 0;
        v46 = *(a2 + 48);
        if (!v46)
        {
          v46 = *(a2 + 40);
        }

        if ((*(v46 + 56) & 0x20) != 0)
        {
          goto LABEL_57;
        }

        if ((WORD4(v118) & 0x120) == 0)
        {
          if (DWORD1(v118) != 1)
          {
            goto LABEL_57;
          }

          is_seal_intact = is_file_in_purgatory(a1, a2, qword_100103AF0, v116, v120);
          if (is_seal_intact)
          {
            goto LABEL_7;
          }

          if ((v120[0] & 1) == 0)
          {
LABEL_57:
            if ((v12 & 0x20) != 0)
            {
              if (v115 == 1)
              {
                fsck_printf_err("sealed volume hash records (id %llu, size %llu) do not match size of dstream (%llu)\n", v17, v18, v19, v20, v21, v22, v23, v119);
                v47 = fsck_fail_func(0x438, 92);
                if (a3)
                {
                  *(a2 + 13) = 1;
                }

                else
                {
                  print_snapshot_warning(v47, v48, v49, v50, v51, v52, v53, v54);
                }
              }
            }

            else
            {
              is_seal_intact = sub_100071240(a1, a2, a3, v119, &v116, 1u);
              if (is_seal_intact)
              {
                goto LABEL_7;
              }
            }
          }
        }

        if ((BYTE8(v118) & 0x10) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((BYTE8(v118) & 0x10) == 0)
      {
        goto LABEL_77;
      }

      v55 = v119;
      v128[0] = 0;
      v125 = 0;
      v124 = 0;
      v123 = 0;
      v56 = malloc_type_calloc(1uLL, 0x340uLL, 0x371221CAuLL);
      v57 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x95C9F63FuLL);
      v58 = malloc_type_calloc(1uLL, 8 * DWORD1(v118), 0x100004000313F17uLL);
      tree_for_jobj = get_tree_for_jobj(a1, a2, 3, v128, v59, v60, v61, v62);
      v14 = tree_for_jobj;
      if (v56 && v57 && v58 && !tree_for_jobj)
      {
        v71 = sub_10007198C(v55, v58, DWORD1(v118), &v123);
        if (v71)
        {
          v14 = v71;
          fsck_printf_err("unable to get the file ids of dstream_id %llu\n", v72, v73, v74, v75, v76, v77, v78, v55);
LABEL_73:
          free(v57);
LABEL_74:
          if (v56)
          {
            free(v56);
          }

          if (v14)
          {
            goto LABEL_13;
          }

          goto LABEL_77;
        }

        v79 = v123;
        if (v123 > DWORD1(v118))
        {
          v123 = DWORD1(v118);
          v79 = DWORD1(v118);
        }

        if (v79 < 2)
        {
          sub_100071D7C();
        }

        v80 = 0;
        while (1)
        {
          *v56 = v58[v80] & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
          v126 = 3808;
          v127 = 8;
          v81 = tree_lookup(v128[0], qword_100103AF0, 0, v56, &v127, 0x340u, v57, &v126);
          if (v81)
          {
LABEL_90:
            v14 = v81;
            goto LABEL_72;
          }

          xfield = get_xfield(v57 + 46, v126 - 92, 8, &v125, &v124, 0, 0);
          if (xfield)
          {
            v14 = xfield;
            goto LABEL_93;
          }

          if (v124 <= 0x27u)
          {
            break;
          }

          v90 = *(v125 + 8);
          if (v90 != *(&v116 + 1))
          {
            v110 = v58[v80];
            fsck_printf_err("alloced_size (%llu) of dstream (id %llu, object-id %llu) does not match minimum found size (%llu)\n", v83, v84, v85, v86, v87, v88, v89, v90);
            fsck_fail_func(0x2A0, 92);
            v120[0] = 0;
            v121 = 0u;
            v122 = 0;
            v120[1] = *(&v116 + 1);
            v81 = sub_100070390(a3, 13, 1, *v56, v120, 40, v91, v92);
            if (v81)
            {
              goto LABEL_90;
            }
          }

          if (++v80 >= v123)
          {
            v14 = 0;
            goto LABEL_72;
          }
        }

        v14 = 34;
LABEL_93:
        v93 = *v56 & 0xFFFFFFFFFFFFFFFLL;
        strerror(v14);
        fsck_printf_err("failed to get inode (id %llu) dstream: %s\n", v94, v95, v96, v97, v98, v99, v100, v93);
        fsck_fail_func(0x380, v14);
      }

      else
      {
        fsck_printf_err("unable to init fsroot tree for dstream repair\n", v64, v65, v66, v67, v68, v69, v70, v109);
        fsck_fail_func(0x355, v14);
      }

LABEL_72:
      if (!v57)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    if ((BYTE8(v118) & 4) != 0)
    {
      if (v118 >= DWORD1(v118))
      {
        if (v118 <= DWORD1(v118))
        {
          goto LABEL_40;
        }

        fsck_printf_warn("refcnt (%u) of dstream id object (id %llu) is greater than expected (%u)\n", v17, v18, v19, v20, v21, v22, v23, v118);
        fsck_fail_func(0x2A2, -2);
        v38 = v119;
        v39 = DWORD1(v118);
        v40 = a3;
        v41 = 1;
        v42 = 9;
        v43 = 0;
        goto LABEL_39;
      }

      fsck_printf_err("refcnt (%u) of dstream id object (id %llu) is less than expected (%u)\n", v17, v18, v19, v20, v21, v22, v23, v118);
      fsck_fail_func(0x2C3, 92);
      v38 = v119;
      v39 = DWORD1(v118);
      v40 = a3;
      v41 = 1;
      v42 = 9;
    }

    else
    {
      if (v118)
      {
        sub_100071D50();
      }

      v120[0] = 0;
      v128[0] = v119 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
      LODWORD(v125) = 0;
      v126 = 4;
      v127 = 8;
      v14 = get_tree_for_jobj(a1, a2, 6, v120, v20, v21, v22, v23);
      if (!v14)
      {
        v14 = tree_lookup(v120[0], qword_100103AF0, 0, v128, &v127, v127, &v125, &v126);
      }

      if (v14 != 2)
      {
        if (v14)
        {
          v101 = v119;
          strerror(v14);
          fsck_printf_err("failed to look up dstream id object (id %llu): %s\n", v102, v103, v104, v105, v106, v107, v108, v101);
          fsck_fail_func(0x3EF, v14);
          goto LABEL_13;
        }

        fsck_printf_err("refcnt (%u) of dstream id object (id %llu) is less than expected (%u)\n", v24, v25, v26, v27, v28, v29, v30, v125);
        fsck_fail_func(0x358, 92);
        LODWORD(v125) = v125 + DWORD1(v118);
        is_seal_intact = sub_1000711D8(a3, 1, 9, 1, v119, v125, v31, v32);
        if (is_seal_intact)
        {
          goto LABEL_7;
        }

        WORD4(v118) &= ~0x10u;
        goto LABEL_40;
      }

      fsck_printf_err("dstream (id %llu) does not have an associated dstream id object\n", v24, v25, v26, v27, v28, v29, v30, v119);
      fsck_fail_func(0x251, 92);
      v38 = v119;
      v39 = DWORD1(v118);
      v40 = a3;
      v41 = 2;
      v42 = 0;
    }

    v43 = 1;
LABEL_39:
    is_seal_intact = sub_1000711D8(v40, v41, v42, v43, v38, v39, v36, v37);
    if (is_seal_intact)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_10:
  if (v15 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = v15;
  }

LABEL_13:
  tree_destroy(&unk_100103AF8, 0);
  return v14;
}

uint64_t sub_1000711D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v11 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
    return fsck_repairs_add(a1, 7, a2, a3, a4, &v11, 8u, &v10, 4u);
  }

  else
  {

    return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100071240(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v11 = a2[6];
  if (!v11)
  {
    v11 = a2[5];
  }

  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  memset(v111, 0, sizeof(v111));
  if ((*(v11 + 56) & 0x20) != 0)
  {
    sub_100071DA8();
  }

  if (*(a5 + 36))
  {
    v101 = *(a5 + 8);
  }

  else
  {
    v101 = 0;
  }

  v115 = 0;
  v110 = 0uLL;
  v109 = 0;
  v108 = 0uLL;
  v12 = malloc_type_calloc(1uLL, 0x340uLL, 0xE0BC2888uLL);
  v13 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x27D18C27uLL);
  tree_for_jobj = get_tree_for_jobj(a1, a2, 8, &v115, v14, v15, v16, v17);
  v26 = tree_for_jobj;
  if (!v12 || !v13 || tree_for_jobj)
  {
    fsck_printf_err("unable to init fsroot tree for dstream repair\n", v19, v20, v21, v22, v23, v24, v25, v93);
    v44 = 795;
LABEL_13:
    fsck_fail_func(v44, v26);
    goto LABEL_14;
  }

  v27 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  *v12 = v27;
  v12[1] = 0;
  v28 = tree_iterator_init(v111, v115, qword_100103AF0, v12, 0x10u, 0x340u, v13, 3808);
  if (!v28)
  {
    v99 = a6;
    if (BYTE8(v112))
    {
      v46 = 0;
      v47 = v101;
LABEL_21:
      if (v47 != v46)
      {
        v97 = *(a5 + 24);
        fsck_printf_err("alloced_size (%llu) of dstream (id %llu) does not match calculated size (%llu)\n", v29, v30, v31, v32, v33, v34, v35, v47);
      }

      if (v47 < v46)
      {
        fsck_fail_func(0x3E3, 92);
        v48 = v108;
        v26 = sub_100071B30(&v108, v47 - *(&v110 + 1), v49, v50, v51, v52, v53, v54);
        if (v26)
        {
          goto LABEL_14;
        }

        sub_1000719F8(a1, a2, a3, 1, 10, v99, &v110, &v108, v48 & 0xFFFFFFFFFFFFFFLL, (*(a5 + 40) & 0x40) != 0);
        goto LABEL_69;
      }

      if (v47 <= v46)
      {
        v26 = 0;
        goto LABEL_14;
      }

      if (v46)
      {
        v78 = 997;
      }

      else
      {
        v78 = 996;
      }

      fsck_fail_func(v78, 92);
      *&v107 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
      *(&v107 + 1) = v46;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v26 = sub_100071B30(&v104, v47 - v46, v79, v80, v81, v82, v83, v84);
      if (!v26)
      {
        sub_1000719F8(a1, a2, a3, 2, 0, v99, &v107, &v104, 0, 0);
LABEL_69:
        v26 = v55;
      }

LABEL_14:
      if (!v13)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v98 = 0;
    v46 = 0;
    v47 = v101;
    while (1)
    {
      if (*v12 != v27)
      {
        goto LABEL_21;
      }

      v56 = v12[1];
      v57 = *v13 & 0xFFFFFFFFFFFFFFLL;
      if (v57)
      {
        if (v56 > v46 && v56 < v47)
        {
          v95 = v12[1];
          fsck_printf_err("found file extent gap (id %llu) at logical address %llu (expected %llu)\n", v29, v30, v31, v32, v33, v34, v35, a4);
          fsck_fail_func(0x255, 92);
          v60 = v12[1];
          *&v107 = *v12;
          *(&v107 + 1) = v46;
          v104 = 0;
          v105 = 0;
          v106 = 0;
          v67 = sub_100071B30(&v104, v60 - v46, v61, v62, v63, v64, v65, v66);
          if (v67)
          {
LABEL_70:
            v26 = v67;
            goto LABEL_15;
          }

          sub_1000719F8(a1, a2, a3, 2, 0, v99, &v107, &v104, 0, 0);
          goto LABEL_53;
        }

        if (v56 >= v46 || v56 >= v47)
        {
          if (v56 < v47)
          {
            goto LABEL_54;
          }

          v94 = v12[1];
          if (*(a5 + 36))
          {
            fsck_printf_err("found file extent (id %llu) at logical address %llu beyond the end of the dstream %llu\n", v29, v30, v31, v32, v33, v34, v35, a4);
          }

          else
          {
            fsck_printf_warn("found orphan file extent (id %llu) at logical address %llu\n", v29, v30, v31, v32, v33, v34, v35, a4);
          }

          fsck_fail_func(0x37F, 92);
        }

        else
        {
          v96 = v12[1];
          fsck_printf_err("found file extent overlap (id %llu) at logical address %llu (expected %llu)\n", v29, v30, v31, v32, v33, v34, v35, a4);
          fsck_fail_func(0x354, 92);
          v107 = *v12;
          v104 = 0;
          v105 = 0;
          v106 = 0;
          v102 = 24;
          v103 = 16;
          v68 = tree_lookup(v115, qword_100103AF0, 2u, &v107, &v103, 0x10u, &v104, &v102);
          if (v68 || v103 != 16)
          {
            v75 = *(&v110 + 1);
LABEL_51:
            v76 = v108;
            v67 = sub_100071B30(&v108, v12[1] - v75, v69, v70, v71, v72, v73, v74);
            if (v67)
            {
              goto LABEL_70;
            }

            sub_1000719F8(a1, a2, a3, 1, 10, v99, &v110, &v108, v76 & 0xFFFFFFFFFFFFFFLL, (*(a5 + 40) & 0x40) != 0);
LABEL_53:
            if (v67)
            {
              goto LABEL_70;
            }

LABEL_54:
            v46 = v12[1] + v57;
            v110 = *v12;
            v108 = *v13;
            v109 = v13[2];
            v98 = v57;
            goto LABEL_59;
          }

          v75 = *(&v110 + 1);
          if (v107 != *v12 || *(&v107 + 1) - *(&v110 + 1) != v98)
          {
            goto LABEL_51;
          }
        }

        sub_1000719F8(a1, a2, a3, 0, 0, v99, v12, v13, 0, 0);
      }

      else
      {
        fsck_printf_err("invalid zero-length extent (id %llu) at logical address %llu\n", v29, v30, v31, v32, v33, v34, v35, a4);
        fsck_fail_func(0x31A, 92);
        sub_1000719F8(a1, a2, a3, 0, 0, 1, v12, v13, 0, 0);
      }

      if (v67)
      {
        goto LABEL_70;
      }

LABEL_59:
      v77 = (*(&v111[0] + 1))(v111);
      if (v77)
      {
        v26 = v77;
        v85 = strerror(v77);
        fsck_printf_err("error iterating fsroot tree during dstream repair: %s\n", v86, v87, v88, v89, v90, v91, v92, v85);
        v44 = 796;
        goto LABEL_13;
      }

      v47 = v101;
      if (BYTE8(v112))
      {
        goto LABEL_21;
      }
    }
  }

  v26 = v28;
  v36 = strerror(v28);
  fsck_printf_err("unable to init fsroot tree iterator for dstream repair: %s\n", v37, v38, v39, v40, v41, v42, v43, v36);
LABEL_15:
  free(v13);
LABEL_16:
  if (v12)
  {
    free(v12);
  }

  return v26;
}

char *sub_10007179C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v6) = *(a1 + 36);
  v22 = v6;
  v7 = malloc_type_malloc(8 * (v6 + 1), 0x100004000313F17uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(a1 + 36);
  if (v9)
  {
    if (v9 == 1)
    {
      *v7 = *a1;
      goto LABEL_9;
    }

    if (!sub_10007198C(a2, v7, v9, &v22))
    {
      LODWORD(v6) = v22;
      v9 = *(a1 + 36);
      goto LABEL_9;
    }

    free(v8);
    return 0;
  }

LABEL_9:
  if (v6 > v9)
  {
    v22 = v9;
    LODWORD(v6) = v9;
  }

  *(v8 + v6) = a3;
  if (v6)
  {
    v11 = 0;
    v12 = 1;
    v6 = v6;
    do
    {
      v13 = *(v8 + v11);
      v14 = 1;
      if (v13 >= 0x3E8)
      {
        v15 = *(v8 + v11);
        do
        {
          v13 = v15 / 0x3E8;
          v14 += 3;
          v16 = v15 > 0xF423F;
          v15 /= 0x3E8uLL;
        }

        while (v16);
      }

      if (v13 >= 0xA)
      {
        do
        {
          ++v14;
          v16 = v13 > 0x63;
          v13 /= 0xAuLL;
        }

        while (v16);
      }

      v12 += v14 + 1;
      ++v11;
    }

    while (v11 != v6);
    v10 = malloc_type_malloc(v12, 0xDD739202uLL);
    if (v10)
    {
      v17 = 0;
      v18 = v8;
      while (1)
      {
        v19 = *v18++;
        v20 = snprintf(&v10[v17], v12 - v17, "%llu ", v19);
        if ((v20 & 0x80000000) != 0)
        {
          break;
        }

        v17 += v20;
        if (v17 >= v12)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_27;
        }
      }

      free(v10);
      v10 = 0;
    }
  }

  else
  {
    v10 = malloc_type_malloc(1uLL, 0xDD739202uLL);
  }

LABEL_27:
  free(v8);
  return v10;
}

uint64_t sub_10007198C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  result = clone_mapping_get_file_ids_of_private_id(a1, a2, a3, a4);
  if (result)
  {

    return clonegroup_get_file_ids_of_private_id(a1, a2, a3, a4);
  }

  return result;
}

void sub_1000719F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, unsigned __int8 a10)
{
  if (a3)
  {
    v13 = a5;
    v14 = a4;
    if (!fsck_repairs_add(a3, 7, a4, a5, a6, a7, 0x10u, a8, 0x18u))
    {
      v17 = *(a8 + 8);
      if (v17)
      {
        if (v14)
        {
          if (v14 == 1 && v13 == 10 && !file_extent_unregister(a2, v17, a9 / *(*(a1 + 8) + 36)))
          {
            file_extent_register(a2, *(a8 + 8), (*a8 & 0xFFFFFFFFFFFFFFuLL) / *(*(a1 + 8) + 36), *a7 & 0xFFFFFFFFFFFFFFFLL, a10);
          }
        }

        else
        {
          crypto_unregister_fext(a7, a8);
          if (!v18)
          {
            file_extent_unregister(a2, *(a8 + 8), (*a8 & 0xFFFFFFFFFFFFFFuLL) / *(*(a1 + 8) + 36));
          }
        }
      }
    }
  }

  else
  {

    print_snapshot_warning(a1, a2, 0, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100071B30(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (HIBYTE(a2))
  {
    fsck_printf_err("file extent length %llu does not fit inside %u bits, refusing to repair\n", a2, a3, a4, a5, a6, a7, a8, a2);
    v8 = 92;
    fsck_fail_func(0x37E, 92);
  }

  else
  {
    v8 = 0;
    *a1 = a2 | (*(a1 + 7) << 56);
  }

  return v8;
}

uint64_t extent_is_valid_range_cb(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 8 && a4 == 16)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = *(*(*a5 + 8) + 40);
    if (v10 - v8 >= *a3 && v10 > v8 && v9 >= 1 && v10 > v9)
    {
      v14 = 0;
      a5[1] += v8;
    }

    else
    {
      v16 = a3[1];
      fsck_printf_err("invalid range: 0x%llx+%llu\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    fsck_printf_err("unexpected key (%u) / val (%u) size in extent list tree\n", a2, a3, a4, a5, a6, a7, a8, a2);
    v14 = 92;
    fsck_fail_func(0x218, 92);
  }

  return v14;
}

uint64_t extent_does_not_contain_range_cb(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 8 && a4 == 16)
  {
    v8 = a5[1];
    v9 = a3[1];
    v10 = *a5 - *a3;
    if (v10 > v9 - v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }

    if (v10 < v9 && v9 >= v8)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (*a5 >= *a3)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fsck_printf_err("unexpected key (%u) / val (%u) size in extent list tree\n", a2, a3, a4, a5, a6, a7, a8, a2);
    v14 = 92;
    fsck_fail_func(0x219, 92);
  }

  return v14;
}

uint64_t fsck_spaceman(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  v9 = *(v8 + 32);
  v10 = *(a1 + 8);
  if (v9 != *(v10 + 36))
  {
    fsck_printf_err("spaceman block size %u doesn't match NX superblock block size %u\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 32));
    v33 = 92;
    v34 = 131;
    goto LABEL_40;
  }

  v11 = *(v8 + 48);
  if (v11 != *(v10 + 40))
  {
    fsck_printf_err("spaceman block count %llu doesn't match NX superblock block count %llu\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 48));
    v33 = 92;
    v34 = 132;
    goto LABEL_40;
  }

  v12 = *(v8 + 36);
  if (v12 != 8 * v9)
  {
    fsck_printf_err("spaceman blocks per chunk %u is inconsistent with block size %u\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 36));
    v33 = 92;
    v34 = 133;
    goto LABEL_40;
  }

  if (*(v8 + 40) != (v9 - 40) >> 5)
  {
    fsck_printf_err("spaceman chunks per cib %u is inconsistent with block size %u\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 40));
    v33 = 92;
    v34 = 138;
    goto LABEL_40;
  }

  if (*(v8 + 44) != (v9 - 40) >> 3)
  {
    fsck_printf_err("spaceman cibs per cab %u is inconsistent with block size %u\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 44));
    v33 = 92;
    v34 = 139;
    goto LABEL_40;
  }

  v15 = *(a1 + 96);
  if (*(v8 + 96) || *(v8 + 104) || *(v8 + 112) || *(v8 + 116) || *(v8 + 120))
  {
    fsck_printf_err("spaceman tier2 fields should be empty but they aren't\n", a2, a3, a4, a5, a6, a7, a8, v133);
    fsck_fail_func(0x5C0, -6);
    v11 = *(v8 + 48);
    v12 = *(v8 + 36);
  }

  v16 = *(v8 + 56);
  if (v11 % v12)
  {
    v17 = v11 / v12 + 1;
  }

  else
  {
    v17 = v11 / v12;
  }

  if (v16 != v17)
  {
    fsck_printf_err("spaceman chunk count %llu is inconsistent with block count %llu and blocks per chunk %u\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v33 = 92;
    v34 = 134;
    goto LABEL_40;
  }

  v18 = *(v8 + 64);
  v19 = *(v8 + 40);
  v20 = v16 / v19;
  if (v16 % v19)
  {
    ++v20;
  }

  if (v20 != v18)
  {
    v125 = *(v8 + 56);
    fsck_printf_err("spaceman cib count %u is inconsistent with chunk count %llu and chunks per cib %u\n", a2, a3, a4, a5, a6, a7, a8, v18);
    v33 = 92;
    v34 = 135;
    goto LABEL_40;
  }

  v21 = *(v8 + 44);
  v22 = v18 / v21;
  if (v18 % v21)
  {
    ++v22;
  }

  if (v22 == 1)
  {
    v22 = 0;
  }

  v23 = *(v8 + 68);
  if (v23 != v22)
  {
    v126 = *(v8 + 64);
    fsck_printf_err("spaceman cab count %u is inconsistent with cib count %u and cibs per cab %u\n", a2, a3, a4, a5, a6, a7, a8, v23);
    v33 = 92;
    v34 = 140;
    goto LABEL_40;
  }

  if (*(v8 + 72) > v11)
  {
    fsck_printf_err("spaceman free count is too large: %llu > %llu\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 72));
    fsck_fail_func(0x93, -8);
    v16 = *(v8 + 56);
    v18 = *(v8 + 64);
    v22 = *(v8 + 68);
  }

  v24 = v16 + v18 + v22;
  v25 = *(v8 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v25 != 3 * v24)
  {
    fsck_printf_err("spaceman ip block count is bad: %lld\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 152));
    v33 = 92;
    v34 = 142;
    goto LABEL_40;
  }

  if ((*(v8 + 32) + 8 * ((v25 + 63) >> 6) - 1) / *(v8 + 32) != *(v8 + 160))
  {
    fsck_printf_err("spaceman ip bm block count is bad: %d\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 160));
    v33 = 92;
    v34 = 143;
    goto LABEL_40;
  }

  v139 = a1;
  v140 = 0;
  if (!sub_100072C0C(a1, &v139, a3, a4, a5, a6, a7, a8))
  {
    if (v140 != (*(v8 + 164) & 0x7FFFFFFF))
    {
      fsck_printf_err("spaceman IP bitmap blocks field is %u, but sum of ranges is %llu\n", v26, v27, v28, v29, v30, v31, v32, *(v8 + 164));
      v33 = 92;
      v34 = 576;
      goto LABEL_40;
    }

    v140 = 0;
    if (sub_100072C74(a1, extent_is_valid_range_cb, &v139))
    {
      v131 = *(v8 + 152);
      fsck_printf_err("spaceman IP range is invalid: 0x%llx+0x%llx\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 176));
      v33 = 92;
      v34 = 145;
      goto LABEL_40;
    }

    v133 = v15;
    v43 = *(v8 + 152);
    if ((v43 & 0x7FFFFFFFFFFFFFFFLL) != v140)
    {
      fsck_printf_err("spaceman IP blocks field is %llu, but sum of ranges is %llu\n", v36, v37, v38, v39, v40, v41, v42, v43);
      v33 = 92;
      v34 = 577;
      goto LABEL_40;
    }

    if ((v43 & 0x8000000000000000) == 0)
    {
      v44 = *(v8 + 164);
      if ((v44 & 0x80000000) == 0)
      {
        v45 = *(v8 + 168);
        v46 = *(v8 + 176);
        if (v45 < v46 + v43 && v46 < (v45 + v44))
        {
          v128 = *(v8 + 176);
          fsck_printf_err("spaceman ip bm range (%llu, %llu) overlaps with spaceman ip range (%llu, %llu)\n", v36, v37, v38, v39, v40, v41, v42, v45);
          v33 = 92;
          v34 = 146;
          goto LABEL_40;
        }
      }
    }

    v47 = *(v8 + 184);
    if (v47 > *(*(a1 + 8) + 40))
    {
      fsck_printf_err("spaceman fs_reserve_block_count %llu is greater than nx_block_count %llu\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 184));
      fsck_fail_func(0x2F4, 92);
      v47 = *(v8 + 184);
    }

    if (*(v8 + 192) > v47)
    {
      fsck_printf_warn("spaceman fs_reserve_alloc_count %llu is greater than sm_fs_reserve_block_count %llu\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 192));
      fsck_fail_func(0x2F5, -7);
    }

    if ((*(v8 + 144) & 1) == 0)
    {
      v48 = 336;
LABEL_106:
      LODWORD(__base) = 0;
      DWORD1(__base) = v48;
      v68 = *(v8 + 160);
      v69 = *(v8 + 164);
      DWORD2(__base) = *(v8 + 324);
      HIDWORD(__base) = 8 * v68;
      LODWORD(v142) = *(v8 + 328);
      DWORD1(v142) = 2 * v68;
      DWORD2(v142) = *(v8 + 332);
      HIDWORD(v142) = 2 * v69;
      LODWORD(v143) = *(v8 + 80);
      v70 = *(v8 + 68);
      if (!v70)
      {
        v70 = *(v8 + 64);
      }

      DWORD1(v143) = 8 * v70;
      qsort(&__base, 5uLL, 8uLL, sub_100072CDC);
      for (i = 0; i != 40; i += 8)
      {
        v80 = *(&__base + i);
        v81 = *(&__base + i + 4);
        if (v133 < v80 || v81 > v133 - v80)
        {
          v127 = *(&__base + i + 4);
          fsck_printf_err("spaceman struct range %u+%u lies outside the struct itself (size %u)\n", v72, v73, v74, v75, v76, v77, v78, v80);
          v84 = 92;
          v85 = 578;
          goto LABEL_125;
        }

        if (i == 32)
        {
          break;
        }

        if (v81 > *(&__base + i + 8) - v80)
        {
          v129 = *(&__base + i + 8);
          v132 = *(&__base + i + 12);
          fsck_printf_err("spaceman struct ranges %u+%u and %u+%u overlap\n", v72, v73, v74, v75, v76, v77, v78, v80);
          v84 = 92;
          v85 = 579;
          goto LABEL_125;
        }
      }

      v83 = *(v8 + 322);
      if (*(v8 + 320) == 0xFFFF)
      {
        if (v83 != 0xFFFF)
        {
          goto LABEL_122;
        }
      }

      else if (v83 == 0xFFFF)
      {
LABEL_122:
        fsck_printf_err("spaceman sm_ip_bm_free_head %u and sm_ip_bm_free_tail %u do not point to a valid list\n", v72, v73, v74, v75, v76, v77, v78, *(v8 + 320));
        v84 = 92;
        v85 = 760;
LABEL_125:
        fsck_fail_func(v85, 92);
        return v84;
      }

      v86 = *(v8 + 164);
      if ((v86 & 0x7FFF0000) != 0)
      {
        fsck_printf_err("spaceman sm_ip_bm_block_count %u is too large\n", v72, v73, v74, v75, v76, v77, v78, *(v8 + 164));
        v84 = 92;
        v85 = 778;
        goto LABEL_125;
      }

      v137 = &v133;
      v87 = v8 + *(v8 + 332);
      v88 = 2 * v86;
      __chkstk_darwin(v71);
      v90 = &v133 - v89;
      bzero(&v133 - v89, v88);
      bzero(v90, v88);
      v98 = *(v8 + 320);
      do
      {
        if (v98 == 0xFFFF)
        {
          goto LABEL_133;
        }

        v99 = v98;
        if ((*(v8 + 164) & 0x7FFFFFFFu) <= v98)
        {
          fsck_printf_err("spaceman sm_ip_bm_free_next index %u does not lie in ip bm range\n", v91, v92, v93, v94, v95, v96, v97, v98);
          v84 = 92;
          v124 = 764;
          goto LABEL_162;
        }

        if (*&v90[2 * v98] == 2)
        {
          fsck_printf_err("spaceman ip bm list has a loop\n", v91, v92, v93, v94, v95, v96, v97, v133);
          v84 = 92;
          v124 = 765;
          goto LABEL_162;
        }

        *&v90[2 * v98] = 2;
        v98 = *(v87 + 2 * v98);
      }

      while (v98 != 0xFFFF);
      if (*(v8 + 322) != v99)
      {
        fsck_printf_err("spaceman sm_ip_bm_free_tail %u does not point to the last index on the free list %u\n", v91, v92, v93, v94, v95, v96, v97, *(v8 + 322));
        v84 = 92;
        v124 = 761;
LABEL_162:
        fsck_fail_func(v124, 92);
        return v84;
      }

LABEL_133:
      v100 = *(v8 + 160);
      if (v100)
      {
        v101 = 0;
        v102 = v8 + *(v8 + 324);
        v103 = v8 + *(v8 + 328);
        v84 = 92;
        while (1)
        {
          if (*(v102 + 8 * v101) > *(v8 + 16))
          {
            fsck_printf_err("spaceman ip bitmap block xid is invalid: %llu > %llu\n", v91, v92, v93, v94, v95, v96, v97, *(v102 + 8 * v101));
            v84 = 92;
            v124 = 149;
            goto LABEL_162;
          }

          v104 = *(v103 + 2 * v101);
          if ((*(v8 + 164) & 0x7FFFFFFFu) <= v104)
          {
            fsck_printf_err("spaceman ip bitmap block address is invalid: %hu > %u\n", v91, v92, v93, v94, v95, v96, v97, *(v103 + 2 * v101));
            v84 = 92;
            v124 = 150;
            goto LABEL_162;
          }

          v105 = *&v90[2 * *(v103 + 2 * v101)];
          if (v105 == 1)
          {
            break;
          }

          if (v105 == 2)
          {
            fsck_printf_err("spaceman ip bitmap %u at index %u was on the free list\n", v91, v92, v93, v94, v95, v96, v97, *(v103 + 2 * v101));
            v84 = 92;
            v124 = 770;
            goto LABEL_162;
          }

          if (*(v87 + 2 * v104) != -1)
          {
            fsck_printf_err("spaceman ip bitmap %u at index %u is not invalidated on the free list\n", v91, v92, v93, v94, v95, v96, v97, *(v103 + 2 * v101));
            fsck_fail_func(0x30B, 92);
            if (!fsckAskPrompt(fsck_apfs_ctx, "Invalidate spaceman ip bm free list at index at index %u? ", v106, v107, v108, v109, v110, v111, *(v103 + 2 * v101)))
            {
              return v84;
            }

            *(v87 + 2 * *(v103 + 2 * v101)) = -1;
            *a2 = 1;
            v100 = *(v8 + 160);
            v104 = *(v103 + 2 * v101);
          }

          *&v90[2 * v104] = 1;
          if (++v101 >= v100)
          {
            goto LABEL_143;
          }
        }

        fsck_printf_err("spaceman ip bitmap %u at index %u was referenced by a previous entry in sm_ip_bitmap \n", v91, v92, v93, v94, v95, v96, v97, *(v103 + 2 * v101));
        v84 = 92;
        v124 = 780;
        goto LABEL_162;
      }

LABEL_143:
      v112 = *(v8 + 164) & 0x7FFFFFFF;
      if (v112)
      {
        v113 = 0;
        while (*&v90[2 * v113])
        {
          if (v112 == ++v113)
          {
            goto LABEL_147;
          }
        }

        fsck_printf_err("spaceman ip bitmap block at index [%u] is neither on the sm_ip_bitmap[] nor on the free list\n", v91, v92, v93, v94, v95, v96, v97, v113);
        v84 = 92;
        v124 = 773;
        goto LABEL_162;
      }

LABEL_147:
      v114 = *(v8 + 80);
      v138 = 0;
      v115 = *(v8 + 68);
      if (v115)
      {
        v116 = sub_100072CF4(a1, v8 + v114, v115, &v138, v94, v95, v96, v97);
        if (v116)
        {
          return v116;
        }
      }

      else
      {
        v116 = sub_100072EDC(a1, v8 + v114, v115, *(v8 + 64), &v138, v95, v96, v97);
        if (v116)
        {
          return v116;
        }
      }

      if (v138 != *(v8 + 72))
      {
        fsck_printf_warn("spaceman free count %llu does not match sum of free counts %llu\n", v117, v118, v119, v120, v121, v122, v123, *(v8 + 72));
        fsck_fail_func(0x24C, -7);
      }

      return 0;
    }

    v49 = *(v8 + 336);
    if (v49 == 1)
    {
      if (*(v8 + 340) != 2520)
      {
        fsck_printf_err("unexpected spaceman struct size %u != %u\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 340));
        v33 = 92;
        v34 = 603;
        goto LABEL_40;
      }
    }

    else
    {
      if (!v49)
      {
        fsck_printf_err("spaceman struct is versioned but version is 0\n", v36, v37, v38, v39, v40, v41, v42, v133);
        v33 = 92;
        v34 = 602;
        goto LABEL_40;
      }

      fsck_printf_warn("unknown spaceman struct version %u > %u\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 336));
    }

    v50 = 0;
    v134 = v8 + 344;
    v137 = (v8 + 608);
    v136 = -7;
    while (1)
    {
      v51 = (v134 + 136 * v50);
      __base = *v51;
      v146 = v51[5];
      v147 = v51[6];
      v148 = v51[7];
      v149 = *(v51 + 16);
      v142 = v51[1];
      v143 = v51[2];
      v144 = v51[3];
      v145 = v51[4];
      v52 = __base != 0;
      if (__base != 0)
      {
        v53 = *(&__base + 1) - __base;
        if (*(&__base + 1) < __base || (__base & 0x8000000000000000) != 0 || (v54 = *(v8 + 48), v54 <= __base) || v54 <= v53 || v54 - v53 < __base)
        {
          fsck_printf_warn("spaceman datazone current boundaries (%llu -> %llu) is not a valid address range on disk\n", v36, v37, v38, v39, v40, v41, v42, __base);
          fsck_fail_func(0x3BA, -7);
        }
      }

      v55 = 0;
      v56 = 0;
      do
      {
        v57 = *(&__base + v55 + 16);
        v58 = *(&v142 + v55 + 8);
        v59 = *(&__base + v55 + 16) != 0;
        if (*(&__base + v55 + 16) != 0)
        {
          if ((v60 = v58 - v57, v58 < v57) || (v57 & 0x8000000000000000) != 0 || ((v61 = *(v8 + 48), v61 > v57) ? (v62 = v61 > v60) : (v62 = 0), v62 ? (v63 = v61 - v60 >= v57) : (v63 = 0), !v63))
          {
            fsck_printf_warn("spaceman datazone previous boundaries (%llu -> %llu) is not a valid address range on disk\n", v36, v37, v38, v39, v40, v41, v42, *(&__base + v55 + 16));
            fsck_fail_func(0x3BB, -7);
          }
        }

        v56 |= v59;
        v55 += 16;
      }

      while (v55 != 112);
      v64 = v149;
      if (v149 > 4u)
      {
        break;
      }

      if (v149)
      {
        goto LABEL_90;
      }

      if (v52 || v56 & 1 | (WORD1(v149) != 0))
      {
        fsck_printf_warn("spaceman datazone zone id is zero but other fields are initialized\n", v36, v37, v38, v39, v40, v41, v42, v133);
        fsck_fail_func(0x3BD, 92);
        v65 = 1;
        goto LABEL_91;
      }

      v65 = 1;
LABEL_93:
      v135 = v50;
      if (v50 <= 6)
      {
        v66 = v137;
        v67 = v136;
        do
        {
          if ((v65 & 1) == 0 && v64 == *v66)
          {
            fsck_printf_warn("spaceman datazone duplicate zone id (%hu) for allocation zones at indices (%hu, %hu)\n", v36, v37, v38, v39, v40, v41, v42, v64);
            fsck_fail_func(0x3BF, -2);
          }

          v66 += 68;
          v63 = __CFADD__(v67++, 1);
        }

        while (!v63);
      }

      v50 = v135 + 1;
      ++v136;
      v137 += 68;
      if (v135 == 7)
      {
        v48 = 2520;
        goto LABEL_106;
      }
    }

    fsck_printf_warn("spaceman datazone unknown zone id (%hu)\n", v36, v37, v38, v39, v40, v41, v42, v149);
    fsck_fail_func(0x3BC, -2);
LABEL_90:
    v65 = 0;
LABEL_91:
    if (WORD1(v149) >= 7u)
    {
      fsck_printf_warn("spaceman datazone invalid previous boundary index (%hu)\n", v36, v37, v38, v39, v40, v41, v42, SBYTE2(v149));
      fsck_fail_func(0x3BE, -2);
    }

    goto LABEL_93;
  }

  v130 = *(v8 + 164);
  fsck_printf_err("spaceman IP bitmap range is invalid: 0x%llx+0x%x\n", v26, v27, v28, v29, v30, v31, v32, *(v8 + 168));
  v33 = 92;
  v34 = 144;
LABEL_40:
  fsck_fail_func(v34, 92);
  return v33;
}

uint64_t sub_100072C0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24);
  v11 = *(v10 + 164);
  v12 = *(v10 + 168);
  if ((v11 & 0x80000000) != 0)
  {

    return extent_list_tree_iterate(a1, v12, extent_is_valid_range_cb, a2);
  }

  else
  {
    v14[0] = *(v10 + 168);
    v14[1] = v11;
    return extent_is_valid_range_cb(a1, 8, v14, 16, a2, a6, a7, a8);
  }
}

uint64_t sub_100072C74(uint64_t a1, uint64_t (*a2)(void *, uint64_t, void *, uint64_t, uint64_t), uint64_t a3)
{
  v5 = *(a1 + 24);
  v6 = *(v5 + 152);
  v7 = *(v5 + 176);
  if (v6 < 0)
  {

    return extent_list_tree_iterate(a1, v7, a2, a3);
  }

  else
  {
    v10 = 0;
    v9[0] = v7;
    v9[1] = v6;
    return a2(&v10, 8, v9, 16, a3);
  }
}

uint64_t sub_100072CDC(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t sub_100072CF4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[3];
  v39 = 0;
  if (!a3)
  {
    return 0;
  }

  v12 = 0;
  v13 = v8[16];
  v14 = v8[17] - 1;
  v15 = a3;
  while (1)
  {
    v16 = *(a2 + 8 * v12);
    v40[0] = v16;
    v40[1] = 1;
    v17 = a1[3];
    v18 = *(v17 + 152);
    v19 = *(v17 + 176);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v33 = extent_list_tree_iterate(a1, v19, extent_does_not_contain_range_cb, v40);
      v16 = *(a2 + 8 * v12);
      if (v33 != -1)
      {
        goto LABEL_9;
      }
    }

    else if (v16 < v19 || v16 - v19 >= v18)
    {
LABEL_9:
      fsck_printf_warn("spaceman cab %u address 0x%llx is not in the internal pool\n", v19, a3, v16, a5, a6, a7, a8, v12);
      fsck_fail_func(0x38C, -7);
      v16 = *(a2 + 8 * v12);
    }

    v21 = copy_obj(a1, 0, 0x40000000, v16, 0, 0, 6, 0, &v39, 0, 1);
    if (v21)
    {
      v34 = v21;
      v37 = *(a2 + 8 * v12);
      fsck_printf_err("failed to read spaceman cab %u at address 0x%llx\n", v22, v23, v24, v25, v26, v27, v28, v12);
      return v34;
    }

    v29 = *(v39 + 8);
    if (v12 != v29)
    {
      fsck_printf_err("spaceman cab out of order: %u, expected %u\n", v22, v23, v24, v25, v26, v27, v28, *(v39 + 8));
      v35 = 586;
LABEL_25:
      v34 = 92;
      fsck_fail_func(v35, 92);
      goto LABEL_27;
    }

    v30 = v8[11];
    if (v29 == v14)
    {
      v31 = v13 - v30 * v14;
    }

    else
    {
      v31 = v30;
    }

    if (*(v39 + 9) != v31)
    {
      v38 = *(v39 + 9);
      fsck_printf_err("spaceman cab %u wrong number of cibs: %u, expected %u\n", v22, v23, v31, v25, v26, v27, v28, v29);
      v35 = 587;
      goto LABEL_25;
    }

    v32 = sub_100072EDC(a1, v39 + 40, v30 * v29, v31, a4, v26, v27, v28);
    if (v32)
    {
      break;
    }

    free(v39);
    v39 = 0;
    if (v15 == ++v12)
    {
      return 0;
    }
  }

  v34 = v32;
LABEL_27:
  if (v39)
  {
    free(v39);
  }

  return v34;
}

uint64_t sub_100072EDC(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[3];
  v84 = 0;
  if (!a4)
  {
    return 0;
  }

  v9 = a3;
  v10 = a2;
  v12 = 0;
  v13 = v8[16] - 1;
  v14 = v8[14];
  v77 = a4;
  v81 = a3;
  v75 = a3;
  v74 = v8;
  v78 = v14;
  v79 = v13;
  while (1)
  {
    v15 = *(v10 + 8 * v12);
    v85 = v15;
    v86 = 1;
    v16 = a1[3];
    v17 = *(v16 + 152);
    v18 = *(v16 + 176);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v62 = extent_list_tree_iterate(a1, v18, extent_does_not_contain_range_cb, &v85);
      v15 = *(v10 + 8 * v12);
      if (v62 != -1)
      {
        goto LABEL_9;
      }
    }

    else if (v15 < v18 || v15 - v18 >= v17)
    {
LABEL_9:
      fsck_printf_warn("spaceman cib %u address 0x%llx is not in the internal pool\n", v18, a3, v15, a5, a6, a7, a8, v12 + v9);
      fsck_fail_func(0x38B, -7);
      v15 = *(v10 + 8 * v12);
    }

    v20 = copy_obj(a1, 0, 0x40000000, v15, 0, 0, 7, 0, &v84, 0, 1);
    if (v20)
    {
      v63 = v20;
      v72 = *(v10 + 8 * v12);
      fsck_printf_err("failed to read spaceman cib %u at address 0x%llx\n", v21, v22, v23, v24, v25, v26, v27, v12 + v9);
      return v63;
    }

    v28 = v84;
    if (*(v84 + 8) != v12 + v9)
    {
      break;
    }

    v29 = v8[10];
    if (v12 + v9 == v13)
    {
      v30 = v14 - v29 * v13;
    }

    else
    {
      v30 = v29;
    }

    if (*(v84 + 9) != v30)
    {
      v73 = *(v84 + 9);
      fsck_printf_err("spaceman cib %u wrong number of chunks: %u, expected %u\n", v21, v22, v23, v24, v25, v26, v27, v12 + v9);
      v63 = 92;
      v64 = 585;
      goto LABEL_63;
    }

    if (v30)
    {
      v31 = a1[3];
      v32 = *(v31 + 48);
      v83 = *(v31 + 56) - 1;
      v33 = (v84 + 64);
      v34 = v29 * v81;
      v80 = v12;
      while (1)
      {
        if (*(v33 - 3) > *(v31 + 16))
        {
          v69 = *(v33 - 3);
          fsck_printf_err("spaceman chunk %llu xid is invalid: %llu > %llu\n", v21, v22, v23, v24, v25, v26, v27, v34);
          v63 = 92;
          v64 = 580;
          goto LABEL_63;
        }

        v21 = *v33;
        if (*v33)
        {
          v85 = *v33;
          v86 = 1;
          v35 = a1[3];
          v36 = *(v35 + 152);
          v37 = *(v35 + 176);
          if ((v36 & 0x8000000000000000) == 0)
          {
            v38 = __OFSUB__(v21, v37);
            v39 = v21 - v37;
            if (v39 < 0 != v38 || v39 >= v36)
            {
LABEL_27:
              fsck_printf_warn("spaceman chunk %llu bitmap address 0x%llx is not in the internal pool\n", v21, v22, v23, v24, v25, v26, v27, v34);
              fsck_fail_func(0x389, -7);
              goto LABEL_30;
            }

LABEL_29:
            mark_object_allocated(a1, v21, 1uLL, 0, 0x40000000, v21, 0, 8, 0, 8u);
            goto LABEL_30;
          }

          v41 = extent_list_tree_iterate(a1, v37, extent_does_not_contain_range_cb, &v85);
          v21 = *v33;
          if (v41 != -1)
          {
            goto LABEL_27;
          }

          if (v21)
          {
            goto LABEL_29;
          }
        }

LABEL_30:
        v42 = *(v31 + 36);
        v43 = v34 * v42;
        if (*(v33 - 2) != v34 * v42)
        {
          v70 = *(v33 - 2);
          fsck_printf_err("spaceman chunk %llu disk address out of order: 0x%llx, expected 0x%llx\n", v21, v22, v23, v24, v25, v26, v27, v34);
          v63 = 92;
          v64 = 581;
          goto LABEL_63;
        }

        if (v83 == v34)
        {
          v44 = (v32 - v43);
        }

        else
        {
          v44 = v42;
        }

        if ((*(v33 - 1) & 0xFFFFF) != v44)
        {
          v71 = *(v33 - 1) & 0xFFFFF;
          fsck_printf_err("spaceman chunk %llu wrong number of blocks: %u, expected %u\n", v21, v22, v23, v24, v25, v26, v27, v34);
          v63 = 92;
          v64 = 582;
          goto LABEL_63;
        }

        v45 = *(v33 - 1) & 0xFFFFF;
        if (v45 > v44)
        {
          v66 = *(v33 - 1) & 0xFFFFF;
          fsck_printf_warn("spaceman chunk %llu free count %u > block count %u\n", v21, v22, v23, v24, v25, v26, v27, v34);
          fsck_fail_func(0x247, -7);
          goto LABEL_50;
        }

        v46 = a1[1];
        v23 = *(v46 + 1248);
        if (!v23)
        {
          *a5 += v45;
          goto LABEL_50;
        }

        v47 = v32;
        v85 = 0;
        v48 = calc_overlap_range(v43, v44, *(v46 + 1240), v23, &v85);
        if (!v48)
        {
          v59 = *(v33 - 1) & 0xFFFFF;
          v60 = a5;
          v61 = *a5;
LABEL_48:
          *v60 = v61 + v59;
          goto LABEL_49;
        }

        v49 = v48;
        if (v48 < (*(v33 - 1) & 0xFFFFFu))
        {
          v23 = *v33;
          if (*v33)
          {
            v87 = 0;
            v50 = copy_obj(a1, 0, 0x40000000, v23, 0, 0x20000000, 8, 0, &v87, 0, 0);
            if (v50)
            {
              v63 = v50;
              goto LABEL_64;
            }

            v58 = bitmap_count_bits(v87, 0, 0, *(v33 - 1) & 0xFFFFF);
            if ((*(v33 - 1) & 0xFFFFF) != v58)
            {
              v67 = *(v33 - 1) & 0xFFFFF;
              fsck_printf_warn("spaceman chunk %llu wrong free count: %u, expected %u\n", v51, v52, v53, v54, v55, v56, v57, v34);
              fsck_fail_func(0x388, -7);
            }

            *a5 = *a5 + v58 - bitmap_count_bits(v87, 0, v85 - v43, v85 - v43 + v49);
            free(v87);
            goto LABEL_49;
          }

          v59 = *(v33 - 1) & 0xFFFFF;
          v60 = a5;
          v61 = *a5 - v48;
          goto LABEL_48;
        }

LABEL_49:
        v32 = v47;
        v12 = v80;
LABEL_50:
        if (!*v33 && (*(v33 - 1) & 0xFFFFF) != v44)
        {
          v68 = *(v33 - 1) & 0xFFFFF;
          fsck_printf_warn("spaceman chunk %llu free count %u of unallocated bitmap != block count %u\n", v21, v22, v23, v24, v25, v26, v27, v34);
          fsck_fail_func(0x38A, -7);
        }

        v33 += 4;
        ++v34;
        if (!--v30)
        {
          v28 = v84;
          v10 = a2;
          v9 = v75;
          v8 = v74;
          break;
        }
      }
    }

    free(v28);
    v84 = 0;
    ++v12;
    ++v81;
    v14 = v78;
    v13 = v79;
    if (v12 == v77)
    {
      return 0;
    }
  }

  fsck_printf_err("spaceman cib out of order: %u, expected %u\n", v21, v22, v23, v24, v25, v26, v27, *(v84 + 8));
  v63 = 92;
  v64 = 584;
LABEL_63:
  fsck_fail_func(v64, 92);
LABEL_64:
  if (v84)
  {
    free(v84);
  }

  return v63;
}

uint64_t fsck_spaceman_with_context(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24);
  if (*(v10 + 184) != *a2)
  {
    v26 = *(v10 + 184);
    fsck_printf_warn("sm_fs_reserve_block_count is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *a2);
    fsck_fail_func(0x446, -7);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix sm_fs_reserve_block_count? ", v11, v12, v13, v14, v15, v16, v24))
    {
      *(v10 + 184) = *a2;
      *a3 = 1;
    }
  }

  if (*(v10 + 192) != a2[1])
  {
    v27 = *(v10 + 192);
    fsck_printf_warn("sm_fs_reserve_alloc_count is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, a2[1]);
    fsck_fail_func(0x447, -7);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix sm_fs_reserve_alloc_count? ", v17, v18, v19, v20, v21, v22, v25))
    {
      *(v10 + 192) = a2[1];
      *a3 = 1;
    }
  }

  return 0;
}

uint64_t fsck_spaceman_free_queue_trees(uint64_t *a1, _DWORD *a2)
{
  v4 = 0;
  v5 = a1[3];
  v36[0] = 0;
  for (i = (v5 + 216); !*(i - 1); i += 5)
  {
LABEL_17:
    if (++v4 == 3)
    {
      return 0;
    }
  }

  v35 = 0;
  LOBYTE(v36[0]) = v4 == 0;
  v36[2] = 0;
  v37 = 0;
  v36[1] = 0;
  v38 = -1;
  spaceman_fq_tree = get_spaceman_fq_tree(a1, v4, &v35);
  if (spaceman_fq_tree || (spaceman_fq_tree = fsck_tree(v35, 0, sub_100073740, v36, 0, 0), spaceman_fq_tree))
  {
    v30 = spaceman_fq_tree;
    fsck_printf_err("Spaceman free queue tree of type [%d] is invalid\n", v8, v9, v10, v11, v12, v13, v14, v4);
    return v30;
  }

  v15 = *(i - 2);
  if (LOBYTE(v36[0]) != 1 || v15 <= (*(v5 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
  {
    if (v15 != v37)
    {
      v16 = "main";
      if (!v4)
      {
        v16 = "IP";
      }

      v32 = *(i - 2);
      fsck_printf_warn("Spaceman free queue tree of type [%s] has sfq_count (%llu) mismatch with cumulative counts in the tree (%llu)\n", v8, v9, v10, v11, v12, v13, v14, v16);
      fsck_fail_func(0x2F7, 92);
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix spaceman free queue tree sfq_count (oid 0x%llx)? ", v17, v18, v19, v20, v21, v22, *(i - 1)))
      {
        *(i - 2) = v37;
        *a2 = 1;
      }
    }

    if (*i > v38)
    {
      v23 = "main";
      if (!v4)
      {
        v23 = "IP";
      }

      v33 = *i;
      fsck_printf_warn("Spaceman free queue tree of type [%s] has sfq_oldest_xid (%llu) greater than the oldest xid in the free tree (%llu)\n", v8, v9, v10, v11, v12, v13, v14, v23);
      fsck_fail_func(0x30D, 92);
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix spaceman free queue tree sfq_oldest_xid (oid 0x%llx)? ", v24, v25, v26, v27, v28, v29, *(i - 1)))
      {
        *i = v38;
        *a2 = 1;
      }
    }

    goto LABEL_17;
  }

  v34 = *(v5 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  fsck_printf_err("Spaceman IP free queue tree has sfq_count (%llu) greater than IP block count (%llu)\n", v8, v9, v10, v11, v12, v13, v14, *(i - 2));
  v30 = 92;
  fsck_fail_func(0x2F6, 92);
  return v30;
}

uint64_t sub_100073740(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a3;
  v9 = a3[1];
  if (a5)
  {
    v11 = *a5;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 1;
    if (!v10)
    {
LABEL_6:
      v28 = *a3;
      fsck_printf_err("sfqe_key : (paddr 0x%llx, xid 0x%llx) : invalid xid\n", a2, a3, a4, a5, a6, a7, a8, a3[1]);
      v13 = 92;
      v14 = 752;
LABEL_7:
      fsck_fail_func(v14, 92);
      return v13;
    }
  }

  v12 = *(a1 + 24);
  if (v10 > v12[2])
  {
    goto LABEL_6;
  }

  if (*a7 != 1)
  {
    v20 = *(*(a1 + 8) + 40);
    if (v20 <= v11 || v9 < 1 || v20 <= v9 || v20 - v11 < v9)
    {
      v29 = *a3;
      fsck_printf_err("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : Range in free queue tree is not a valid address range on disk\n", a2, a3, a4, a5, a6, a7, a8, v9);
      v13 = 92;
      v14 = 754;
      goto LABEL_7;
    }

    v31 = a3[1];
    v32 = v11;
    v24 = v12[19];
    v17 = v12[22];
    if ((v24 & 0x8000000000000000) != 0)
    {
      if (extent_list_tree_iterate(a1, v17, extent_does_not_contain_range_cb, &v31) != -1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v25 = v9 - v17;
      if (v9 < v17)
      {
        goto LABEL_40;
      }

      v26 = v24 < v11 || v25 >= v24;
      if (v26 || v25 > v24 - v11)
      {
        goto LABEL_40;
      }
    }

    fsck_printf_err("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : Range in free queue tree lies in the internal pool\n", v17, a3, a4, a5, a6, a7, a8, v9);
    v13 = 92;
    v14 = 784;
    goto LABEL_7;
  }

  v31 = a3[1];
  v32 = v11;
  v16 = v12[19];
  v17 = v12[22];
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = v9 - v17;
    if (v9 >= v17)
    {
      v19 = v16 < v11 || v18 >= v16;
      if (!v19 && v18 <= v16 - v11)
      {
        goto LABEL_40;
      }
    }

LABEL_38:
    fsck_printf_err("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : Range in ip free queue tree does not lie in the internal pool\n", v17, a3, a4, a5, a6, a7, a8, v9);
    v13 = 92;
    v14 = 753;
    goto LABEL_7;
  }

  if (extent_list_tree_iterate(a1, v17, extent_does_not_contain_range_cb, &v31) != -1)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (*(a7 + 8) == v10 && v9 < *(a7 + 16))
  {
    v30 = *(a7 + 16);
    fsck_printf_warn("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : key out of order (last paddr 0x%llx, last xid 0x%llx)\n", v17, a3, a4, a5, a6, a7, a8, v9);
    fsck_fail_func(0x2F3, -7);
  }

  *(a7 + 8) = v10;
  *(a7 + 16) = v11 + v9;
  v27 = *(a7 + 32);
  *(a7 + 24) += v11;
  v13 = 0;
  if (v27 > v10)
  {
    *(a7 + 32) = v10;
  }

  return v13;
}

uint64_t uint32_key_compare(uint64_t a1, _DWORD *a2, int a3, _DWORD *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 4 && a5 == 4)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t uint64_key_compare(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t double_uint64_key_compare(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t write_nx_superblock(uint64_t *a1, double a2, int8x16_t a3)
{
  v4 = a1[1];
  v5 = *(v4 + 36);
  v13.i64[0] = 0;
  v14 = 0;
  v13.i64[1] = v5;
  v6 = *(v4 + 104);
  v7 = (*(v4 + 140) + *(v4 + 136) - 1) % (v6 & 0x7FFFFFFFu);
  v8 = *(v4 + 112);
  if (v6 < 0)
  {
    result = nx_metadata_fragmented_block_address_lookup(a1, v8, v7, &v13, 0);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v13.i64[0] = v8 + v7;
  }

  v11 = v13;
  v12 = v14;
  result = write_obj(a1, 0, v4, &v11, v13, a3);
  if (!result)
  {
    v13.i64[0] = 0;
    v11 = v13;
    v12 = v14;
    return write_obj(a1, 0, v4, &v11, v13, v10);
  }

  return result;
}

uint64_t _xp_lookup_obj(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v5 = a1[1];
  v6 = v5[9];
  if (!v6)
  {
    sub_100073F2C();
  }

  v12 = malloc_type_malloc(v5[9], 0x96FA381CuLL);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  if (v5[35] == 1)
  {
    v14 = 0;
    v15 = 0;
LABEL_5:
    v16 = 2 * (v15 == v14);
  }

  else
  {
    v15 = 0;
    *&v28[8] = 0;
    v17 = (v6 - 40) / 0x28uLL;
    *v28 = a3 | a4 | 0x80000000;
    while (1)
    {
      v18 = (v5[34] + v15) % (v5[26] & 0x7FFFFFFF);
      v19 = a1[1];
      v20 = *(v19 + 104);
      if ((v20 & 0x7FFFFFFFu) <= v18)
      {
        break;
      }

      v21 = *(v19 + 112);
      if (v20 < 0)
      {
        v22 = nx_metadata_fragmented_block_address_lookup(a1, v21, v18, &v28[4], 0);
        if (v22)
        {
          goto LABEL_28;
        }
      }

      else
      {
        *&v28[4] = v21 + v18;
      }

      v22 = dev_read(*a1);
      if (v22)
      {
LABEL_28:
        v16 = v22;
        goto LABEL_30;
      }

      if (v13[6] != 1073741836)
      {
        goto LABEL_27;
      }

      v23 = v13[9];
      if (v17 < v23)
      {
        goto LABEL_27;
      }

      if (v23)
      {
        v24 = 0;
        v25 = v13 + 18;
        while (*(v25 - 1) != a2)
        {
          ++v24;
          v25 += 5;
          if (v23 == v24)
          {
            goto LABEL_19;
          }
        }

        if (a4 && *(v25 - 8) != *v28)
        {
LABEL_27:
          v16 = 92;
          goto LABEL_30;
        }

        if (a5)
        {
          *a5 = *v25;
          *(a5 + 8) = *(v25 - 6);
          LODWORD(v23) = v13[9];
        }

        v26 = v5[35];
        if (v23 > v24)
        {
LABEL_26:
          v14 = v26 - 1;
          goto LABEL_5;
        }
      }

      else
      {
LABEL_19:
        v26 = v5[35];
      }

      if (++v15 >= v26 - 1)
      {
        goto LABEL_26;
      }
    }

    v16 = 22;
  }

LABEL_30:
  free(v13);
  return v16;
}

uint64_t extent_list_tree_iterate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void, uint64_t), uint64_t a4)
{
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  result = tree_init_ext(v11, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, a2, uint64_key_compare);
  if (!result)
  {
    result = tree_iterator_init(v9, v11, 0, &v8, 8u, 8u, v7, 16);
    if (!result)
    {
      return fsck_iterate(v9, a3, a4, 0);
    }
  }

  return result;
}

uint64_t fsck_blockcopy(uint64_t *a1, char a2, char a3, unint64_t a4)
{
  v4 = a4;
  if (*(a1[1] + 36) * a4 >= 0x100000)
  {
    v8 = 0x100000;
  }

  else
  {
    v8 = *(a1[1] + 36) * a4;
  }

  v9 = malloc_type_malloc(v8, 0xA5FFDFFBuLL);
  if (v9)
  {
    v17 = v9;
    if (v4)
    {
      v18 = v8 / *(a1[1] + 36);
      while (1)
      {
        if (v4 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v4;
        }

        v20 = fsck_dev_raw_read(*a1);
        if (v20)
        {
          v22 = v20;
          strerror(v20);
          fsck_printf_err("blockcopy: unable to read paddr 0x%llx block_count 0x%llx: %s\n", v23, v24, v25, v26, v27, v28, v29, a2);
          v30 = 611;
          goto LABEL_17;
        }

        v21 = fsck_dev_raw_write(*a1);
        if (v21)
        {
          break;
        }

        a2 += v19;
        a3 += v19;
        v4 -= v19;
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      v22 = v21;
      strerror(v21);
      fsck_printf_err("blockcopy: unable to write paddr 0x%llx block_count 0x%llx: %s\n", v31, v32, v33, v34, v35, v36, v37, a3);
      v30 = 612;
LABEL_17:
      fsck_fail_func(v30, v22);
    }

    else
    {
LABEL_13:
      v22 = 0;
    }

    free(v17);
  }

  else
  {
    fsck_printf_err("blockcopy: unable to allocate memory for buffer_size 0x%zx.\n", v10, v11, v12, v13, v14, v15, v16, v8);
    v22 = 12;
    fsck_fail_func(0x262, 12);
  }

  return v22;
}

uint64_t spaceman_free_tree_key_compare(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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
        if (v8 >= v9)
        {
          v7 = v9 < v8;
        }

        else
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

uint64_t spaceman_metazone_iterate(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v6 = 3;
  for (i = spaceman_metazone; ; i += 4)
  {
    sub_1000750E0(a1);
    if (*(i + 24) == 1)
    {
      v8 = i[1];
      if (v8 != *i)
      {
        result = a2(*i, v8 - *i, a3);
        if (result)
        {
          break;
        }
      }
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t spaceman_datazone_iterate(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 24);
  if ((*(v2 + 144) & 1) == 0 || !*(v2 + 336))
  {
    return 0;
  }

  v4 = (v2 + 352);
  v5 = 8;
  while (1)
  {
    if (*v4 != *(v4 - 1))
    {
      result = a2();
      if (result)
      {
        break;
      }
    }

    v4 += 17;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t fsck_allocate_blocks(uint64_t *a1, int8x16_t *a2, unsigned int a3, unint64_t a4, uint64_t *a5)
{
  v188 = 0;
  v186 = 0;
  v187 = 0;
  v185 = 0;
  v9 = a1[3];
  v10 = *(v9 + 32);
  v11 = malloc_type_malloc(v10, 0x62B68A1DuLL);
  v12 = malloc_type_malloc(v10, 0xA29E1BB8uLL);
  v189[0] = v12;
  v13 = malloc_type_malloc(v10, 0xA1803BAFuLL);
  v21 = v13;
  if (v11)
  {
    v22 = v12 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22 || v13 == 0)
  {
    fsck_printf_err("Space Allocation: failed to allocate memory\n", v14, v15, v16, v17, v18, v19, v20, v167);
    v24 = 12;
    fsck_fail_func(0x1FE, 12);
    if (!v21)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v173 = a2;
  v174 = v10;
  v171 = a3;
  v175 = a5;
  if (a3 - 1 > 2)
  {
    goto LABEL_31;
  }

  if (a3 == 3)
  {
    if (a4 - 5 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      v26 = a1[3];
      if (*(v26 + 144))
      {
        if (*(v26 + 336))
        {
          v27 = a4 + 7;
          v28 = v26 + 344;
          v29 = 8;
          do
          {
            v30 = v27 & 7;
            v31 = v28 + 136 * (v27 & 7);
            if (*(v31 + 128) == a4)
            {
              goto LABEL_30;
            }

            v27 = v30 + 1;
          }

          while (--v29);
        }
      }
    }

LABEL_31:
    v172 = 0;
    v31 = &qword_100103B70;
    goto LABEL_32;
  }

  sub_1000750E0(a1);
  if (byte_1000E9A28 != 1)
  {
    goto LABEL_31;
  }

  v32 = &spaceman_metazone[4 * a3];
  if (*(v32 + 24) == 1)
  {
    v31 = (v32 + 2);
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_31;
    }

    v31 = &qword_1000E99F8;
    if ((byte_1000E9A00 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

LABEL_30:
  v172 = 1;
LABEL_32:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = *v31;
  v181 = v11;
  v182 = v9 + *(v9 + 80);
  v180 = v11 + 40;
  LODWORD(v31) = *(v9 + 36);
  v37 = -1;
  v178 = v36;
  do
  {
    if (v36 >= *(v9 + 48))
    {
      v36 = 0;
    }

    v38 = v36 / v31 / *(v9 + 40);
    if (*(v9 + 68))
    {
      v39 = *(v9 + 44);
      v40 = v38 / v39;
      if (v38 / v39 != v37)
      {
        v41 = *(v182 + 8 * v40);
        v42 = dev_read(*a1);
        if (v42)
        {
          fsck_printf_err("error (%d) getting cab %u @ %lld\n", v43, v44, v45, v46, v47, v48, v49, v42);
          v52 = (*(v9 + 44) + *(v9 + 44) * v40) * *(v9 + 40);
LABEL_44:
          LODWORD(v31) = *(v9 + 36);
          v36 = (v52 * v31);
          v37 = v40;
          goto LABEL_45;
        }

        v39 = *(v9 + 44);
        v37 = v40;
      }

      v183 = v37;
      v53 = &v180[8 * (v38 - v39 * v37)];
    }

    else
    {
      v183 = v37;
      v53 = (v182 + 8 * v38);
    }

    v54 = *v53;
    v55 = dev_read(*a1);
    if (v55)
    {
      fsck_printf_err("error (%d) getting cib %u @ %lld\n", v56, v57, v58, v59, v60, v61, v62, v55);
      v52 = *(v9 + 40) + *(v9 + 40) * v38;
      v40 = v183;
      goto LABEL_44;
    }

    v31 = *(v9 + 36);
    v63 = *(v9 + 40) * *(v189[0] + 8);
    if (v35 == *(v9 + 64))
    {
      v64 = v178 / v31 - v63 + 1;
    }

    else
    {
      v64 = *(v189[0] + 9);
    }

    v37 = v183;
    v65 = v36 / v31 - v63;
    v188 = v65;
    if (v65 < v64)
    {
      v179 = v64 - 1;
      v177 = v64;
      while (1)
      {
        v66 = &v189[0][32 * v65];
        if (*(v66 + 8))
        {
          v67 = dev_read(*a1);
          v65 = v188;
          if (v67)
          {
            v170 = *(v66 + 8);
            fsck_printf_err("error (%d) getting cib bitmap %d @ %lld\n", v68, v69, v70, v71, v72, v73, v74, v67);
            v65 = v188 + 1;
            LODWORD(v31) = *(v9 + 36);
            v36 = (v188 + 1 + *(v9 + 40) * v38) * v31;
            goto LABEL_77;
          }
        }

        if (v35 == *(v9 + 64) && v65 == v179)
        {
          v76 = v178 - *(v66 + 6);
        }

        else
        {
          v76 = *(v66 + 14) & 0xFFFFFLL;
        }

        v77 = v36 % *(v9 + 36);
        while (v76 > v77)
        {
          if (!*(v66 + 8))
          {
            v186 = 0;
LABEL_68:
            v185 = v76;
            v77 = v76;
            goto LABEL_69;
          }

          if (!bitmap_range_find_first(0, v21, v77, v76 - v77, &v186))
          {
            break;
          }

          if (!bitmap_range_find_first(1, v21, v186, v76 - v186, &v185))
          {
            goto LABEL_68;
          }

          v77 = v185;
LABEL_69:
          if (v33 + v34 == *(v66 + 6) + v186)
          {
            v78 = v33;
          }

          else
          {
            v34 = *(v66 + 6) + v186;
            v78 = 0;
          }

          v79 = v77 - v186;
          if (v77 - v186 >= a4 - v78)
          {
            v79 = a4 - v78;
          }

          v33 = v79 + v78;
          if (v79 + v78 >= a4)
          {
            *v175 = v34;
            goto LABEL_79;
          }
        }

        v31 = *(v9 + 36);
        v36 = v76 + v36 / v31 * v31;
        v65 = v188 + 1;
        v64 = v177;
LABEL_77:
        v188 = v65;
        if (v65 >= v64)
        {
          v37 = v183;
          break;
        }
      }
    }

LABEL_45:
    ++v35;
  }

  while (v35 <= *(v9 + 64));
LABEL_79:
  if (v33 < a4)
  {
    v24 = 28;
    fsck_fail_func(0x1EF, 28);
    goto LABEL_117;
  }

  v80 = v33 + v34;
  if (v34 >= (v33 + v34))
  {
LABEL_91:
    v110 = sub_100074958(a1, v173, v9, v33, v50, v51);
    if (v110)
    {
      v24 = v110;
      v111 = strerror(v110);
      fsck_printf_err("failed to update allocation counts: %s\n", v112, v113, v114, v115, v116, v117, v118, v111);
      fsck_fail_func(0x1F1, v24);
      sub_100074958(a1, v173, v9, -v33, v119, v120);
      v81 = v80;
      goto LABEL_102;
    }

    if (mark_range_allocated(v34, v33, 0, 0, 0))
    {
      fsck_printf_warn("fsck may bail out with overallocation - could not mark space allocated in fsck's version of the bitmap (%lld + %lld)\n", v121, v122, v123, v124, v125, v126, v127, v34);
    }

    v11 = v181;
    if (v172)
    {
      sub_100074A14(v171, v80 - 1);
      v24 = 0;
      if (!v21)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v24 = 0;
      qword_100103B70 = v80 - 1;
      if (!v21)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    free(v21);
    goto LABEL_11;
  }

  v81 = v34;
  v176 = v9;
  while (1)
  {
    v82 = *(v9 + 36);
    v83 = v81 % v82;
    v84 = v82 - v81 % v82;
    v85 = v84 >= v80 - v81 ? v80 - v81 : v84;
    disk_bitmap = get_disk_bitmap(a1, v81, v21, &v187, v189, &v188, 1);
    v24 = disk_bitmap;
    if (!v187 || disk_bitmap)
    {
      break;
    }

    bitmap_set_range(v21, v83, v85, v187);
    v87 = dev_write(*a1);
    if (v87)
    {
      v24 = v87;
      fsck_printf_err("error (%d) writing bitmap @ %lld\n", v88, v89, v90, v91, v92, v93, v94, v87);
      fsck_fail_func(0x1FF, v24);
      break;
    }

    v97 = v21;
    v98 = v80;
    v99 = v189[0];
    *&v189[0][32 * v188 + 60] -= v85;
    v100 = *(v99 + 1);
    fletcher64_set_cksum(v99, (v99 + 8), (v174 - 8), 0, v95, v96);
    v101 = dev_write(*a1);
    if (v101)
    {
      v24 = v101;
      v168 = *(v189[0] + 8);
      fsck_printf_err("error (%d) writing cib %u @ %lld\n", v102, v103, v104, v105, v106, v107, v108, v101);
      fsck_fail_func(0x200, v24);
      v21 = v97;
      bitmap_clear_range(v97, v83, v85);
      v128 = dev_write(*a1);
      if (v128)
      {
        v136 = v128;
        fsck_printf_err("error (%d) writing bitmap @ %lld\n", v129, v130, v131, v132, v133, v134, v135, v128);
        fsck_fail_func(0x1F0, v136);
        v24 = v136;
      }

      v9 = v176;
      break;
    }

    v81 += v85;
    v80 = v98;
    v109 = v81 < v98;
    v21 = v97;
    v9 = v176;
    if (!v109)
    {
      goto LABEL_91;
    }
  }

LABEL_102:
  if (v34 < v81)
  {
    while (2)
    {
      v137 = get_disk_bitmap(a1, v34, v21, &v187, v189, &v188, 0);
      if (v187)
      {
        v138 = v137 == 0;
      }

      else
      {
        v138 = 0;
      }

      if (!v138)
      {
        break;
      }

      v139 = *(v9 + 36);
      v140 = v34 % v139;
      v141 = v139 - v34 % v139;
      if (v141 >= v81 - v34)
      {
        v142 = v81 - v34;
      }

      else
      {
        v142 = v141;
      }

      bitmap_clear_range(v21, v140, v142);
      v143 = dev_write(*a1);
      if (v143)
      {
        v153 = v143;
        fsck_printf_err("error (%d) writing bitmap @ %lld\n", v144, v145, v146, v147, v148, v149, v150, v143);
        v154 = 513;
        v155 = v153;
        goto LABEL_115;
      }

      v156 = v189[0];
      *&v189[0][32 * v188 + 60] += v142;
      v157 = *(v156 + 1);
      fletcher64_set_cksum(v156, (v156 + 8), (v174 - 8), 0, v151, v152);
      v158 = dev_write(*a1);
      if (v158)
      {
        v166 = v158;
        v169 = *(v189[0] + 8);
        fsck_printf_err("error (%d) writing cib %u @ %lld\n", v159, v160, v161, v162, v163, v164, v165, v158);
        v154 = 514;
        v155 = v166;
LABEL_115:
        fsck_fail_func(v154, v155);
      }

      v34 += v142;
      if (v34 >= v81)
      {
        break;
      }

      continue;
    }
  }

LABEL_117:
  v11 = v181;
  if (v21)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v189[0])
  {
    free(v189[0]);
  }

  if (v11)
  {
    free(v11);
  }

  return v24;
}

uint64_t sub_100074958(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, double a5, int8x16_t a6)
{
  v7 = *(a1 + 24);
  if (v7 != a3)
  {
    sub_1000751EC();
  }

  *(a3 + 72) -= a4;
  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = a2[2].i64[1];
  v10 = *(v9 + 72);
  v11 = *(v9 + 88);
  if (v10 >= v11)
  {
    v12 = *(v9 + 88);
  }

  else
  {
    v12 = *(v9 + 72);
  }

  *(v9 + 88) = v11 + a4;
  if (v10 >= v11 + a4)
  {
    v13 = v11 + a4;
  }

  else
  {
    v13 = v10;
  }

  if (v11 < v13 || v11 + a4 < v12)
  {
    *(a3 + 192) += v13 - v12;
  }

  result = write_apfs_superblock(a1, a2);
  if (!result)
  {
    v7 = *(a1 + 24);
LABEL_16:
    v16 = *(a1 + 88);
    v17 = *(a1 + 104);
    return write_obj(a1, 0, v7, &v16, v16, a6);
  }

  return result;
}

uint64_t sub_100074A14(uint64_t result, uint64_t a2)
{
  if (result >= 4)
  {
    sub_100075244();
  }

  if (result != 3)
  {
    if (byte_1000E9A28 != 1 || ((byte_1000E9A20 & 1) == 0 ? (LODWORD(v2) = 1) : (LODWORD(v2) = 2), result != 2 ? (v2 = result) : (v2 = v2), v3 = &spaceman_metazone[4 * v2], (v3[3] & 1) == 0))
    {
      sub_100075218();
    }

    v3[2] = a2;
  }

  return result;
}

uint64_t modify_spaceman_bitmap(uint64_t *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, char a10)
{
  v121 = a7;
  v122 = a5;
  v10 = a1[3];
  v120 = 0;
  v11 = v10[8];
  v12 = a3 % v10[9];
  if (v12 + a4 > (8 * v11))
  {
    fsck_printf_err("Spaceman Repair: Cannot modify more than a block's worth of bitmap\n", a2, a3, a4, a5, a6, a7, a8, v112);
    v13 = 45;
    fsck_fail_func(0x277, 45);
    return v13;
  }

  v119 = a8;
  v20 = a6;
  if (!a6)
  {
    v20 = malloc_type_malloc(v11, 0xD4E60B18uLL);
    if (!v20)
    {
      fsck_printf_err("Spaceman Repair: failed to allocate memory for the bitmap block\n", v21, v22, v23, v24, v25, v26, v27, v112);
      v13 = 12;
      v46 = 632;
LABEL_27:
      v47 = 12;
      goto LABEL_28;
    }
  }

  if (a7)
  {
    if (a6)
    {
      v28 = a7;
      if (a5)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  v121 = malloc_type_malloc(v11, 0x5681932DuLL);
  if (!v121)
  {
    fsck_printf_err("Spaceman Repair: failed to allocate memory for the bitmap block\n", v29, v30, v31, v32, v33, v34, v35, v112);
    v13 = 12;
    v46 = 633;
    goto LABEL_27;
  }

LABEL_10:
  disk_bitmap = get_disk_bitmap(a1, a3, v20, &v122, &v121, 0, 1);
  if (disk_bitmap)
  {
    v13 = disk_bitmap;
    goto LABEL_29;
  }

  v28 = v121;
LABEL_13:
  v116 = v28[8];
  v37 = v10[9];
  v114 = v10[10];
  if ((a10 & 1) == 0 && bitmap_range_find_first(v119 == 1, v20, v12, a4, &v120))
  {
    if (v119 == 1)
    {
      v45 = "bitmap was not entirely unset, stopping allocation\n";
    }

    else
    {
      v45 = "bitmap was not entirely set, stopping deallocation\n";
    }

    fsck_printf_err(v45, v38, v39, v40, v41, v42, v43, v44, v112);
    v13 = 22;
    v46 = 634;
    v47 = 22;
    goto LABEL_28;
  }

  if (v119 == 1)
  {
    bitmap_set_range(v20, v12, a4, 1);
  }

  else if (v119 == 2)
  {
    bitmap_clear_range(v20, v12, a4);
  }

  v48 = dev_write(*a1);
  if (v48)
  {
    v13 = v48;
    fsck_printf_err("error (%d) writing bitmap @ %lld\n", v49, v50, v51, v52, v53, v54, v55, v48);
    v46 = 635;
    v47 = v13;
LABEL_28:
    fsck_fail_func(v46, v47);
    goto LABEL_29;
  }

  v57 = a3 / v37 - v114 * v116;
  v117 = *(v121 + 1);
  v58 = bitmap_count_bits(v20, 0, 0, *(v121 + 8 * v57 + 14) & 0xFFFFF);
  v61 = 0;
  v62 = v121;
  v113 = v57;
  v63 = v121 + 32 * v57;
  v65 = *(v63 + 15);
  v64 = v63 + 60;
  v66 = v58 - v65;
  if (v58 != v65)
  {
    *v64 = v58;
    v61 = v66;
  }

  v115 = v61;
  v67 = (v11 - 8);
  fletcher64_set_cksum(v62, (v62 + 8), v67, 0, v59, v60);
  v68 = dev_write(*a1);
  if (v68)
  {
    v13 = v68;
    fsck_printf_err("error (%d) writing cib during deallocation\n", v69, v70, v71, v72, v73, v74, v75, v68);
    fsck_fail_func(0x27C, v13);
  }

  else
  {
    v78 = sub_100074958(a1, a2, v10, -v115, v76, v77);
    if (!v78)
    {
      if (a9)
      {
        if (v119 == 2)
        {
          mark_range_free(a3, a4, 0);
        }

        else if (v119 == 1)
        {
          mark_range_allocated(a3, a4, 0, 0, 0);
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

    v13 = v78;
    v79 = strerror(v78);
    fsck_printf_err("failed to update allocation counts: %s\n", v80, v81, v82, v83, v84, v85, v86, v79);
    fsck_fail_func(0x27D, v13);
    sub_100074958(a1, a2, v10, v115, v87, v88);
  }

  if (v119 == 1)
  {
    bitmap_clear_range(v20, v12, a4);
    bitmap_set_range(v20, v12, a4, v89);
  }

  v90 = dev_write(*a1);
  if (v90)
  {
    v100 = v90;
    fsck_printf_err("error (%d) writing bitmap @ %lld\n", v91, v92, v93, v94, v95, v96, v97, v90);
    v46 = 638;
    v47 = v100;
    goto LABEL_28;
  }

  v101 = v121;
  *(v121 + 8 * v113 + 15) -= v115;
  v102 = *(v101 + 1);
  fletcher64_set_cksum(v101, (v101 + 8), v67, 0, v98, v99);
  v103 = dev_write(*a1);
  if (v103)
  {
    v111 = v103;
    fsck_printf_err("error (%d) writing cib\n", v104, v105, v106, v107, v108, v109, v110, v103);
    v46 = 639;
    v47 = v111;
    goto LABEL_28;
  }

LABEL_29:
  if (!a7 && v121)
  {
    free(v121);
  }

  if (!a6 && v20)
  {
    free(v20);
  }

  return v13;
}

uint64_t sub_100074F2C(uint64_t *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 + a3;
  if (a4 + a3 <= a3)
  {
    return 0;
  }

  v7 = a3;
  v10 = *(a1[3] + 36);
  while (1)
  {
    v11 = v5 - v7 >= v10 + v7 / v10 * v10 - v7 ? v10 + v7 / v10 * v10 - v7 : v5 - v7;
    result = modify_spaceman_bitmap(a1, a2, v7, v11, 0, 0, 0, a5, 1, 0);
    if (result)
    {
      break;
    }

    v7 += v11;
    if (v7 >= v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t split_range_maybe(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5, uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  if (a2 + a1 > a3 && a4 + a3 > a1)
  {
    *a5 = 1;
    if (a1 <= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = a1;
    }

    v15 = v14 - a1;
    if (a2 - (v14 - a1) >= a3 - v14 + a4)
    {
      v16 = a3 - v14 + a4;
    }

    else
    {
      v16 = a2 - (v14 - a1);
    }

    result = a6(v14, v16, 1, a7);
    if (!result)
    {
      if (a3 <= a1 || (result = a6(a1, v15, 0, a7), !result))
      {
        if (a2 - v16 <= v15)
        {
          return 0;
        }

        result = a6(v16 + v14, a2 - v16 - v15, 0, a7);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t sub_1000750E0(uint64_t result)
{
  if ((byte_1000E9A28 & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = *(v2 + 32);
    v4 = *(v2 + 48);
    v9 = 0;
    v10 = 0;
    v7 = 0;
    v8 = 0;
    if (is_mul_ok(v4, v3))
    {
      v5 = v4 * v3;
    }

    else
    {
      v5 = 0x40000000000;
    }

    result = spaceman_metazone_get_size(0, v3, v4, v5, &v10, &v9);
    if (!result)
    {
      v6 = v10 / v3 + v9;
      spaceman_metazone_get_partitions(v3, v10, v9, v6, &v8, &v7);
      qword_1000E99D0 = v8;
      unk_1000E99D8 = v9;
      spaceman_metazone[0] = v9;
      byte_1000E99E0 = 1;
      qword_1000E99F0 = v6;
      qword_1000E99F8 = v8;
      qword_1000E99E8 = v8;
      byte_1000E9A00 = 1;
      result = dev_is_solidstate(*v1);
      if (!result)
      {
        result = container_is_internal_mac();
        if (result)
        {
          qword_1000E99F0 = v7;
          qword_1000E99F8 = v8;
          qword_1000E99E8 = v8;
          byte_1000E9A00 = 1;
          qword_1000E9A10 = v6;
          unk_1000E9A18 = v7;
          qword_1000E9A08 = v7;
          byte_1000E9A20 = 1;
        }
      }
    }

    byte_1000E9A28 = 1;
  }

  return result;
}

uint64_t omap_key_compare(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t _omap_lookup_obj(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = -1;
  }

  v14 = a3;
  v15 = v7;
  v12 = 0;
  v13 = 0;
  v10 = 16;
  v11 = 16;
  result = get_omap_tree(a1, a2, &v16);
  if (!result)
  {
    result = tree_lookup(v16, 0, 0xFFFFFFFF, &v14, &v11, 0x10u, &v12, &v10);
    if (!result)
    {
      result = 92;
      if (v11 == 16 && v10 == 16)
      {
        if (v14 != a3)
        {
          return 2;
        }

        v9 = v12;
        if (v12)
        {
          return 2;
        }

        else
        {
          result = 0;
          *a5 = v13;
          *(a5 + 8) = HIDWORD(v12);
          *(a5 + 12) = v9;
          *(a5 + 16) = v15;
        }
      }
    }
  }

  return result;
}

uint64_t _omap_insert_obj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5)
{
  v8 = 0;
  v7[0] = a3;
  v7[1] = a4;
  v6[0] = vrev64_s32(a5[1]);
  v6[1] = *a5;
  result = get_omap_tree(a1, a2, &v8);
  if (!result)
  {
    return tree_insert(v8, 0, v7, 16, v6, 16);
  }

  return result;
}

uint64_t _omap_delete_obj(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v25 = 0;
  v26 = 0;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  v22 = 0;
  v23 = 0;
  v20 = 16;
  v21 = 16;
  result = get_omap(a1, a2, &v26);
  if (!result)
  {
    result = get_omap_tree(a1, a2, &v25);
    if (!result)
    {
      result = tree_lookup(v25, 0, 0, &v24, &v21, 0x10u, &v22, &v20);
      if (!result)
      {
        result = 92;
        if (v21 == 16 && v20 == 16)
        {
          v11 = v22;
          if (v22)
          {
            return 2;
          }

          if (a5)
          {
            *a5 = v23;
            *(a5 + 8) = HIDWORD(v22);
            *(a5 + 12) = v11;
            *(a5 + 16) = *(&v24 + 1);
          }

          v12 = *(v26 + 64);
          if (v12)
          {
            v13 = v12 >= a4;
          }

          else
          {
            v13 = 0;
          }

          v14 = !v13;
          if (v14 != 1)
          {
            goto LABEL_22;
          }

          v19 = v24;
          v18[0] = 0;
          v18[1] = 0;
          result = tree_lookup(v25, 0, 0xFFFFFFFE, &v19, &v21, 0x10u, v18, &v20);
          if ((result & 0xFFFFFFFD) == 0)
          {
            v15 = result;
            result = 92;
            if (v21 == 16 && v20 == 16)
            {
              if (v15 == 2 || v19 != a3)
              {
                LODWORD(result) = tree_remove(v25, 0, &v24, 16);
                v16 = result == 0;
                goto LABEL_23;
              }

LABEL_22:
              *(&v24 + 1) = *(*(a1 + 8) + 16);
              LODWORD(v22) = 1;
              LODWORD(result) = tree_insert(v25, 0, &v24, 16, &v22, 16);
              v16 = result == 0;
              if (!v14)
              {
                v17 = 17;
LABEL_26:
                if (v16)
                {
                  return v17;
                }

                else
                {
                  return result;
                }
              }

LABEL_23:
              v17 = 0;
              goto LABEL_26;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t tree_init_ext(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v13 = 22;
  if (a4 > 0x7FFFFFF)
  {
    if (a4 != 0x40000000 && a4 != 0x8000000)
    {
      return v13;
    }
  }

  else if (a4 != 0x80000000 && a4)
  {
    return v13;
  }

  if (!a3 && !a4)
  {
    sub_10007A9B8();
  }

  v13 = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 40) = a4;
  *(a1 + 44) = a5;
  *(a1 + 48) = a6;
  *(a1 + 52) = a7;
  *(a1 + 24) = a8;
  *(a1 + 28) = a9;
  *(a1 + 32) = a10;
  *(a1 + 36) = a11;
  *(a1 + 56) = a12;
  *(a1 + 16) = a13;
  return v13;
}

uint64_t tree_lookup(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  if (*(a1 + 44) == 2)
  {
    return sub_1000756B0(a1, a2, a3, a4, a5, a6, a7, a8, 0, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_1000756B0(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int *a5, unsigned int a6, void *a7, unsigned int *a8, void **a9, unsigned __int16 a10)
{
  *v60 = 0;
  v59 = 0;
  v16 = a3 - 1;
  LODWORD(v50) = a3 - 1 < 2;
  HIDWORD(v50) = a3 == -2;
  v53 = 0u;
  v54 = 0u;
  v51 = 0;
  __src = 0;
  v17 = *(a1 + 56);
  if (a9)
  {
    *a9 = 0;
  }

  v18 = fsck_tree_node_read(a1, &__src, *(a1 + 40), a2, v17);
  if (!v18)
  {
    v46 = v16;
    v44 = a6;
    v45 = a8;
    v48 = 0;
    v21 = -4081;
    while (1)
    {
      v22 = a4;
      v23 = a5;
      v24 = __src;
      v25 = *(a1 + 56);
      v18 = sub_100078358(a1, __src, v17 == v25, v21);
      if (v18)
      {
        goto LABEL_4;
      }

      v26 = v24[17];
      if (v26 < a10)
      {
        return 22;
      }

      if (v17 == v25)
      {
        v27 = *(a1 + 24);
        v53 = *(v24 + v27 - 40);
        *&v54 = *(a1 + 36);
        *(&v54 + 1) = v17;
        v18 = sub_1000784E8(a9, v26 - a10 + 1, v27);
        if (v18)
        {
          goto LABEL_4;
        }
      }

      a5 = v23;
      a4 = v22;
      if (a9)
      {
        if (!*a9)
        {
          sub_10007A9E4();
        }

        v28 = *(*a9 + 2 * (v26 - a10) + 1);
        if (v28)
        {
          memcpy(v28, __src, *(a1 + 24));
        }
      }

      while (v26 > a10)
      {
        v29 = sub_10007859C(a1, &v53, __src, v22, *a5, v60, &v60[1]);
        v19 = v29;
        v30 = v60[0];
        if (a9)
        {
          *(*a9 + 4 * (v26 - a10) + 4) = v60[0];
        }

        if (v29)
        {
          goto LABEL_5;
        }

        v31 = __src;
        if (HIDWORD(v50) && v30 > 0 || v50 && v30 < *(__src + 9) - 1)
        {
          v18 = sub_1000785E0(&v53, __src, v50 - HIDWORD(v50) + v30, &v51);
          if (v18)
          {
            goto LABEL_4;
          }

          v48 = v26 - 1;
          v31 = __src;
        }

        v18 = sub_100078694(a1, a2, &v53, v31, v30, 0, &__src);
        if (v18)
        {
          goto LABEL_4;
        }

        v26 = *(__src + 17);
        if (a9)
        {
          v32 = *(*a9 + 2 * (v26 - a10) + 1);
          if (v32)
          {
            memcpy(v32, __src, *(a1 + 24));
          }
        }
      }

      v18 = sub_100078754(a1, &v53, __src, v22, *a5, v60, &v60[1]);
      if (v18)
      {
        goto LABEL_4;
      }

      v33 = v60[1];
      if (v60[1])
      {
        v34 = a3;
        if (a3 == -2)
        {
          v35 = v60[0]--;
          v33 = v35 > 0;
        }

        else
        {
          if (a3 != 2)
          {
            goto LABEL_54;
          }

          v33 = ++v60[0] < *(__src + 9);
        }

        v60[1] = v33;
      }

      else
      {
        v34 = a3;
      }

      if (!v34 || v33)
      {
        break;
      }

      if (v34 >= 0xFFFFFFFE)
      {
        v36 = v60[0] - 1;
        if (v60[0] >= 1)
        {
          goto LABEL_57;
        }
      }

      if (v46 <= 1 && v60[0] < *(__src + 9))
      {
        v36 = v60[0];
LABEL_57:
        if (a9)
        {
          *(*a9 + 4 * (v26 - a10) + 4) = v36;
        }

        v58 = 0;
        v56 = 0;
        v37 = sub_100078874(&v53, __src, v36, &v58, &v56);
        v19 = v37;
        if (!v34 || v37)
        {
          if (v37)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v38 = *(a1 + 8);
          if (v38)
          {
            v39 = *(v38 + 40);
          }

          else
          {
            v39 = 0;
          }

          v18 = (*(a1 + 16))(v39, v58, v56, v22, *a5, &v59);
          if (v18)
          {
            goto LABEL_4;
          }

          if (v34 == -2 && (v59 & 0x80000000) == 0)
          {
            v19 = 92;
            goto LABEL_5;
          }

          v40 = v34 == 1;
          if (v59 >= 0)
          {
            v40 = 0;
          }

          v42 = v34 == 2 && v59 < 1;
          v43 = v59 > 0 && v34 == -1;
          v19 = 92;
          if (v43 || v40 || v42)
          {
            goto LABEL_5;
          }
        }

        *v57 = 0;
        v55 = 0;
        v18 = sub_10007893C(&v53, __src, v36, v57, &v55);
        if (v18)
        {
          goto LABEL_4;
        }

        *a5 = v44;
        v19 = sub_100078A54(v58, v56, *v57, v55, v22, a5, a7, v45);
        if (v19)
        {
          goto LABEL_5;
        }

        goto LABEL_7;
      }

      v17 = v51;
      if (!v51)
      {
        goto LABEL_55;
      }

      v51 = 0;
      v19 = fsck_tree_node_read(a1, &__src, *(a1 + 40), a2, v17);
      v50 = 0;
      v21 = v48;
      if (v19)
      {
        goto LABEL_5;
      }
    }

    if (!v33)
    {
LABEL_55:
      v19 = 2;
      goto LABEL_5;
    }

LABEL_54:
    v36 = v60[0];
    goto LABEL_57;
  }

LABEL_4:
  v19 = v18;
LABEL_5:
  if (a9)
  {
    free(*a9);
    *a9 = 0;
  }

LABEL_7:
  if (__src && *(a1 + 40) != 0x8000000)
  {
    free(__src);
  }

  return v19;
}

uint64_t tree_lookup_min(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, void *a5, unsigned int *a6)
{
  if (*(a1 + 44) == 2)
  {
    return sub_100075B98(a1, a2, a3, a4, a5, a6, 0, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100075B98(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, void *a5, unsigned int *a6, void **a7, unsigned int a8)
{
  __src = 0;
  if (a7)
  {
    *a7 = 0;
  }

  v32 = 0;
  v16 = sub_100077FCC(a1, a2, 0, &__src, &v32);
  if (v16)
  {
    goto LABEL_4;
  }

  if ((*(__src + 16) & 2) != 0 && !*(__src + 9))
  {
    v17 = 2;
    goto LABEL_5;
  }

  v18 = *(__src + 17);
  if (v18 < a8)
  {
    return 22;
  }

  v29 = *v32;
  v20 = *(a1 + 56);
  v30 = *(a1 + 36);
  v31 = v20;
  v16 = sub_1000784E8(a7, v18 - a8 + 1, *(a1 + 24));
  if (v16)
  {
    goto LABEL_4;
  }

  if (a7)
  {
    v21 = *(*a7 + 2 * (v18 - a8) + 1);
    if (v21)
    {
      memcpy(v21, __src, *(a1 + 24));
    }
  }

  if (v18 > a8)
  {
    do
    {
      v16 = sub_100078694(a1, a2, &v29, __src, 0, 0, &__src);
      if (v16)
      {
        goto LABEL_4;
      }

      v22 = *(__src + 17);
      if (a7)
      {
        v23 = *(*a7 + 2 * (v22 - a8) + 1);
        if (v23)
        {
          memcpy(v23, __src, *(a1 + 24));
        }
      }
    }

    while (v22 > a8);
  }

  v27 = 0;
  v25 = 0;
  v16 = sub_100078874(&v29, __src, 0, &v27, &v25);
  if (v16 || (v26 = 0, v24 = 0, v16 = sub_10007893C(&v29, __src, 0, &v26, &v24), v16))
  {
LABEL_4:
    v17 = v16;
    goto LABEL_5;
  }

  v17 = sub_100078A54(v27, v25, v26, v24, a3, a4, a5, a6);
  if (v17)
  {
LABEL_5:
    if (a7)
    {
      free(*a7);
      *a7 = 0;
    }
  }

  if (__src && *(a1 + 40) != 0x8000000)
  {
    free(__src);
  }

  return v17;
}

uint64_t tree_iterator_init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, unsigned int a6, void *a7, int a8)
{
  if (a5 > a6)
  {
    return 34;
  }

  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a6;
  *(a1 + 68) = a8;
  *a1 = 0;
  *(a1 + 8) = sub_100075E6C;
  *(a1 + 16) = a4;
  *(a1 + 24) = a7;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
  *(a1 + 36) = a8;
  if (*(a2 + 44) == 2)
  {
    result = sub_1000756B0(a2, a3, 1u, a4, (a1 + 32), a6, a7, (a1 + 36), 0, 0);
    if (result)
    {
      *(a1 + 40) = 1;
      if (result == 2)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {
    *(a1 + 40) = 1;
    return 22;
  }

  return result;
}

uint64_t sub_100075E6C(uint64_t a1)
{
  *(a1 + 36) = *(a1 + 68);
  v2 = (a1 + 36);
  v3 = *(a1 + 48);
  if (*(v3 + 44) == 2)
  {
    result = sub_1000756B0(v3, *(a1 + 56), 2u, *(a1 + 16), (a1 + 32), *(a1 + 64), *(a1 + 24), v2, 0, 0);
    if (result)
    {
      *(a1 + 40) = 1;
      if (result == 2)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {
    *(a1 + 40) = 1;
    return 22;
  }

  return result;
}

uint64_t path_iterator_init_ext(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int a6, unsigned int a7)
{
  v14 = *(a2 + 24);
  v15 = __chkstk_darwin(a1);
  v16 = &v25 - ((v14 + 15) & 0x1FFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v25 - v18;
  v25 = v14;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *v17 = sub_10007616C;
  *(v17 + 8) = sub_100076198;
  *(v17 + 40) = 1;
  if (*(v20 + 44) != 2)
  {
    return 22;
  }

  if (v14 < a6)
  {
    return 34;
  }

  bzero(v16, v14);
  bzero(v19, v14);
  if (a5)
  {
    memcpy(v16, a5, a6);
    v26 = a6;
    v21 = sub_1000756B0(a2, a3, a4, v16, &v26, v14, v19, &v25, (a1 + 72), a7);
    if (v21 != 2)
    {
      goto LABEL_12;
    }

    if (a4 < 0xFFFFFFFE)
    {
      return 0;
    }

    v23 = sub_1000756B0(a2, a3, 1u, v16, &v26, v14, v19, &v25, (a1 + 72), a7);
  }

  else
  {
    v26 = v14;
    v23 = sub_100075B98(a2, a3, v16, &v26, v19, &v25, (a1 + 72), a7);
  }

  v21 = v23;
LABEL_12:
  if (v21 == 2)
  {
    return 0;
  }

  if (v21 || (v24 = *(a1 + 72) + 16 * **(a1 + 72), *(a1 + 48) = a2, *(a1 + 56) = a3, *(a1 + 64) = *(v24 - 8) + *(a2 + 24) - 40, v21 = sub_1000761DC(a1), v21))
  {
    free(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  else
  {
    *(a1 + 40) = 0;
  }

  return v21;
}

uint64_t sub_100076198(uint64_t a1)
{
  if (sub_100078CA8(a1, 0) || sub_1000761DC(a1))
  {
    *(a1 + 40) = 1;
  }

  return 0;
}

uint64_t sub_1000761DC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  v6 = **(a1 + 64);
  v4 = *(v2 + 36);
  v8 = *(v2 + 56);
  v7 = v4;
  result = sub_100078874(&v6, *(v3 + 8), *(v3 + 16), (a1 + 16), (a1 + 32));
  if (!result)
  {
    return sub_10007893C(&v6, *(v3 + 8), *(v3 + 16), (a1 + 24), (a1 + 36));
  }

  return result;
}

BOOL btree_node_update_maybe(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5, void *a6, unsigned int a7)
{
  if ((a3 & 0x80000000) != 0 || *(a2 + 36) <= a3)
  {
    sub_10007AA10();
  }

  if ((a4 != 0) != (a5 != 0))
  {
    sub_10007AA94();
  }

  v12 = a6;
  if (!a6 && a7)
  {
    sub_10007AA68();
  }

  if (a4)
  {
    v44 = sub_100076680(a2, a3);
    v14 = sub_1000766C0(a1, a2, a3);
    v15 = v14;
    if ((*a1 & 0x40) != 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = (a5 + 7) & 0xFFFFFFF8;
    }

    if ((*a1 & 0x40) != 0)
    {
      v17 = v14;
    }

    else
    {
      v17 = (v14 + 7) & 0x1FFF8;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v44 = 0xFFFF;
  }

  __src = v12;
  if (v12)
  {
    v43 = sub_100076700(a2, a3);
    v18 = sub_100076748(a1, a2, a3);
    LODWORD(v12) = v18;
    if (a7 == 65534)
    {
      v19 = 0;
    }

    else
    {
      v19 = (a7 + 7) & 0xFFFFFFF8;
      if ((*a1 & 0x40) != 0)
      {
        v19 = a7;
      }
    }

    v16 += v19;
    if (v18 == 65534)
    {
      v20 = 0;
    }

    else
    {
      v20 = (v18 + 7) & 0x1FFF8;
      if ((*a1 & 0x40) != 0)
      {
        v20 = v18;
      }
    }

    v17 += v20;
  }

  else
  {
    v43 = 0xFFFF;
  }

  v27 = sub_1000767E0(a1, a2, 0) + v17;
  if (v16 <= v27)
  {
    if (a4)
    {
      sub_100076850(a1, a2, 0, v44, v15);
      v28 = sub_100076998(a1, a2, 0, a5);
      if (v28)
      {
        v45 = 0;
      }

      else
      {
        v29 = (a5 + 7) & 0xFFFFFFF8;
        if ((*a1 & 0x40) != 0)
        {
          v29 = a5;
        }

        v45 = v29;
      }
    }

    else
    {
      v45 = 0;
      v28 = 0;
    }

    v42 = v27;
    if (__src)
    {
      sub_100076850(a1, a2, 1, v43, v12);
      v30 = sub_100076998(a1, a2, 1u, a7);
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        if (a7 == 65534)
        {
          v32 = 0;
        }

        else
        {
          v32 = (a7 + 7) & 0xFFFFFFF8;
          if ((*a1 & 0x40) != 0)
          {
            v32 = a7;
          }
        }

        v31 = 0;
        v45 += v32;
      }
    }

    else
    {
      v31 = 0;
    }

    v33 = *(a2 + 46);
    if (v45 > v33)
    {
      if (a4)
      {
        sub_100076B24(a2, a3, 0xFFFF, 0);
      }

      if (__src)
      {
        sub_100076B70(a2, a3, 0xFFFF, 0);
      }

      sub_100076BBC(a1, a2, 0);
      if ((*a1 & 0x40) != 0)
      {
        v34 = a5;
      }

      else
      {
        v34 = (a5 + 7) & 0xFFFFFFF8;
      }

      v35 = (a7 + 7) & 0xFFFFFFF8;
      if ((*a1 & 0x40) != 0)
      {
        v35 = a7;
      }

      if (a7 == 65534)
      {
        v35 = 0;
      }

      if (v35 + v34 > *(a2 + 46))
      {
        sub_10007AA3C();
      }

      v28 = 0;
      v31 = 0;
    }

    if (a4)
    {
      v36 = sub_100077028(a1, a2, 0, a5, v28);
      v37 = v36;
      memcpy((a2 + *(a2 + 42) + v36 + 56), a4, a5);
      sub_100076B24(a2, a3, v37, a5);
    }

    if (__src)
    {
      v38 = sub_100077028(a1, a2, 1u, a7, v31);
      v39 = v38;
      if (v38 <= 0xFFFD)
      {
        v40 = -40;
        if ((*(a2 + 32) & 1) == 0)
        {
          v40 = 0;
        }

        memcpy((a2 + *(a1 + 4) + v40 - v38), __src, a7);
      }

      sub_100076B70(a2, a3, v39, a7);
    }

    v27 = v42;
    if (v45 > v33 && sub_1000771B8(a1, a2, v21, v22, v23, v24, v25, v26))
    {
      abort();
    }
  }

  return v16 <= v27;
}

uint64_t sub_100076680(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 36) <= a2)
  {
    sub_10007AAC0();
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    v2 = (a1 + 56 + 4 * a2);
  }

  else
  {
    v2 = (a1 + 56 + 8 * a2);
  }

  return *v2;
}

uint64_t sub_1000766C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0 || *(a2 + 36) <= a3)
  {
    sub_10007AAEC();
  }

  if ((*(a2 + 32) & 4) != 0)
  {
    return *(a1 + 8);
  }

  else
  {
    LOWORD(v3) = *(a2 + 8 * a3 + 58);
  }

  return v3;
}

uint64_t sub_100076700(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 36) <= a2)
  {
    sub_10007AB18();
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    v2 = (a1 + 56 + 4 * a2 + 2);
  }

  else
  {
    v2 = (a1 + 56 + 8 * a2 + 4);
  }

  return *v2;
}

uint64_t sub_100076748(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0 || *(a2 + 36) <= a3)
  {
    sub_10007AB44();
  }

  v3 = *(a2 + 32);
  v4 = a2 + 56;
  if ((v3 & 4) != 0)
  {
    v5 = (v4 + 4 * a3 + 2);
    LODWORD(v4) = *(a1 + 12);
  }

  else
  {
    v4 += 8 * a3;
    v5 = (v4 + 4);
    LOWORD(v4) = *(v4 + 6);
  }

  v6 = *v5;
  if (v6 == 65534)
  {
    LOWORD(v4) = -2;
  }

  else if (v6 == 0xFFFF)
  {
    LOWORD(v4) = 0;
  }

  else if ((v3 & 2) == 0)
  {
    if ((v3 & 8) != 0)
    {
      LOWORD(v4) = *(a1 + 16) + 8;
    }

    else
    {
      LOWORD(v4) = 8;
    }
  }

  return v4;
}

uint64_t sub_1000767E0(_BYTE *a1, _WORD *a2, int a3)
{
  v3 = a2[25] + a2[23] + a2[27];
  if ((a2[16] & 4) != 0 && (*a1 & 4) == 0)
  {
    return v3;
  }

  v4 = a2[21];
  v5 = sub_100078D88(a1, a2, a3);
  v6 = v5 - v4;
  if (v5 < v4)
  {
    return v3 - v5 + v4;
  }

  if (v5 <= v4)
  {
    return v3;
  }

  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100076850(uint64_t result, unsigned __int16 *a2, int a3, unsigned int a4, unsigned int a5)
{
  if (a4 <= 0xFFFD)
  {
    if (a5 == 65534 || !a5)
    {
      sub_10007AB70();
    }

    v5 = a2[22];
    v6 = *(result + 4);
    v7 = a2[21];
    v8 = a2[23];
    v9 = a2[16];
    v10 = (a5 + 7) & 0xFFFFFFF8;
    if ((*result & 0x40) != 0)
    {
      v10 = a5;
    }

    if (a3 || v5 <= a4 || v10 > v5 - a4)
    {
      if (a3 != 1 || ((v11 = v6 - v8 - (v5 + v7) + ((v9 << 31 >> 31) & 0xFFFFFFD8) - 56, v11 >= a4) ? (v12 = v10 > a4) : (v12 = 1), v12))
      {
        sub_10007AB9C();
      }

      if (v11 == a4)
      {
        a2[23] = v8 + v10;
        return result;
      }
    }

    else if (v10 + a4 == v5)
    {
      a2[23] = v8 + v10;
      a2[22] = v5 - v10;
      return result;
    }

    v13 = 24;
    if (a3)
    {
      v13 = 26;
    }

    v14 = &a2[v13];
    v14[1] += v10;
    if (v10 >= 4)
    {
      v15 = a2 + v7 + a4 + 56;
      v16 = a2 + v6;
      v17 = (v9 & 1) == 0;
      v18 = -40;
      if (v17)
      {
        v18 = 0;
      }

      v19 = &v16[v18 - a4];
      if (!a3)
      {
        v19 = v15;
      }

      *(v19 + 1) = v10;
      *v19 = *v14;
      *v14 = a4;
    }
  }

  return result;
}

unsigned __int16 *sub_100076998(int *a1, unsigned __int16 *a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= 2)
  {
    sub_10007ABC8();
  }

  result = 0;
  if (a4 && a4 != 65534)
  {
    v6 = 26;
    if (!a3)
    {
      v6 = 24;
    }

    v7 = &a2[v6];
    v8 = *a1;
    v9 = (a4 + 7) & 0xFFFFFFF8;
    if ((*a1 & 0x40) != 0)
    {
      v9 = a4;
    }

    if (v9 <= v7[1])
    {
      v10 = *v7;
      if (v10 != 0xFFFF)
      {
        result = 0;
        v11 = a1[1];
        v12 = v11 - 56;
        v13 = a2 + v11;
        v14 = a2[21];
        v15 = -1;
        while (1)
        {
          if (a3)
          {
            if (v10 < 4)
            {
              return result;
            }

            v16 = a2[16];
            if (v12 - a2[23] - (v14 + a2[22]) + ((v16 << 31 >> 31) & 0xFFFFFFD8) < v10)
            {
              return result;
            }

            v17 = (v16 & 1) != 0 ? -40 : 0;
            v18 = &v13[v17 - v10];
            v19 = v18[1];
            if (v19 < 4)
            {
              return result;
            }

            v20 = (v19 + 7) & 0x1FFF8;
            if ((v8 & 0x40) != 0)
            {
              v20 = v18[1];
            }

            if (v20 > v10)
            {
              return result;
            }
          }

          else
          {
            v21 = a2[22];
            v22 = v21 - v10;
            if (v21 <= v10)
            {
              return result;
            }

            if (v22 < 4)
            {
              return result;
            }

            v18 = (a2 + v14 + v10 + 56);
            v19 = v18[1];
            if (v19 < 4)
            {
              return result;
            }

            v23 = (v19 + 7) & 0x1FFF8;
            if ((v8 & 0x40) != 0)
            {
              v23 = v18[1];
            }

            if (v23 > v22)
            {
              return result;
            }
          }

          if (v9 <= v19 && v15 > v19)
          {
            result = v7;
            v15 = v19;
          }

          v10 = *v18;
          v7 = v18;
          if (v10 == 0xFFFF)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100076B24(uint64_t result, unsigned int a2, __int16 a3, __int16 a4)
{
  if ((a2 & 0x80000000) != 0 || *(result + 36) <= a2)
  {
    sub_10007ABF4();
  }

  v4 = result + 56;
  if ((*(result + 32) & 4) != 0)
  {
    *(v4 + 4 * a2) = a3;
  }

  else
  {
    v5 = (v4 + 8 * a2);
    *v5 = a3;
    v5[1] = a4;
  }

  return result;
}

uint64_t sub_100076B70(uint64_t result, unsigned int a2, __int16 a3, __int16 a4)
{
  if ((a2 & 0x80000000) != 0 || *(result + 36) <= a2)
  {
    sub_10007AC20();
  }

  v4 = result + 56;
  if ((*(result + 32) & 4) != 0)
  {
    *(v4 + 4 * a2 + 2) = a3;
  }

  else
  {
    v5 = v4 + 8 * a2;
    *(v5 + 4) = a3;
    *(v5 + 6) = a4;
  }

  return result;
}

void sub_100076BBC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = malloc_type_calloc(*(a2 + 36), 6uLL, 0x1000040274DC3F3uLL);
  v7 = v6;
  if (*(a2 + 36))
  {
    v8 = 0;
    v9 = v6 + 2;
    do
    {
      *(v9 - 2) = v8;
      *(v9 - 1) = sub_100076700(a2, v8);
      v10 = sub_100076748(a1, a2, v8);
      if (v10 == 65534)
      {
        v11 = 0;
      }

      else if ((*a1 & 0x40) != 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = (v10 + 7) & 0xFFF8;
      }

      *v9 = v11;
      v9 += 3;
      ++v8;
      v12 = *(a2 + 36);
    }

    while (v8 < v12);
  }

  else
  {
    v12 = 0;
  }

  qsort(v7, v12, 6uLL, sub_100078DFC);
  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = -40;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a2 + 36);
  __base = v7;
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = a2 + *(a1 + 4) + v14;
    v19 = v7 + 2;
    do
    {
      v20 = *(v19 - 1);
      if (v20 <= 0xFFFD)
      {
        v21 = *v19;
        v17 += v21;
        if (v17 > v20)
        {
          sub_10007AC4C();
        }

        memmove((v18 - v17), (v18 - *(v19 - 1)), v21);
        v22 = *(v19 - 2);
        v23 = sub_100076748(a1, a2, v22);
        sub_100076B70(a2, v22, v17, v23);
        v15 = *(a2 + 36);
      }

      ++v16;
      v19 += 3;
    }

    while (v16 < v15);
    v13 = *(a2 + 32);
    v24 = v15 == 0;
  }

  else
  {
    LOWORD(v17) = 0;
    v24 = 1;
  }

  *(a2 + 46) = v17;
  if ((v13 & 4) == 0 || (*a1 & 4) != 0)
  {
    v52 = sub_100078D88(a1, a2, a3);
  }

  else
  {
    v52 = *(a2 + 42);
  }

  v25 = __base;
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v27 = 0;
    v28 = __base + 2;
    do
    {
      *(v28 - 2) = v27;
      *(v28 - 1) = sub_100076680(a2, v27);
      v29 = sub_1000766C0(a1, a2, v27);
      if ((*a1 & 0x40) != 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = (v29 + 7) & 0xFFF8;
      }

      *v28 = v30;
      v28 += 3;
      ++v27;
      v26 = *(a2 + 36);
    }

    while (v27 < v26);
  }

  qsort(__base, v26, 6uLL, sub_100078DFC);
  v31 = *(a2 + 36);
  if (v31)
  {
    v32 = 0;
    v33 = __base + 2;
    v34 = v52;
    while (v34 > *(v33 - 1) + *(a2 + 42))
    {
      v35 = *v33;
      v33 += 3;
      v34 += v35;
      if (v31 == ++v32)
      {
        v36 = *(a2 + 36);
        goto LABEL_40;
      }
    }

    v36 = v32;
LABEL_40:
    if (v36 >= 1)
    {
      v37 = v36 + 1;
      v38 = &__base[3 * v36 - 1];
      v39 = v34;
      do
      {
        v40 = *(v38 - 1);
        if (v40 >= 0xFFFE)
        {
          sub_10007ACA4();
        }

        v41 = *v38;
        v39 -= v41;
        v42 = *(a2 + 42) + v40;
        if (v39 <= v42)
        {
          sub_10007AC78();
        }

        memmove((a2 + 56 + v39), (a2 + 56 + v42), v41);
        v43 = *(v38 - 2);
        v44 = sub_1000766C0(a1, a2, v43);
        sub_100076B24(a2, v43, v39 - v52, v44);
        --v37;
        v38 -= 3;
      }

      while (v37 > 1);
      v31 = *(a2 + 36);
      v25 = __base;
    }
  }

  else
  {
    v36 = 0;
    v31 = 0;
    v34 = v52;
  }

  if (v36 < v31)
  {
    v45 = &v25[3 * v36 + 2];
    do
    {
      v46 = *(v45 - 1);
      if (v46 != 0xFFFF)
      {
        if (v46 == 65534)
        {
          sub_10007ACD0();
        }

        v47 = *(a2 + 42) + v46;
        if (v34 > v47)
        {
          sub_10007ACFC();
        }

        memmove((a2 + 56 + v34), (a2 + 56 + v47), *v45);
        v48 = *(v45 - 2);
        v49 = sub_1000766C0(a1, a2, v48);
        sub_100076B24(a2, v48, v34 - v52, v49);
        v34 += *v45;
        v31 = *(a2 + 36);
      }

      ++v36;
      v45 += 3;
    }

    while (v36 < v31);
  }

  *(a2 + 42) = v52;
  *(a2 + 44) = v34 - v52;
  v50 = *(a1 + 4) - (v34 + *(a2 + 46)) + ((*(a2 + 32) << 31 >> 31) & 0xFFD8) + 65480;
  *(a2 + 46) = *(a1 + 4) - (v34 + *(a2 + 46)) + (((*(a2 + 32) << 15) >> 15) & 0xFFD8) - 56;
  *(a2 + 48) = 0xFFFF0000FFFFLL;

  free(__base);
}

uint64_t sub_100077028(uint64_t a1, _WORD *a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if (a4)
  {
    if (a4 == 65534)
    {
      LOWORD(v5) = -2;
    }

    else if (a5)
    {
      v5 = *a5;
      if (v5 >= 0xFFFE)
      {
        sub_10007AD54();
      }

      v6 = (a4 + 7) & 0xFFFFFFF8;
      if ((*a1 & 0x40) != 0)
      {
        v6 = a4;
      }

      if (a3 >= 2)
      {
        sub_10007ABC8();
      }

      v7 = 24;
      if (a3)
      {
        v7 = 26;
        v8 = -40;
        if ((a2[16] & 1) == 0)
        {
          v8 = 0;
        }

        v9 = (a2 + *(a1 + 4) + v8 - v5);
      }

      else
      {
        v9 = (a2 + a2[21] + v5 + 56);
      }

      if (v6 > v9[1] || (v13 = &a2[v7], v14 = v13[1], v6 > v14))
      {
        sub_10007AD28();
      }

      v13[1] = v14 - v6;
      v15 = v9[1] - v6;
      if (v15 < 4)
      {
        *a5 = *v9;
      }

      else
      {
        v9[1] = v15;
        if (a3)
        {
          v15 = -v15;
        }

        LOWORD(v5) = v5 + v15;
      }
    }

    else
    {
      if ((*a1 & 0x40) != 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = (a4 + 7) & 0xFFFFFFF8;
      }

      v11 = a2[23];
      if (v10 > v11)
      {
        sub_10007ADAC();
      }

      v12 = v11 - v10;
      a2[23] = v12;
      if (a3 >= 2)
      {
        sub_10007AD80();
      }

      if (a3)
      {
        LODWORD(v5) = *(a1 + 4) - a2[22] - (a2[21] + v12) + ((a2[16] << 31 >> 31) & 0xFFD8) + 65480;
      }

      else
      {
        LOWORD(v5) = a2[22];
        a2[22] = v5 + v10;
      }
    }
  }

  else
  {
    LOWORD(v5) = -1;
  }

  return v5;
}

uint64_t sub_1000771B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 12))
  {
    v10 = (*a1 & 4) == 0;
  }

  else
  {
    v10 = 0;
  }

  v60 = *(a2 + 32);
  v11 = *(a2 + 44);
  v63 = v11;
  if (*(a2 + 36))
  {
    v61 = v10;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = sub_100076680(a2, v14);
      v16 = sub_1000766C0(a1, a2, v14);
      v17 = v16;
      v18 = *a1;
      if ((*a1 & 0x40) != 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = (v16 + 7) & 0x1FFF8;
      }

      if (v11 <= v15 || v19 > v11 - v15)
      {
        log_err("%s:%d: key %d offset+length %u+%u exceeds key space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
        v12 = (v12 + 1);
        v18 = *a1;
      }

      if ((v18 & 0x40) == 0 && (v15 & 7) != 0)
      {
        log_err("%s:%d: key %d offset %u is not aligned\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
        v12 = (v12 + 1);
      }

      v20 = *(a1 + 8);
      if (v20 && v20 != v17)
      {
        v57 = *(a1 + 8);
        log_err("%s:%d: key %d length %u not equal to fixed key length %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
        v12 = (v12 + 1);
      }

      v13 += v19;
      ++v14;
    }

    while (v14 < *(a2 + 36));
    if (v13 > v11)
    {
      log_err("%s:%d: sum of key lengths %u is greater than key space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
      v12 = (v12 + 1);
    }

    v10 = v61;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v21 = *(a2 + 32);
  v22 = *(a1 + 4) - *(a2 + 46) - (*(a2 + 42) + *(a2 + 44)) + ((v21 << 31 >> 31) & 0xFFFFFFD8);
  if ((v21 & 8) != 0)
  {
    v23 = *(a1 + 16) + 8;
  }

  else
  {
    v23 = 8;
  }

  v59 = v23;
  v24 = v22 - 56;
  v62 = v22 - 56;
  v25 = 0;
  if (*(a2 + 36))
  {
    v26 = 0;
    v27 = (v60 & 2) == 0 || v10;
    while (1)
    {
      v28 = sub_100076700(a2, v26);
      v29 = sub_100076748(a1, a2, v26);
      v30 = v29;
      if (v29 == 65534)
      {
        v31 = 0;
        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if ((*a1 & 0x40) != 0)
        {
          v31 = v29;
        }

        else
        {
          v31 = (v29 + 7) & 0x1FFF8;
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 0xFFFF && v29)
      {
        log_err("%s:%d: found ghost value %d but length %u != 0\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
      }

      else
      {
        if (v28 != 65534 || v29 == 65534)
        {
          if (v28 > 0xFFFD)
          {
            goto LABEL_59;
          }

LABEL_37:
          if (v62 < v28)
          {
            goto LABEL_41;
          }

          v32 = *a1;
          v33 = (v29 + 7) & 0x1FFF8;
          if ((*a1 & 0x40) != 0)
          {
            v33 = v29;
          }

          if (v33 > v28)
          {
LABEL_41:
            log_err("%s:%d: val %d offset-length %u-%u exceeds val space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
            v12 = (v12 + 1);
            v32 = *a1;
          }

          if ((v32 & 0x40) == 0 && (v28 & 7) != 0)
          {
            log_err("%s:%d: val %d offset %u is not aligned\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
            v12 = (v12 + 1);
          }

          if ((v60 & 2) != 0 || v59 == v30)
          {
            if ((v60 & 2) == 0)
            {
              goto LABEL_59;
            }

            v34 = *(a1 + 12);
            if (!v34 || v34 == v30)
            {
              goto LABEL_59;
            }

            v58 = *(a1 + 12);
            log_err("%s:%d: val %d length %u not equal to fixed val length %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
          }

          else
          {
            log_err("%s:%d: val %d length %u in non-leaf is not %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
          }

          goto LABEL_58;
        }

        log_err("%s:%d: found MT ghost offset %d but length is %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
      }

LABEL_58:
      v12 = (v12 + 1);
LABEL_59:
      v25 += v31;
      if (++v26 >= *(a2 + 36))
      {
        v24 = v62;
        if (v25 > v62)
        {
          log_err("%s:%d: sum of val lengths %u is greater than val space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
          v12 = (v12 + 1);
        }

        v11 = v63;
        break;
      }
    }
  }

  v35 = (a2 + 48);
  v36 = *(a2 + 50);
  if (v13 + v36 != v11)
  {
    v53 = *(a2 + 50);
    log_err("%s:%d: sum of key lengths %u + total free list space %u != key space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
    v12 = (v12 + 1);
  }

  v37 = *v35;
  if (v37 != 0xFFFF)
  {
    if (v11 <= v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = 0;
      do
      {
        v39 = v11 - v37;
        if (v11 - v37 <= 3)
        {
          break;
        }

        v35 = (a2 + 56 + *(a2 + 42) + v37);
        v40 = v35[1];
        v41 = (v40 + 7) & 0x1FFF8;
        if ((*a1 & 0x40) != 0)
        {
          v41 = v35[1];
        }

        if (v41 > v39)
        {
          v54 = v35[1];
          log_err("%s:%d: key free list elem offset+length %u+%u exceeds key space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
          v12 = (v12 + 1);
        }

        if (v40 <= 3)
        {
          log_err("%s:%d: key free list elem length %u is impossibly low\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
          v12 = (v12 + 1);
        }

        v38 += v40;
        v37 = *v35;
        if (v37 == 0xFFFF)
        {
          v42 = 1;
          goto LABEL_83;
        }

        v11 = v63;
      }

      while (v63 > v37);
    }

    log_err("%s:%d: key free list entry at offset %u+%lu exceeds key space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
    v12 = (v12 + 1);
    v42 = *v35 == -1;
LABEL_83:
    v43 = v42 && v38 > v36;
    v24 = v62;
    if (v43)
    {
      log_err("%s:%d: sum of key free list lengths %u is greater than key free list space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
      v12 = (v12 + 1);
    }
  }

  v44 = (a2 + 52);
  v45 = *(a2 + 54);
  if (v25 + v45 != v24)
  {
    v55 = *(a2 + 54);
    log_err("%s:%d: sum of val lengths %u + total free list space %u != val space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
    v12 = (v12 + 1);
  }

  v46 = *v44;
  if (v46 != 0xFFFF)
  {
    v47 = 0;
    if (v46 < 4 || v24 < v46)
    {
LABEL_109:
      log_err("%s:%d: val free list entry at offset %u+%lu exceeds val space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
      v12 = (v12 + 1);
      if (*v44 != -1)
      {
        return v12;
      }
    }

    else
    {
      v47 = 0;
      while (1)
      {
        if (*(a2 + 32))
        {
          v48 = -40;
        }

        else
        {
          v48 = 0;
        }

        v44 = (a2 + *(a1 + 4) + v48 - v46);
        v49 = v44[1];
        v50 = (v49 + 7) & 0x1FFF8;
        if ((*a1 & 0x40) != 0)
        {
          v50 = v44[1];
        }

        if (v50 > v46)
        {
          v56 = v44[1];
          log_err("%s:%d: val free list elem offset+length %u+%u exceeds val space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
          v12 = (v12 + 1);
        }

        if (v49 <= 3)
        {
          log_err("%s:%d: val free list elem length %u is impossibly low\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
          v12 = (v12 + 1);
        }

        v47 += v49;
        v46 = *v44;
        if (v46 == 0xFFFF)
        {
          break;
        }

        if (v46 < 4 || v62 < v46)
        {
          goto LABEL_109;
        }
      }
    }

    if (v47 > v45)
    {
      log_err("%s:%d: sum of val free list lengths %u is greater than val free list space %u\n", a2, a3, a4, a5, a6, a7, a8, "btree_node_validate");
      return (v12 + 1);
    }
  }

  return v12;
}

uint64_t tree_insert(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*(a1 + 44) != 2)
  {
    return 22;
  }

  v7 = a5;
  v9 = a3;
  v36 = 0;
  __src = 0;
  v35 = 0;
  if (a3)
  {
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v7 = &unk_1000B3251;
    if (a6 != 65534 && a6)
    {
      return 14;
    }

    goto LABEL_4;
  }

  if (a4)
  {
    return 14;
  }

  v9 = &unk_1000B3250;
  if (!a5)
  {
    goto LABEL_12;
  }

LABEL_4:
  v41 = 0;
  v12 = sub_100077FCC(a1, a2, 1, &__src, &v41);
  if (v12)
  {
    goto LABEL_40;
  }

  if ((*(__src + 16) & 8) != 0)
  {
    v12 = 45;
    goto LABEL_40;
  }

  v38 = *v41;
  v13 = *(a1 + 36);
  v14 = *(a1 + 56);
  v39 = v13;
  v40 = v14;
  v15 = DWORD2(v38);
  if (!DWORD2(v38))
  {
    if (!a4 || ((DWORD1(v38) - 160) >> 2) - v13 - 8 < a4)
    {
      goto LABEL_39;
    }

LABEL_18:
    if (!HIDWORD(v38) || HIDWORD(v38) == a6 || (v38 & 4) != 0 && (a6 == 65534 || !a6))
    {
      v16 = (a4 + 7) & 0xFFFFFFF8;
      if ((v38 & 0x40) != 0)
      {
        v16 = a4;
      }

      v17 = (a6 + 7) & 0xFFFFFFF8;
      if ((v38 & 0x40) != 0)
      {
        v17 = a6;
      }

      if (a6 == 65534)
      {
        v17 = 0;
      }

      v18 = v17 + v16;
      v19 = ((DWORD1(v38) - 160) >> 2) - v13 - 8;
      if ((v38 & 0x40) == 0)
      {
        v15 = (DWORD2(v38) + 7) & 0xFFFFFFF8;
      }

      v20 = (HIDWORD(v38) + 7) & 0xFFFFFFF8;
      if ((v38 & 0x40) != 0)
      {
        v20 = HIDWORD(v38);
      }

      if (DWORD2(v38) - 1 < v19)
      {
        v19 = v15;
      }

      v21 = v19 + v20;
      if (!HIDWORD(v38))
      {
        v21 = DWORD1(v38) - 160;
      }

      if (v18 <= v21)
      {
        v23 = sub_100078E14(a1, a2, v41, __src, v9, a4, v7, a6, &v36, &v35, &v34);
        v28 = v35;
        if (v23)
        {
          goto LABEL_48;
        }

        v29 = __src;
        if ((*(__src + 16) & 2) == 0 && v35)
        {
          sub_10007ADD8();
        }

        v30 = v36;
        if (v36 && (v23 = sub_1000791A0(a1, a2, v41, __src, v36, v35), v23))
        {
LABEL_48:
          v12 = v23;
        }

        else
        {
          v31 = v41;
          if (*(v41 + 4) < a4)
          {
            *(v41 + 4) = a4;
          }

          if (a6 != 65534 && *(v31 + 5) < a6)
          {
            *(v31 + 5) = a6;
          }

          if (sub_1000771B8(&v38, __src, v24, v29, v30, v25, v26, v27))
          {
            abort();
          }

          sub_1000793A8(a1, a2, __src, v32, v33);
          v12 = 0;
        }

        if (v28 && *(a1 + 40) != 0x8000000)
        {
          free(v28);
        }
      }

      else
      {
        v12 = 34;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (DWORD2(v38) == a4)
  {
    goto LABEL_18;
  }

LABEL_39:
  v12 = 22;
LABEL_40:
  if (v36 && *(a1 + 40) != 0x8000000)
  {
    free(v36);
  }

  if (__src && *(a1 + 40) != 0x8000000)
  {
    free(__src);
  }

  return v12;
}

uint64_t tree_remove_at_level(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (*(a1 + 44) == 2)
  {
    return sub_100077CA8(a1, a2, a3, a4, a5);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100077CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v36 = 0;
  v31 = 0;
  __src = 0;
  v10 = sub_100077FCC(a1, a2, 1, &__src, &v36);
  if (v10)
  {
    goto LABEL_2;
  }

  v11 = __src;
  if (*(__src + 17) >= a5)
  {
    if ((*(__src + 16) & 8) != 0)
    {
      v10 = 45;
      goto LABEL_2;
    }

    v30 = 0;
    v33 = *v36;
    v13 = *(a1 + 56);
    v34 = *(a1 + 36);
    v35 = v13;
    v14 = sub_10007A5E4(a1, a2, v36, __src, a3, a4, &v31, &v30, a5);
    v21 = v31;
    if (v14)
    {
      v10 = v14;
    }

    else
    {
      if (v31)
      {
        v22 = sub_1000791A0(a1, a2, v36, __src, v31, 0);
        if (v22)
        {
          v10 = v22;
LABEL_37:
          if (*(a1 + 40) != 0x8000000)
          {
            free(v21);
          }

LABEL_2:
          v11 = __src;
          if (!__src)
          {
            return v10;
          }

          goto LABEL_6;
        }
      }

      v23 = __src;
      while (1)
      {
        v24 = *(v23 + 9);
        if (v24 != 1)
        {
          goto LABEL_31;
        }

        if ((v23[16] & 2) != 0)
        {
          goto LABEL_34;
        }

        v25 = v23[17];
        v26 = v36;
        v38 = *v36;
        v27 = *(a1 + 36);
        v40 = *(a1 + 56);
        v39 = v27;
        v37 = 0;
        v28 = sub_100078694(a1, a2, &v38, v23, 0, 1, &v37);
        if (v28)
        {
          break;
        }

        if (sub_1000767E0(&v38, v37, 0) >= 0x28)
        {
          sub_10007A49C(&v38, v23, 0);
          if (*(v23 + 9))
          {
            sub_10007AE04();
          }

          if (v23[17] == 1)
          {
            v29 = 3;
          }

          else
          {
            v29 = 1;
          }

          sub_10007A3F0(&v38, v23, v29, v23[17] - 1);
          sub_10007A190(&v38, v37, v23, 0, -1, 0, 0, 0, 0, 0);
          if (*(v37 + 9))
          {
            sub_10007AE30();
          }

          fsck_tree_node_deallocate(a1, *(a1 + 40), *(v37 + 2), *(v37 + 1));
          if (*(a1 + 40) != 0x8000000)
          {
            free(v37);
          }

          --*(v26 + 4);
        }

        v23 = __src;
        if (*(__src + 17) == v25)
        {
          v24 = *(__src + 9);
LABEL_31:
          if (!v24 && (v23[16] & 2) == 0)
          {
            sub_10007A3F0(&v33, v23, 3, 0);
            v23 = __src;
          }

LABEL_34:
          if (sub_1000771B8(&v33, v23, v15, v16, v17, v18, v19, v20))
          {
            abort();
          }

          sub_1000793A8(a1, a2, __src);
          v10 = 0;
          v21 = v31;
          goto LABEL_36;
        }
      }

      v10 = v28;
      if (v37 && *(a1 + 40) != 0x8000000)
      {
        free(v37);
      }
    }

LABEL_36:
    if (!v21)
    {
      goto LABEL_2;
    }

    goto LABEL_37;
  }

  v10 = 22;
LABEL_6:
  if (*(a1 + 40) != 0x8000000)
  {
    free(v11);
  }

  return v10;
}

uint64_t tree_remove(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 44) == 2)
  {
    return sub_100077CA8(a1, a2, a3, a4, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100077FCC(uint64_t a1, uint64_t a2, int a3, void **a4, void *a5)
{
  result = fsck_tree_node_read(a1, a4, *(a1 + 40), a2, *(a1 + 56));
  if (!result)
  {
    v10 = *a4;
    result = sub_100078358(a1, v10, 1, 61455);
    if (!result)
    {
      v11 = &v10[*(a1 + 24)];
      v13 = *(v11 - 40);
      v12 = *(a1 + 56);
      v14 = *(a1 + 36);
      v15 = v12;
      if (!a3 || (result = sub_100078B10(&v13, v10), !result))
      {
        result = 0;
        if (a5)
        {
          *a5 = v11 - 40;
        }
      }
    }
  }

  return result;
}

uint64_t tree_key_count(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 44) != 2)
  {
    return 22;
  }

  v7 = 0;
  v8 = 0;
  v5 = sub_100077FCC(a1, a2, 0, &v7, &v8);
  if (!v5)
  {
    *a3 = *(v8 + 24);
  }

  if (v7 && *(a1 + 40) != 0x8000000)
  {
    free(v7);
  }

  return v5;
}

uint64_t tree_node_count(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 44) != 2)
  {
    return 22;
  }

  v7 = 0;
  v8 = 0;
  v5 = sub_100077FCC(a1, a2, 0, &v7, &v8);
  if (!v5)
  {
    *a3 = *(v8 + 32);
  }

  if (v7 && *(a1 + 40) != 0x8000000)
  {
    free(v7);
  }

  return v5;
}

uint64_t tree_create(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 44) == 2)
  {
    return sub_1000781BC(a1, a2, a3);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_1000781BC(uint64_t a1, uint64_t a2, int a3)
{
  v13 = 0;
  v14 = 0;
  __src = 0;
  if (*(a1 + 56))
  {
    return 17;
  }

  v10 = a3;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  result = sub_10007A068(a1, a2, &v10, 3, 0, &__src);
  if (!result)
  {
    v8 = __src;
    ++*(__src + *(a1 + 24) - 8);
    sub_1000793A8(a1, a2, v8, v6, v7);
    *(a1 + 56) = *(v8 + 1);
    if (*(a1 + 40) != 0x8000000)
    {
      free(v8);
    }

    return 0;
  }

  return result;
}

uint64_t tree_destroy(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 44) != 2)
  {
    return 22;
  }

  v8 = 0;
  if (!*(a1 + 56))
  {
    return 0;
  }

  v12 = 0;
  v4 = sub_100077FCC(a1, a2, 1, &v8, &v12);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v9 = *v12;
    v6 = *(a1 + 56);
    v10 = *(a1 + 36);
    v11 = v6;
    v5 = sub_10007A8D4(a1, a2, &v9, v8);
    if (!v5)
    {
      *(a1 + 56) = 0;
    }
  }

  if (v8 && *(a1 + 40) != 0x8000000)
  {
    free(v8);
  }

  return v5;
}

uint64_t sub_100078358(unsigned int *a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 32);
  if ((v4 & 0x10) != 0)
  {
    v5 = 0;
    v6 = 0;
    if (a3)
    {
      if ((v4 & 1) == 0)
      {
LABEL_4:
        v7 = 0;
        v8 = v5 + 1;
        goto LABEL_24;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = *(a2 + 28);
    v10 = a1[12];
    v22 = v9 == v10;
    v5 = v9 != v10;
    v11 = *(a2 + 24);
    if (v22)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (a3)
    {
      if (v11 != 2)
      {
        v5 = v12;
      }

      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v13 = a1[6];
      v14 = a2 + v13;
      v15 = *(a2 + v13 - 40);
      if (*(a2 + v13 - 36) != v13)
      {
        ++v5;
      }

      v16 = *(v14 - 32);
      v17 = *(v14 - 28);
      if (v16 != a1[7])
      {
        ++v5;
      }

      if (v17 != a1[8])
      {
        ++v5;
      }

      v8 = v5 + ((a1[13] != 0) ^ ((v15 & 0x80) >> 7)) + ((a1[13] != 0) ^ ((v15 & 0x100) >> 8));
      v7 = -40;
      goto LABEL_24;
    }

    if (v11 == 3)
    {
      v6 = v5;
    }

    else
    {
      v6 = v12;
    }
  }

  v8 = v6 + (v4 & 1);
  v7 = -40;
  if ((v4 & 1) == 0)
  {
    v7 = 0;
  }

LABEL_24:
  v18 = (a1[13] != 0) ^ ((v4 & 8) >> 3);
  v19 = (v4 >> 3) & 1 ^ ((v4 & 0x10) >> 4);
  v20 = (*(a2 + 34) == 0) ^ ((v4 & 2) >> 1);
  v21 = v7 + a1[6] - 56;
  v22 = (v4 & 4) == 0;
  if ((v4 & 4) != 0)
  {
    v23 = 3;
  }

  else
  {
    v23 = 7;
  }

  if (v22)
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  v25 = a4 == 61455 || *(a2 + 34) == a4;
  v26 = v8 + v19 + v18 + v20;
  if (!v25)
  {
    ++v26;
  }

  v27 = *(a2 + 42);
  if (*(a2 + 40))
  {
    ++v26;
  }

  if ((v23 & v27) != 0)
  {
    ++v26;
  }

  if (*(a2 + 36) <= v27 >> v24)
  {
    v28 = v26;
  }

  else
  {
    v28 = v26 + 1;
  }

  v29 = v21 >= v27;
  v30 = v21 - v27;
  v31 = *(a2 + 44);
  if (!v29)
  {
    ++v28;
  }

  v29 = v30 >= v31;
  v32 = v30 - v31;
  if (!v29)
  {
    ++v28;
  }

  if (v28 | (v32 < *(a2 + 46)))
  {
    return 92;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000784E8(uint64_t result, int a2, unsigned int a3)
{
  if (result)
  {
    v5 = result;
    v6 = (16 * a2) | 8;
    v7 = malloc_type_calloc(1uLL, v6 + a3 * a2, 0xA8FE9B29uLL);
    *v5 = v7;
    if (v7)
    {
      *v7 = a2;
      v7[1] = v7 + v6;
      if (a2 >= 2)
      {
        v8 = 0;
        do
        {
          *(*v5 + v8 + 24) = *(*v5 + v8 + 8) + a3;
          v8 += 16;
        }

        while (16 * a2 - 16 != v8);
      }

      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t sub_10007859C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, int *a7)
{
  result = sub_100078754(a1, a2, a3, a4, a5, a6, a7);
  if (!result && !*a7 && *a6 >= 1)
  {
    --*a6;
  }

  return result;
}

uint64_t sub_1000785E0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  if ((*(a2 + 32) & 8) != 0)
  {
    v7 = *(a1 + 16) + 8;
  }

  else
  {
    v7 = 8;
  }

  v11 = 0;
  v10 = 0;
  result = sub_10007893C(a1, a2, a3, &v11, &v10);
  if (!result)
  {
    result = 92;
    if (v11)
    {
      if (v10 == v7)
      {
        v9 = *v11;
        *a4 = *v11;
        result = 0;
        if ((*(a2 + 32) & 8) != 0)
        {
          *a4 = *(a1 + 24) + v9;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100078694(unsigned int *a1, uint64_t a2, _DWORD *a3, uint64_t a4, unsigned int a5, int a6, uint64_t *a7)
{
  v12 = *(a4 + 34);
  v15 = 0;
  result = sub_1000785E0(a3, a4, a5, &v15);
  if (!result)
  {
    result = fsck_tree_node_read(a1, a7, a1[10], a2, v15);
    if (!result)
    {
      v14 = *a7;
      result = sub_100078358(a1, v14, 0, (v12 - 1));
      if (!result)
      {
        if (!a6)
        {
          return 0;
        }

        result = sub_100078B10(a3, v14);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100078754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, int *a7)
{
  v9 = *(a3 + 36) - 1;
  if (v9 < 0)
  {
    v20 = 0;
    v15 = 0;
LABEL_16:
    result = 0;
    *a6 = v15;
    *a7 = v20;
  }

  else
  {
    v15 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    while (1)
    {
      v16 = (v9 + v15) / 2;
      result = sub_100078874(a2, a3, v16, &v22, &v21);
      if (result)
      {
        break;
      }

      v18 = *(a1 + 8);
      v19 = v18 ? *(v18 + 40) : 0;
      result = (*(a1 + 16))(v19, a4, a5, v22, v21, &v23);
      if (result)
      {
        break;
      }

      if (!v23)
      {
        v20 = 1;
        v15 = (v9 + v15) / 2;
        goto LABEL_16;
      }

      if (v23 < 0)
      {
        v9 = v16 - 1;
      }

      else
      {
        v15 = v16 + 1;
      }

      if (v15 > v9)
      {
        v20 = 0;
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_100078874(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int *a5)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 22;
  }

  if (*(a2 + 36) <= a3)
  {
    return 22;
  }

  v10 = sub_100076680(a2, a3);
  if (*(a2 + 44) <= v10)
  {
    return 92;
  }

  v11 = v10;
  *a4 = a2 + *(a2 + 42) + v10 + 56;
  v12 = sub_1000766C0(a1, a2, a3);
  if (*(a2 + 44) - v11 < v12)
  {
    return 92;
  }

  v14 = v12;
  result = 0;
  *a5 = v14;
  return result;
}

uint64_t sub_10007893C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, unsigned int *a5)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 22;
  }

  if (*(a2 + 36) <= a3)
  {
    return 22;
  }

  v10 = sub_100076700(a2, a3);
  v11 = v10;
  v12 = *(a1 + 4);
  v13 = *(a2 + 32);
  v14 = v12 - *(a2 + 46) - (*(a2 + 42) + *(a2 + 44)) + ((v13 << 31 >> 31) & 0xFFFFFFD8) - 56;
  if (v10 <= 0xFFFD && v14 < v10)
  {
    return 92;
  }

  v15 = a2 + v12;
  v16 = (v13 & 1) == 0;
  v17 = -40;
  if (v16)
  {
    v17 = 0;
  }

  v18 = v15 + v17 - v10;
  if (v14 < v10)
  {
    v18 = 0;
  }

  *a4 = v18;
  v19 = sub_100076748(a1, a2, a3);
  v20 = v19;
  if (v19 > v11 && v19 != 65534)
  {
    return 92;
  }

  result = 0;
  *a5 = v20;
  return result;
}

uint64_t sub_100078A54(void *__src, size_t __n, const void *a3, unsigned int a4, void *__dst, _DWORD *a6, void *a7, unsigned int *a8)
{
  v13 = __n;
  if (a4 == 65534)
  {
    v14 = 0;
LABEL_3:
    if (*a6 >= __n)
    {
      memcpy(__dst, __src, __n);
      memcpy(a7, a3, v14);
      result = 0;
      *a6 = v13;
      *a8 = a4;
      return result;
    }

    return 34;
  }

  if (!a3 && a4)
  {
    return 92;
  }

  v14 = a4;
  if (*a8 >= a4)
  {
    goto LABEL_3;
  }

  return 34;
}

uint64_t sub_100078B10(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = *(a2 + 32);
  v4 = a1[1] - *(a2 + 46) - (v2 + *(a2 + 42)) + ((v3 << 31 >> 31) & 0xFFFFFFD8) - 56;
  if ((v3 & 2) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      v5 = (*a1 >> 2) & 1;
      if ((v3 & 4) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
      if ((v3 & 4) == 0)
      {
LABEL_6:
        v7 = *(a2 + 36);
        if (v7)
        {
          for (i = (a2 + 62); ; i += 4)
          {
            v9 = *(i - 3);
            if (v2 <= v9)
            {
              break;
            }

            v10 = *(i - 2);
            if ((*a1 & 0x40) == 0)
            {
              v10 = (v10 + 7) & 0x1FFF8;
            }

            if (v10 > v2 - v9)
            {
              break;
            }

            v11 = *(i - 1);
            v12 = v11 > 0xFFFD ? v5 : 0;
            if ((v12 & 1) == 0)
            {
              if (v4 < v11)
              {
                break;
              }

              v13 = (*a1 & 0x40) != 0 ? *i : (*i + 7) & 0x1FFF8;
              if (v13 > v11)
              {
                break;
              }
            }

            if (!--v7)
            {
              return v7;
            }
          }

          return 92;
        }

        return v7;
      }
    }

    v14 = a1[2];
    goto LABEL_28;
  }

  if ((v3 & 4) == 0)
  {
    LOBYTE(v5) = 0;
    goto LABEL_6;
  }

  v14 = a1[2];
  LOBYTE(v5) = 0;
  if ((v3 & 8) != 0)
  {
    v6 = a1[4] + 8;
  }

  else
  {
    v6 = 8;
  }

LABEL_28:
  v15 = *(a2 + 36);
  if (v15)
  {
    for (j = (a2 + 58); ; j += 2)
    {
      v17 = *(j - 1);
      if (v2 <= v17)
      {
        break;
      }

      v18 = (*a1 & 0x40) != 0 ? v14 : (v14 + 7) & 0xFFFFFFF8;
      if (v18 > v2 - v17)
      {
        break;
      }

      v19 = *j;
      if (v19 > 0xFFFD)
      {
        v20 = v5;
      }

      else
      {
        v20 = 0;
      }

      if ((v20 & 1) == 0)
      {
        v21 = (*a1 & 0x40) != 0 ? v6 : (v6 + 7) & 0xFFFFFFF8;
        v7 = 92;
        if (v4 < v19 || v21 > v19)
        {
          return v7;
        }
      }

      if (!--v15)
      {
        return 0;
      }
    }

    return 92;
  }

  return 0;
}

uint64_t sub_100078CA8(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  if (*v2 <= a2)
  {
    return 2;
  }

  v4 = *(a1 + 48);
  v14 = **(a1 + 64);
  v5 = *(v4 + 36);
  v16 = *(v4 + 56);
  v15 = v5;
  v6 = &v2[4 * a2];
  v9 = *(v6 + 1);
  v8 = (v6 + 2);
  v7 = v9;
  v10 = *(v8 + 2);
  if (v10 >= *(v9 + 36))
  {
    sub_10007AE5C();
  }

  v11 = v10 + 1;
  *(v8 + 2) = v11;
  if (v11 != *(v7 + 36))
  {
    return 0;
  }

  v12 = a2 + 1;
  result = sub_100078CA8(a1, v12);
  if (!result)
  {
    *(v8 + 2) = 0;
    result = sub_100078694(*(a1 + 48), *(a1 + 56), &v14, *(*(a1 + 72) + 16 * v12 + 8), *(*(a1 + 72) + 16 * v12 + 16), 0, v8);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100078D88(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (a3 + *(a2 + 36) + 7) & 0xFFFFFFF8;
  v4 = *(a2 + 32);
  if ((v4 & 4) == 0)
  {
    return 8 * v3;
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a1 + 12);
  }

  else if ((v4 & 8) != 0)
  {
    v6 = *(a1 + 16) + 8;
  }

  else
  {
    v6 = 8;
  }

  if ((((*(a1 + 4) - 56) / ((v6 + *(a1 + 8)) + 4)) & 0xFFFFFFFE) > v3)
  {
    v3 = ((*(a1 + 4) - 56) / ((v6 + *(a1 + 8)) + 4)) & 0xFFFFFFFE;
  }

  if ((*a1 & 4) == 0)
  {
    v3 = ((*(a1 + 4) - 56) / ((v6 + *(a1 + 8)) + 4)) & 0xFFFFFFFE;
  }

  return 4 * v3;
}

uint64_t sub_100078DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100078E14(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, const void *a5, uint64_t a6, void *a7, uint64_t a8, void **a9, void **a10, _BYTE *a11)
{
  v18 = *(a1 + 56);
  v47 = 0;
  LODWORD(v47) = *(a1 + 36);
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  *a10 = 0;
  *a9 = 0;
  v46 = *a3;
  v48 = v18;
  if ((*(a4 + 32) & 2) != 0)
  {
    v19 = sub_100078754(a1, &v46, a4, a5, a6, &v53 + 1, &v53);
    if (!v19)
    {
      v33 = a7;
      v34 = HIDWORD(v53);
      if (v53)
      {
        if (!btree_node_update_maybe(&v46, a4, HIDWORD(v53), a5, a6, v33, a8))
        {
          v19 = sub_100079974(a1, a3, a4, v34, 1, a5, a6, v33, a8, a9, a10);
          if (v19)
          {
            goto LABEL_9;
          }
        }

        v44 = a10;
        v20 = v34;
        v24 = 0;
        v22 = 0;
        v23 = 0;
      }

      else
      {
        if ((sub_10007975C(&v46, a4, HIDWORD(v53), a5, a6, v33, a8) & 1) == 0)
        {
          v19 = sub_100079974(a1, a3, a4, v34, 0, a5, a6, v33, a8, a9, a10);
          if (v19)
          {
            goto LABEL_9;
          }
        }

        v44 = a10;
        v20 = v34;
        v24 = 0;
        v22 = 0;
        v23 = 0;
        ++*(a3 + 3);
      }

LABEL_24:
      v35 = *(a4 + 32);
      if ((v35 & 1) == 0)
      {
        v36 = (v35 >> 1) & 1;
        if (v23)
        {
          v36 = 1;
        }

        if (v22)
        {
          v36 = 1;
        }

        if ((v36 | v24) == 1)
        {
          if (sub_1000771B8(&v46, a4, v25, v26, v27, v28, v29, v30))
          {
            goto LABEL_44;
          }

          sub_1000793A8(a1, a2, a4, v37, v38);
        }
      }

      if (*a9)
      {
        if (sub_1000771B8(&v46, *a9, v25, v26, v27, v28, v29, v30))
        {
          goto LABEL_44;
        }

        sub_1000793A8(a1, a2, *a9, v39, v40);
      }

      if (!*v44)
      {
        goto LABEL_38;
      }

      if (!sub_1000771B8(&v46, *v44, v25, v26, v27, v28, v29, v30))
      {
        sub_1000793A8(a1, a2, *v44, v41, v42);
LABEL_38:
        if (v20)
        {
          LOBYTE(v43) = 0;
        }

        else
        {
          v43 = v24 | ((*(a4 + 32) & 2) >> 1);
        }

        v31 = 0;
        *a11 = v43;
        if (!v22)
        {
          goto LABEL_10;
        }

        goto LABEL_42;
      }

LABEL_44:
      abort();
    }

LABEL_9:
    v31 = v19;
    goto LABEL_10;
  }

  v19 = sub_10007859C(a1, &v46, a4, a5, a6, &v53 + 1, &v53);
  if (v19)
  {
    goto LABEL_9;
  }

  v44 = a10;
  v20 = HIDWORD(v53);
  v19 = sub_100078694(a1, a2, &v46, a4, HIDWORD(v53), 1, &v52);
  if (v19)
  {
    goto LABEL_9;
  }

  v21 = sub_100078E14(a1, a2, a3, v52, a5, a6, a7, a8, &v51, &v50, &v49);
  v22 = v50;
  if (!v21)
  {
    v23 = v51;
    v24 = v49;
    v21 = sub_100079498(a1, a3, a4, v20, v52, v51, v50, v49, a9);
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  v31 = v21;
  if (!v22)
  {
    goto LABEL_10;
  }

LABEL_42:
  if (*(a1 + 40) != 0x8000000)
  {
    free(v22);
  }

LABEL_10:
  if (v51 && *(a1 + 40) != 0x8000000)
  {
    free(v51);
  }

  if (v52 && *(a1 + 40) != 0x8000000)
  {
    free(v52);
  }

  return v31;
}

uint64_t sub_1000791A0(uint64_t a1, int a2, __int128 *a3, uint64_t a4, _WORD *a5, _WORD *a6)
{
  v28[0] = 0;
  v28[1] = a5;
  v28[2] = a6;
  v25 = *a3;
  v10 = *(a1 + 36);
  v27 = *(a1 + 56);
  v26 = v10;
  v11 = sub_10007A068(a1, *(a4 + 16), &v25, *(a4 + 32) & 2, *(a4 + 34), v28);
  v12 = v28[0];
  if (v11)
  {
    if (v28[0])
    {
LABEL_3:
      fsck_tree_node_deallocate(a1, *(a1 + 40), *(v12 + 2), *(v12 + 1));
      if (*(a1 + 40) != 0x8000000)
      {
        free(v12);
      }
    }
  }

  else
  {
    sub_10007A190(&v25, a4, v28[0], 0, -1, 0, 0, 0, 0, 0);
    if (*(a4 + 36))
    {
      sub_10007AE88();
    }

    if (sub_1000771B8(&v25, v12, v13, v14, v15, v16, v17, v18))
    {
      abort();
    }

    sub_1000793A8(a1, a2, v12);
    sub_10007A3F0(&v25, a4, 1, *(a4 + 34) + 1);
    v19 = 0;
    while (1)
    {
      v24 = 0;
      v23 = 0;
      v20 = v28[v19];
      if (!v20)
      {
LABEL_12:
        ++*(a3 + 4);
        if (*(a1 + 40) != 0x8000000)
        {
          free(v12);
        }

        return 0;
      }

      v21 = sub_100078874(&v25, v28[v19], 0, &v24, &v23);
      if (v21)
      {
        break;
      }

      if ((sub_10007975C(&v25, a4, v19, v24, v23, v20 + 4, 8u) & 1) == 0)
      {
        sub_10007AEB4();
      }

      if (++v19 == 3)
      {
        goto LABEL_12;
      }
    }

    v11 = v21;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  return v11;
}

uint64_t sub_1000793A8(uint64_t a1, uint64_t a2, char *__src, int8x16_t a4, int8x16_t a5)
{
  v8 = *(a1 + 40);
  if (v8)
  {
    goto LABEL_2;
  }

  v10 = *(a1 + 8);
  if (!v10 || (v11 = v10[8]) == 0 || *(__src + 2) > v11)
  {
LABEL_7:
    fletcher64_set_cksum(__src, (__src + 8), (*(a1 + 24) - 8), 0, a4, a5);
    v9 = *(a1 + 40);
    return fsck_tree_node_write(a1, __src, v9, a2, *(__src + 1));
  }

  v14 = 0;
  v13 = v10[7];
  if (!v13)
  {
    v13 = *(v10[5] + 16);
  }

  result = fsck_tree_node_allocate(a1, 0, 0, v13, *(__src + 1), &v14);
  if (!result)
  {
    if (v14 != *(__src + 1))
    {
      sub_10007AEE0();
    }

    *(__src + 2) = v13;
    v8 = *(a1 + 40);
LABEL_2:
    v9 = 0x8000000;
    if (v8 == 0x8000000)
    {
      return fsck_tree_node_write(a1, __src, v9, a2, *(__src + 1));
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100079498(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void **a9)
{
  v15 = *(a1 + 36);
  v40 = *(a1 + 56);
  v39 = v15;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v38 = *a2;
  if (a7 && a8)
  {
    sub_10007AF90();
  }

  if (!a6 && a7)
  {
    sub_10007AF64();
  }

  v41 = 0;
  v42 = 0;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  if (a8)
  {
    result = sub_100078874(&v38, a5, 0, &v47, &v44 + 1);
    if (result)
    {
      return result;
    }

    v52 = v47;
    *&v53[0] = HIDWORD(v44);
    *(&v53[0] + 1) = a4 | &_mh_execute_header;
    v17 = 1;
    if (!a6)
    {
LABEL_8:
      if (!a7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
    if (!a6)
    {
      goto LABEL_8;
    }
  }

  result = sub_100078874(&v38, a6, 0, &v46, &v44);
  if (result)
  {
    return result;
  }

  v42 = *(a6 + 8);
  v18 = v17++;
  v19 = v44;
  v20 = &v53[2 * v18 - 1];
  *v20 = v46;
  *(v20 + 1) = &v42;
  *(v20 + 4) = v19;
  *(v20 + 5) = 8;
  *(v20 + 3) = a4 + 1;
  if (!a7)
  {
    goto LABEL_15;
  }

LABEL_13:
  result = sub_100078874(&v38, a7, 0, &v45, &v43);
  if (result)
  {
    return result;
  }

  v41 = *(a7 + 8);
  v21 = v17++;
  v22 = v43;
  v23 = &v53[2 * v21 - 1];
  *v23 = v45;
  *(v23 + 1) = &v41;
  *(v23 + 4) = v22;
  *(v23 + 5) = 8;
  *(v23 + 3) = a4 + 2;
LABEL_15:
  v51 = 0;
  v48 = *a2;
  v24 = *(a1 + 36);
  v50 = *(a1 + 56);
  v49 = v24;
  if (v17)
  {
    v25 = 0;
    v26 = v17 + 1;
    v27 = v53;
    do
    {
      v28 = *(v27 + 2);
      if (v25)
      {
        v29 = *(a3 + 36);
        v30 = a3;
        v31 = v28 >= v29;
        v32 = v28 - v29;
        if (v32 != 0 && v31)
        {
          v30 = *a9;
          v28 = v32;
        }
      }

      else
      {
        v30 = a3;
      }

      v33 = *(v27 - 2);
      v34 = *(v27 - 1);
      v35 = *v27;
      v36 = *(v27 + 1);
      if (*(v27 + 12) == 1)
      {
        updated = btree_node_update_maybe(&v48, v30, v28, v33, v35, v34, v36);
        if ((updated & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        updated = sub_10007975C(&v48, v30, v28, v33, v35, v34, v36);
        if ((updated & 1) == 0)
        {
LABEL_26:
          if (((v25 ^ 1) & 1) == 0)
          {
            sub_10007AF0C();
          }
        }
      }

      if ((updated & 1) == 0)
      {
        result = sub_100079974(a1, a2, a3, *(v27 + 2), *(v27 + 12), *(v27 - 2), *v27, *(v27 - 1), *(v27 + 1), a9, &v51);
        if (result)
        {
          return result;
        }

        if (v51)
        {
          sub_10007AF38();
        }

        v25 = 1;
      }

      --v26;
      v27 += 2;
    }

    while (v26 > 1);
  }

  return 0;
}

uint64_t sub_10007975C(int *a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5, const void *a6, unsigned int a7)
{
  if ((a3 & 0x80000000) != 0 || (v9 = *(a2 + 36), v9 < a3))
  {
    sub_10007B014();
  }

  if (!a5 || !a4 || !a6)
  {
    sub_10007AFE8();
  }

  v15 = *a1;
  if ((*(a2 + 32) & 4) != 0 && (v15 & 4) == 0 && *(a2 + 42) <= (4 * v9))
  {
    return 0;
  }

  v16 = (a5 + 7) & 0xFFFFFFF8;
  if ((v15 & 0x40) != 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = (a5 + 7) & 0xFFFFFFF8;
  }

  v18 = (a7 + 7) & 0xFFFFFFF8;
  if ((v15 & 0x40) != 0)
  {
    v19 = a7;
  }

  else
  {
    v19 = (a7 + 7) & 0xFFFFFFF8;
  }

  if (a7 == 65534)
  {
    v19 = 0;
  }

  if (sub_1000767E0(a1, a2, 1) < v19 + v17)
  {
    return 0;
  }

  v33 = a4;
  v34 = a6;
  v21 = sub_100076998(a1, a2, 0, a5);
  v22 = 0;
  if (!v21)
  {
    if ((*a1 & 0x40) != 0)
    {
      v22 = a5;
    }

    else
    {
      v22 = v16;
    }
  }

  v23 = sub_100076998(a1, a2, 1u, a7);
  if (!v23)
  {
    if (a7 == 65534)
    {
      v24 = 0;
    }

    else if ((*a1 & 0x40) != 0)
    {
      v24 = a7;
    }

    else
    {
      v24 = v18;
    }

    v22 += v24;
  }

  if (v22 > *(a2 + 46) || ((*(a2 + 32) & 4) == 0 || (*a1 & 4) != 0) && sub_100078D88(a1, a2, 1) > *(a2 + 42))
  {
    sub_100076BBC(a1, a2, 1);
    if (sub_1000771B8(a1, a2, v25, v26, v27, v28, v29, v30))
    {
      abort();
    }

    if ((*a1 & 0x40) != 0)
    {
      v31 = a5;
    }

    else
    {
      v31 = v16;
    }

    if ((*a1 & 0x40) != 0)
    {
      v32 = a7;
    }

    else
    {
      v32 = v18;
    }

    if (a7 == 65534)
    {
      v32 = 0;
    }

    if (v32 + v31 > *(a2 + 46))
    {
      sub_10007AFBC();
    }

    v21 = 0;
    v23 = 0;
  }

  sub_100079EE4(a1, a2, a3, v33, a5, v21, v34, a7, v23);
  return 1;
}

uint64_t sub_100079974(uint64_t a1, _OWORD *a2, uint64_t a3, signed int a4, int a5, const void *a6, unsigned int a7, const void *a8, unsigned int a9, void **a10, void **a11)
{
  v11 = *(a1 + 36);
  v78 = *(a1 + 56);
  v77 = v11;
  v76 = *a2;
  if (a4 < 0 || (v14 = *(a3 + 36), v14 < a4))
  {
    sub_10007B174();
  }

  v15 = a8;
  v17 = a6;
  v19 = a2;
  v20 = a1;
  if (v14 <= a4 && a5)
  {
    sub_10007B148();
  }

  if (a8)
  {
    v21 = a6 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21 && !a5)
  {
    sub_10007B11C();
  }

  v22 = a11;
  *a11 = 0;
  *a10 = 0;
  v23 = sub_10007A068(a1, *(a3 + 16), &v76, *(a3 + 32) & 2, *(a3 + 34), a10);
  if (v23)
  {
LABEL_12:
    v24 = v23;
    if (*v22)
    {
      fsck_tree_node_deallocate(v20, *(v20 + 40), *(*v22 + 2), *(*v22 + 1));
      if (*(v20 + 40) != 0x8000000)
      {
        free(*v22);
      }

      *v22 = 0;
    }

    if (*a10)
    {
      fsck_tree_node_deallocate(v20, *(v20 + 40), *(*a10 + 2), *(*a10 + 1));
      if (*(v20 + 40) != 0x8000000)
      {
        free(*a10);
      }

      *a10 = 0;
    }

    return v24;
  }

  if (v17)
  {
    v25 = v76;
    v26 = (a7 + 7) & 0xFFFFFFF8;
    if ((v76 & 0x40) != 0)
    {
      v26 = a7;
    }

    v75 = v26;
    if (a5)
    {
      v27 = sub_1000766C0(&v76, a3, a4);
      v28 = (v27 + 7) & 0x1FFF8;
      if ((v25 & 0x40) != 0)
      {
        v28 = v27;
      }

      v73 = v28;
    }

    else
    {
      v73 = 0;
    }

    v22 = a11;
  }

  else
  {
    v73 = 0;
    v75 = 0;
  }

  if (v15)
  {
    if (a9 == 65534)
    {
      v29 = 0;
    }

    else
    {
      v29 = (a9 + 7) & 0xFFFFFFF8;
      if ((v76 & 0x40) != 0)
      {
        v29 = a9;
      }
    }

    v75 += v29;
    if (a5)
    {
      v30 = sub_100076748(&v76, a3, a4);
      if (v30 == 65534)
      {
        v31 = 0;
      }

      else
      {
        v31 = (v30 + 7) & 0x1FFF8;
        if ((v76 & 0x40) != 0)
        {
          v31 = v30;
        }
      }

      v73 += v31;
    }
  }

  if (v75 <= v73)
  {
    sub_10007B040();
  }

  v32 = *(a3 + 36);
  if (v32 - 1 < 0)
  {
LABEL_100:
    v61 = *(a3 + 32);
    if ((v61 & 2) == 0)
    {
      sub_10007B0F0();
    }

    v23 = sub_10007A068(v20, *(a3 + 16), &v76, v61 & 2, *(a3 + 34), v22);
    if (!v23)
    {
      sub_10007A190(&v76, a3, *v22, a5 + a4, a4, a5, v17, a7, v15, a9);
      sub_10007A190(&v76, a3, *a10, a5 + a4 - 1, a4, a5, v17, a7, v15, a9);
      v24 = 0;
      v62 = *(v19 + 4) + 2;
      goto LABEL_107;
    }

    goto LABEL_12;
  }

  v64 = v22;
  v65 = v20;
  v66 = v15;
  v67 = v17;
  v68 = a7;
  v69 = v19;
  v33 = 0;
  v74 = v76;
  v34 = 1 - v32;
  v71 = 0;
  v72 = -1;
  v35 = *(a3 + 36);
  v70 = -1;
  do
  {
    v36 = v32 - 1;
    if (a4 == v32)
    {
      if (a5)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v36 >= a4)
      {
        v37 = v32;
      }

      else
      {
        v37 = v32 + 1;
      }

      v38 = v37 - 1;
      v39 = sub_1000766C0(&v76, a3, v37 - 1);
      v40 = sub_100076748(&v76, a3, v38);
      if ((v74 & 0x40) != 0)
      {
        v41 = v39;
      }

      else
      {
        v41 = (v39 + 7) & 0x1FFF8;
      }

      v42 = (v40 + 7) & 0x1FFF8;
      if ((v74 & 0x40) != 0)
      {
        v42 = v40;
      }

      if (v40 == 65534)
      {
        v42 = 0;
      }

      v33 += v41 + v42;
      v35 = *(a3 + 36);
    }

    if (v36 < a4)
    {
      v43 = a5;
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_1000767E0(&v76, *a10, v34 + v35 - v43);
    v45 = v44 - v33;
    if (v44 < v33)
    {
      sub_10007B06C();
    }

    if (a4 + 1 == v32)
    {
      v46 = a5;
    }

    else
    {
      v46 = 0;
    }

    if (v36 >= a4)
    {
      v47 = a5;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47 << 31 >> 31;
    if (v36 < a4)
    {
      v49 = 1;
    }

    else
    {
      v49 = v46;
    }

    v50 = sub_1000767E0(&v76, a3, v32 + v48 - v35) + v33;
    if (v49)
    {
      v51 = v45;
    }

    else
    {
      v51 = v50;
    }

    v52 = v51 + v73;
    v57 = v52 >= v75;
    v53 = v52 - v75;
    if (v57)
    {
      if ((v74 & 2) != 0)
      {
        v59 = v71;
        v60 = v53 > v71;
        if (v53 > v71)
        {
          v59 = v53;
        }

        v71 = v59;
        v58 = v72;
        if (v60)
        {
          v58 = v32 - 1;
        }
      }

      else
      {
        if (!v49)
        {
          v50 = v53;
          v53 = v45;
        }

        if (v50 <= v53)
        {
          v54 = v53;
        }

        else
        {
          v54 = v50;
        }

        if (v50 >= v53)
        {
          v50 = v53;
        }

        v55 = v54 - v50;
        v56 = v70;
        v57 = v55 >= v70;
        if (v55 < v70)
        {
          v56 = v55;
        }

        v70 = v56;
        v58 = v72;
        if (!v57)
        {
          v58 = v32 - 1;
        }
      }

      v72 = v58;
    }

LABEL_94:
    ++v34;
    --v32;
  }

  while (v36 > 0);
  v19 = v69;
  a7 = v68;
  v15 = v66;
  v17 = v67;
  v22 = v64;
  v20 = v65;
  if (v72 == -1)
  {
    goto LABEL_100;
  }

  sub_10007A190(&v76, a3, *a10, v72, a4, a5, v67, v68, v66, a9);
  if (v72 < a4 || (a5 & 1) != 0)
  {
    if (v72 > a4 && a5 && !btree_node_update_maybe(&v76, a3, a4, v67, v68, v66, a9))
    {
      sub_10007B0C4();
    }
  }

  else if ((sub_10007975C(&v76, a3, a4, v67, v68, v66, a9) & 1) == 0)
  {
    sub_10007B098();
  }

  v24 = 0;
  v62 = *(v69 + 4) + 1;
LABEL_107:
  *(v19 + 4) = v62;
  return v24;
}

void *sub_100079EE4(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5, _WORD *a6, const void *a7, unsigned int a8, _WORD *a9)
{
  if ((a3 & 0x80000000) != 0 || *(a2 + 36) < a3)
  {
    sub_10007B250();
  }

  if (!a7)
  {
    sub_10007B224();
  }

  v16 = sub_100077028(a1, a2, 0, a5, a6);
  v17 = sub_100077028(a1, a2, 1u, a8, a9);
  v18 = a2 + 56;
  memcpy((a2 + 56 + *(a2 + 42) + v16), a4, a5);
  if (v17 <= 0xFFFD)
  {
    v19 = -40;
    if ((*(a2 + 32) & 1) == 0)
    {
      v19 = 0;
    }

    memcpy((a2 + *(a1 + 4) + v19 - v17), a7, a8);
  }

  v20 = *(a2 + 36);
  if (v20 < a3)
  {
    sub_10007B1F8();
  }

  v21 = *(a2 + 42);
  if ((*(a2 + 32) & 4) != 0)
  {
    if (v20 >= v21 >> 2)
    {
      sub_10007B1A0();
    }

    v25 = (v18 + 4 * a3);
    result = memmove(v25 + 2, v25, 4 * (v20 - a3));
    *v25 = v16;
    v25[1] = v17;
  }

  else
  {
    if (v20 >= v21 >> 3)
    {
      sub_10007B1CC();
    }

    v22 = 8 * (v20 - a3);
    v23 = (v18 + 8 * a3);
    result = memmove(v23 + 4, v23, v22);
    *v23 = v16;
    v23[1] = a5;
    v23[2] = v17;
    v23[3] = a8;
  }

  ++*(a2 + 36);
  return result;
}

uint64_t sub_10007A068(uint64_t a1, uint64_t a2, _DWORD *a3, char a4, __int16 a5, void *a6)
{
  v21 = 0;
  v22 = 0;
  v12 = fsck_tree_node_allocate(a1, &v21, *(a1 + 40), a2, 0, &v22);
  if (v12)
  {
    if (v21 && *(a1 + 40) != 0x8000000)
    {
      free(v21);
    }
  }

  else
  {
    sub_10007A3F0(a3, v21, a4, a5);
    v13 = v21;
    *(v21 + 1) = v22;
    v13[2] = a2;
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    v16 = *(a1 + 40);
    if (v16 == 0x8000000)
    {
      v17 = -2013265920;
    }

    else
    {
      v17 = *(a1 + 40);
    }

    v18 = v17 | v15;
    *(v13 + 6) = v18;
    if (!v16)
    {
      v20 = *(a1 + 8);
      if (v20)
      {
        if ((*(*(v20 + 40) + 264) & 1) == 0)
        {
          *(v13 + 6) = v18 | 0x10000000;
        }
      }
    }

    *(v13 + 7) = *(a1 + 48);
    if (v14)
    {
      *(v13 + a3[1] - 40) = *a3;
    }

    *a6 = v13;
  }

  return v12;
}

_BYTE *sub_10007A190(_BYTE *result, uint64_t a2, _WORD *a3, signed int a4, signed int a5, int a6, const void *a7, unsigned int a8, const void *a9, unsigned int a10)
{
  v15 = result;
  if ((a3[16] & 4) == 0 || (*result & 4) != 0)
  {
    v16 = *(a2 + 36);
    if (a4 < a5)
    {
      v17 = a6;
    }

    else
    {
      v17 = 0;
    }

    result = sub_100078D88(result, a3, (v17 << 31 >> 31) - a4 + v16);
    v18 = a3[21];
    if (result > v18)
    {
      a3[23] += v18 - result;
      a3[21] = result;
    }
  }

  else
  {
    v16 = *(a2 + 36);
  }

  if (v16 > a4)
  {
    v37 = a3;
    v19 = 0;
    if (a7)
    {
      v20 = a9 == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    v34 = v21;
    v22 = a4;
    do
    {
      v23 = 0;
      v39 = 0;
      v40 = 0;
      if (v22 >= a5)
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 + 1;
      }

      v38 = 0;
      if (v24 < v16)
      {
        if (sub_100078874(v15, a2, v24, &v40, &v38 + 1))
        {
          sub_10007B27C();
        }

        result = sub_10007893C(v15, a2, v24, &v39, &v38);
        if (result)
        {
          sub_10007B2A8();
        }

        v23 = v38;
        if (v38 == 65534 || !v38)
        {
          v39 = &unk_1000B3252;
        }
      }

      if (!a6 || a5 - 1 != v22)
      {
        v25 = *(a2 + 36);
        if (a5 - 1 + a6 == v22)
        {
          v26 = v24 >= v25;
          v27 = v34;
          if (!v26)
          {
            v27 = 1;
          }

          if ((v27 & 1) == 0)
          {
            sub_10007B300();
          }

          if (a7)
          {
            v28 = a7;
          }

          else
          {
            v28 = v40;
          }

          if (a7)
          {
            v29 = a8;
          }

          else
          {
            v29 = HIDWORD(v38);
          }

          if (a9)
          {
            v30 = a9;
          }

          else
          {
            v30 = v39;
          }

          if (a9)
          {
            v23 = a10;
          }
        }

        else
        {
          if (v24 >= v25)
          {
            sub_10007B2D4();
          }

          v30 = v39;
          v28 = v40;
          v29 = HIDWORD(v38);
        }

        result = sub_100079EE4(v15, v37, v19++, v28, v29, 0, v30, v23, 0);
      }

      ++v22;
      v16 = *(a2 + 36);
    }

    while (v22 < v16);
  }

  v31 = v16 - 1;
  if ((v16 - 1) >= a4)
  {
    v32 = a5 - v16;
    do
    {
      if (v32)
      {
        if (v31 >= a5)
        {
          v33 = v31;
        }

        else
        {
          v33 = v31 + 1;
        }

        result = sub_10007A49C(v15, a2, v33);
      }

      --v31;
      ++v32;
    }

    while (v31 >= a4);
  }

  return result;
}

_DWORD *sub_10007A3F0(_DWORD *result, uint64_t a2, char a3, __int16 a4)
{
  v4 = a3 & 0x1B;
  *(a2 + 32) = v4;
  *(a2 + 34) = a4;
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  *(a2 + 44) = 0;
  *(a2 + 48) = 0xFFFF0000FFFFLL;
  v5 = result[2];
  if ((a3 & 2) != 0)
  {
    v6 = result[3];
  }

  else if ((a3 & 8) != 0)
  {
    v6 = result[4] + 8;
  }

  else
  {
    v6 = 8;
  }

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    LODWORD(v8) = result[1];
    LOWORD(v9) = 64;
  }

  else
  {
    v4 |= 4u;
    *(a2 + 32) = v4;
    v8 = result[1];
    v9 = (4 * ((v8 - 56) / ((v6 + v5) + 4))) & 0xFFFFFFF8;
  }

  *(a2 + 42) = v9;
  *(a2 + 46) = v8 - v9 + (((v4 << 15) >> 15) & 0xFFD8) - 56;
  return result;
}

void *sub_10007A49C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0 || *(a2 + 36) <= a3)
  {
    sub_10007B32C();
  }

  v6 = sub_100076680(a2, a3);
  v7 = sub_1000766C0(a1, a2, a3);
  sub_100076850(a1, a2, 0, v6, v7);
  v8 = sub_100076700(a2, a3);
  v9 = sub_100076748(a1, a2, a3);
  sub_100076850(a1, a2, 1, v8, v9);
  v10 = *(a2 + 36);
  if (v10 <= a3)
  {
    sub_10007B358();
  }

  v11 = *(a2 + 42);
  if ((*(a2 + 32) & 4) != 0)
  {
    if (v10 > v11 >> 2)
    {
      sub_10007B384();
    }

    result = memmove((a2 + 56 + 4 * a3), (a2 + 56 + 4 * a3 + 4), 4 * (v10 + ~a3));
    v13 = *(a2 + 36) - 1;
    *(a2 + 56 + 4 * v13) = -1;
  }

  else
  {
    if (v10 > v11 >> 3)
    {
      sub_10007B3B0();
    }

    result = memmove((a2 + 56 + 8 * a3), (a2 + 56 + 8 * a3 + 8), 8 * (v10 + ~a3));
    v13 = *(a2 + 36) - 1;
    *(a2 + 56 + 8 * v13) = 0xFFFF0000FFFFLL;
  }

  *(a2 + 36) = v13;
  return result;
}

uint64_t sub_10007A5E4(uint64_t a1, uint64_t a2, __int128 *a3, _WORD *a4, uint64_t a5, uint64_t a6, void **a7, _BYTE *a8, unsigned __int16 a9)
{
  v15 = *(a1 + 56);
  v38 = *(a1 + 36);
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  *a7 = 0;
  v37 = *a3;
  v39 = v15;
  v16 = a4[17];
  v17 = sub_10007859C(a1, &v37, a4, a5, a6, &v44, &v43);
  v18 = v17;
  v19 = v16 > a9;
  v20 = v19;
  if (!v19)
  {
    if (v17)
    {
      goto LABEL_9;
    }

    if (!v43)
    {
      v18 = 2;
      goto LABEL_9;
    }

    v25 = v44;
    sub_10007A49C(&v37, a4, v44);
    v23 = 0;
    if (a9)
    {
      goto LABEL_15;
    }

    v32 = 24;
LABEL_18:
    --*(a3 + v32);
    goto LABEL_19;
  }

  if (v17)
  {
    goto LABEL_9;
  }

  v21 = v44;
  v18 = sub_100078694(a1, a2, &v37, a4, v44, 1, &v42);
  if (v18)
  {
    goto LABEL_9;
  }

  v22 = sub_10007A5E4(a1, a2, a3, v42, a5, a6, &v41, &v40, a9);
  v23 = v41;
  if (v22)
  {
    goto LABEL_6;
  }

  v34 = *(v42 + 9);
  if (!v34 && v41)
  {
    sub_10007B3DC();
  }

  v25 = v21;
  if (!v34)
  {
    sub_10007A49C(&v37, a4, v21);
    fsck_tree_node_deallocate(a1, *(a1 + 40), *(v42 + 2), *(v42 + 1));
    if (*(a1 + 40) != 0x8000000)
    {
      free(v42);
    }

    v42 = 0;
    v32 = 32;
    goto LABEL_18;
  }

  v22 = sub_100079498(a1, a3, a4, v21, v42, v41, 0, v40, a7);
  if (v22)
  {
LABEL_6:
    v18 = v22;
    if (!v23)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_15:
  v20 = 0;
LABEL_19:
  if (a4[16] & 1) == 0 && (a4[17] == a9 || v23 || ((v20 | v40)))
  {
    if (sub_1000771B8(&v37, a4, v26, v27, v28, v29, v30, v31))
    {
      goto LABEL_45;
    }

    sub_1000793A8(a1, a2, a4);
  }

  if (!*a7)
  {
    goto LABEL_28;
  }

  if (sub_1000771B8(&v37, *a7, v26, v27, v28, v29, v30, v31))
  {
LABEL_45:
    abort();
  }

  sub_1000793A8(a1, a2, *a7);
LABEL_28:
  if (v25)
  {
    v33 = 0;
  }

  else if (a4[17] == a9)
  {
    v33 = 1;
  }

  else
  {
    v33 = v20 | v40;
  }

  v18 = 0;
  *a8 = v33 & 1;
  if (!v23)
  {
    goto LABEL_9;
  }

LABEL_39:
  if (*(a1 + 40) != 0x8000000)
  {
    free(v23);
  }

LABEL_9:
  if (v42 && *(a1 + 40) != 0x8000000)
  {
    free(v42);
  }

  return v18;
}

uint64_t sub_10007A8D4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v12 = 0;
  if ((*(a4 + 32) & 2) != 0 || !*(a4 + 36))
  {
LABEL_7:
    fsck_tree_node_deallocate(a1, *(a1 + 40), *(a4 + 16), *(a4 + 8));
    v10 = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = sub_100078694(a1, a2, a3, a4, v8, 1, &v12);
      if (v9)
      {
        break;
      }

      v9 = sub_10007A8D4(a1, a2, a3, v12);
      if (v9)
      {
        break;
      }

      if (++v8 >= *(a4 + 36))
      {
        goto LABEL_7;
      }
    }

    v10 = v9;
  }

  if (v12 && *(a1 + 40) != 0x8000000)
  {
    free(v12);
  }

  return v10;
}

uint64_t DumpData(unsigned __int8 *a1, uint64_t a2)
{
  v21 = a1;
  if (a2 >= 1)
  {
    v2 = 0;
    v3 = a1;
    v4 = &a1[a2];
    v23 = a1 + 17;
    v5 = a1 + 16;
    v22 = &a1[a2];
    v20 = &a1[a2];
    while (1)
    {
      if (v5 >= v22)
      {
        v6 = v22;
      }

      else
      {
        v6 = v5;
      }

      if ((v5 - v6) <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5 - v6;
      }

      v8 = v3 + 16;
      if (v4 >= (v3 + 16))
      {
        v9 = v3 + 16;
      }

      else
      {
        v9 = v4;
      }

      if (v4 < v8 || v9 == v4 || !v2)
      {
        goto LABEL_20;
      }

      v10 = v3;
      if (v3 < v9)
      {
        break;
      }

LABEL_18:
      if (v2 == 1)
      {
        fwrite(". . .\n", 6uLL, 1uLL, __stderrp);
        v2 = 2;
      }

LABEL_46:
      v23 += 16;
      v5 += 16;
      v3 = v8;
      if (v8 >= v4)
      {
        goto LABEL_47;
      }
    }

    while (!*v10)
    {
      if (++v10 >= v9)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    fprintf(__stderrp, "%04x:  ", v3 - v21);
    if (v3 >= v9)
    {
      v2 = 1;
    }

    else
    {
      v11 = 0;
      v2 = 1;
      do
      {
        fprintf(__stderrp, "%02x", v3[v11]);
        if (v11)
        {
          fputc(32, __stderrp);
        }

        if (v3[v11])
        {
          v2 = 0;
        }

        ++v11;
      }

      while (&v3[v11] < v9);
    }

    v12 = v8 - v9;
    if (((v8 - v9) & 0x80000000) == 0)
    {
      v13 = v23 - v6;
      do
      {
        fwrite("  ", 2uLL, 1uLL, __stderrp);
        if (v12)
        {
          fputc(32, __stderrp);
        }

        --v12;
        --v13;
      }

      while (v13 > 0);
    }

    fwrite("    |", 5uLL, 1uLL, __stderrp);
    while (v3 < v9)
    {
      v14 = __stderrp;
      v15 = *v3;
      if (*v3 < 0)
      {
        v16 = __maskrune(*v3, 0x500uLL);
      }

      else
      {
        v16 = _DefaultRuneLocale.__runetype[*v3] & 0x500;
      }

      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 46;
      }

      fputc(v17, v14);
      ++v3;
    }

    v4 = v20;
    if (v20 < v8)
    {
      do
      {
        fputc(32, __stderrp);
        --v7;
      }

      while (v7);
    }

    fwrite("|\n", 2uLL, 1uLL, __stderrp);
    goto LABEL_46;
  }

LABEL_47:
  v18 = __stderrp;

  return fputc(10, v18);
}

uint64_t fsck_encryption_rolling(uint64_t *a1, uint64_t a2)
{
  v61 = 0;
  v4 = copy_obj(a1, a2, 0x40000000, *(*(a2 + 40) + 976), 0, 0, 24, 0, &v61, 0, 1);
  if (v4)
  {
    v12 = v4;
    fsck_printf_err("could not retrieve er_state_phys_t\n", v5, v6, v7, v8, v9, v10, v11, v59);
    v13 = 516;
    v14 = v12;
LABEL_8:
    fsck_fail_func(v13, v14);
    goto LABEL_9;
  }

  v15 = v61;
  if (*(v61 + 8) != 1179402562)
  {
    fsck_printf_err("er_state magic number is %d, should be %d\n", v5, v6, v7, v8, v9, v10, v11, *(v61 + 8));
    v12 = 92;
    v13 = 517;
    goto LABEL_7;
  }

  v16 = *(v61 + 9);
  if (v16 >= 3)
  {
    fsck_printf_err("er_state->ersb_version is %d, should be at most %d\n", v5, v6, v7, v8, v9, v10, v11, *(v61 + 9));
    v12 = 92;
    v13 = 518;
LABEL_7:
    v14 = 92;
    goto LABEL_8;
  }

  if (v16 != 2)
  {
    if (v16 != 1)
    {
      fsck_printf_err("ersb_version is %d, unsupported\n", v5, v6, v7, v8, v9, v10, v11, *(v61 + 9));
      v12 = 92;
      v13 = 739;
      goto LABEL_7;
    }

    v18 = sub_10007BA8C(*(v61 + 5), v5, v6, v7, v8, v9, v10, v11);
    if (!v18)
    {
      if ((v15[5] & 0x20) != 0 && !v15[15])
      {
        fsck_printf_err("invalid ersb_flags (0x%llx), ERSB_FLAG_CID_IS_TWEAK is set but ersb_fext_cid == 0\n", v19, v20, v21, v22, v23, v24, v25, v15[5]);
        v12 = 92;
        v13 = 716;
        goto LABEL_7;
      }

      v18 = sub_10007BB18(a1, v15[6], v20, v21, v22, v23, v24, v25);
      if (!v18)
      {
        v33 = v15[12];
        if (v33 > *(a1[1] + 40))
        {
          fsck_printf_err("ersb_total_blk_to_encrypt (%llu) exceeds device block count (%llu)\n", v26, v27, v28, v29, v30, v31, v32, v15[12]);
          v12 = 92;
          v13 = 522;
          goto LABEL_7;
        }

        if (v15[11] > v33)
        {
          fsck_printf_warn("ersb_progress (%llu) exceeds ersb_total_blk_to_encrypt (%llu)\n", v26, v27, v28, v29, v30, v31, v32, v15[11]);
        }

        if ((v15[5] & 8) != 0 && *(v15 + 28))
        {
          fsck_printf_err("ersb_flags (0x%llx) has ERSB_FLAG_PAUSED on but checksum count is non-zero (%u)\n", v26, v27, v28, v29, v30, v31, v32, v15[5]);
          v12 = 92;
          v13 = 523;
          goto LABEL_7;
        }

        if (*(v15 + 28) > HIWORD(*(v15 + 28)))
        {
          fsck_printf_err("checksum_count (%u) exceeds max checksums (%u)\n", v26, v27, v28, v29, v30, v31, v32, *(v15 + 28));
          v12 = 92;
          v13 = 717;
          goto LABEL_7;
        }

        v18 = sub_10007BB78(a1, a2, v15[13], v15[12]);
      }
    }

    goto LABEL_25;
  }

  v18 = sub_10007BA8C(*(v61 + 5), v5, v6, v7, v8, v9, v10, v11);
  if (v18)
  {
    goto LABEL_25;
  }

  v18 = sub_10007BB18(a1, v15[6], v34, v35, v36, v37, v38, v39);
  if (v18)
  {
    goto LABEL_25;
  }

  v46 = v15[10];
  if (v15[9] > v46)
  {
    fsck_printf_warn("ersb_progress (%llu) exceeds ersb_total_blk_to_encrypt (%llu)\n", v40, v41, v46, v42, v43, v44, v45, v15[9]);
    v46 = v15[10];
  }

  v18 = sub_10007BB78(a1, a2, v15[11], v46);
  if (v18)
  {
LABEL_25:
    v12 = v18;
    goto LABEL_9;
  }

  v62 = 0;
  v47 = copy_obj(a1, 0, 0x40000000, v15[11], 0, 0, 25, 0, &v62, 0, 0);
  if (v47)
  {
    v12 = v47;
    fsck_printf_err("could not retrieve gbitmap from er_state_phys_t\n", v48, v49, v50, v51, v52, v53, v54, v60);
    fsck_fail_func(0x2CE, v12);
    v55 = 0;
  }

  else
  {
    v56 = *(v62 + 5);
    v57 = a1[1];
    v58 = *(v57 + 40);
    if ((v56 / v58) * v58 == v56)
    {
      v12 = 0;
      v55 = *(v57 + 36) / (v56 / v58);
    }

    else
    {
      fsck_printf_err("bm_bit_count %llu is not an integer multiple of container block count %llu\n", v48, v49, v50, v51, v52, v53, v54, *(v62 + 5));
      fsck_fail_func(0x2CF, 0);
      v55 = 0;
      v12 = 92;
    }
  }

  if (v62)
  {
    free(v62);
  }

  if (!v12)
  {
    if (v15[13])
    {
      if ((v15[5] & 8) != 0)
      {
        fsck_printf_err("ersb_flags (0x%llx) has ERSB_FLAG_PAUSED on but ersb_recovery_extents_count is non-zero (%llu)\n", v48, v49, v50, v51, v52, v53, v54, v15[5]);
        v12 = 92;
        v13 = 738;
        goto LABEL_7;
      }

      v18 = sub_10007BDE8(a1, a2, v15, v55, v51, v52, v53, v54);
      goto LABEL_25;
    }

    if (v15[14])
    {
      fsck_printf_err("ersb_recovery_extents_count == 0, but ersb_recovery_list_oid is non-zero (0x%llx)\n", v48, v49, v50, v51, v52, v53, v54, v15[14]);
      v12 = 92;
      v13 = 736;
      goto LABEL_7;
    }

    if (v15[15])
    {
      fsck_printf_err("ersb_recovery_extents_count == 0, but ersb_recovery_length is non-zero (%llu)\n", v48, v49, v50, v51, v52, v53, v54, v15[15]);
      v12 = 92;
      v13 = 737;
      goto LABEL_7;
    }

    v12 = 0;
  }

LABEL_9:
  if (v61)
  {
    free(v61);
  }

  return v12;
}

uint64_t sub_10007BA8C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = HIBYTE(a1);
  if ((a1 & 3) == 3 || (a1 & 3) == 0)
  {
    fsck_printf_err("invalid ersb_flags (0x%llx), exactly one of ERSB_FLAG_ENCRYPTING and ERSB_FLAG_DECRYPTING bits must be set\n", a2, a3, a4, a5, a6, a7, a8, a1);
    v10 = 519;
  }

  else
  {
    if (sub_10007BCD8(a1))
    {
      return 0;
    }

    fsck_printf_err("invalid checksum block size, enum: %llu\n", v13, v14, v15, v16, v17, v18, v19, v8 & 0xF);
    v10 = 715;
  }

  v11 = 92;
  fsck_fail_func(v10, 92);
  return v11;
}

uint64_t sub_10007BB18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 8) + 96) > a2)
  {
    return 0;
  }

  v10 = *(*(a1 + 8) + 96);
  fsck_printf_err("ersb_snap_xid (%llu) is greater than or equal to container next xid (%llu)\n", a2, a3, a4, a5, a6, a7, a8, a2);
  v8 = 92;
  fsck_fail_func(0x209, 92);
  return v8;
}

uint64_t sub_10007BB78(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v7 = copy_obj(a1, a2, 0x40000000, a3, 0, 0, 25, 0, &v29, 0, 1);
  if (v7)
  {
    v15 = v7;
    fsck_printf_err("could not retrieve gbitmap from er_state_phys_t\n", v8, v9, v10, v11, v12, v13, v14, v26);
    v16 = 546;
LABEL_3:
    v17 = v15;
LABEL_6:
    fsck_fail_func(v16, v17);
    goto LABEL_7;
  }

  if (v29[5] < a4)
  {
    fsck_printf_err("ersb_total_blk_to_encrypt (%llu) exceeds bm_bit_count (%llu)\n", v8, v9, v10, v11, v12, v13, v14, a4);
    v15 = 92;
    v16 = 740;
    v17 = 92;
    goto LABEL_6;
  }

  tree_init_ext(v28, a1, a2, 0x40000000, 2, 26, 0, *(a1[1] + 36), 8, 8, 0, v29[4], uint64_key_compare);
  v15 = fsck_tree(v28, 0, sub_10007BCFC, 0, 0, 1);
  if (v15)
  {
    fsck_printf_err("encryption rolling gbitmap tree is invalid\n", v19, v20, v21, v22, v23, v24, v25, v27);
    v16 = 494;
    goto LABEL_3;
  }

LABEL_7:
  if (v29)
  {
    free(v29);
  }

  return v15;
}

uint64_t sub_10007BCD8(unsigned int a1)
{
  v1 = (a1 >> 8) & 0xF;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1000B3268[v1];
  }
}

uint64_t sub_10007BCFC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v8 = *a5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a5 & 0x8000000000000000) != 0)
  {
    *a5;
    if (v8)
    {
      v10 = *(a1[1] + 40) > v8;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if (a2)
      {
        v11 = *(*(a2 + 40) + 8);
      }

      else
      {
        v11 = 0;
      }

      mark_object_allocated(a1, v8, 1uLL, v11, 0x40000000, v8, 0, 27, &_mh_execute_header, &_mh_execute_header >> 32);
      return 0;
    }

    else
    {
      v13 = *a3;
      fsck_printf_err("invalid gbitmap block oid 0x%llx for key 0x%llx\n", a2, a3, a4, a5, v8, a7, a8, *a5);
      v9 = 92;
      fsck_fail_func(0x30F, 92);
    }
  }

  else
  {
    v9 = copy_obj(a1, a2, 0x40000000, v8, 0, 0, 27, 0, &v14, 0, 1);
    if (v14)
    {
      free(v14);
    }
  }

  return v9;
}