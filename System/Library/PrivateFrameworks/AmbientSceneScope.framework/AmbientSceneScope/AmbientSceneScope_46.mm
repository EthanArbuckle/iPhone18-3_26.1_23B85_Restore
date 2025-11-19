void sub_23F2D009C(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_37:
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = a3[1];
    }

    if (v8 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v8;
    }

    v23 = memcmp(v20, v7, v22);
    if (v23)
    {
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_107:
      v56 = a1[2];
      v57 = *a1;
      v58 = a3[2];
      *a1 = *a3;
      a1[2] = v58;
      *a3 = v57;
      a3[2] = v56;
      v59 = *(a1 + 3);
      a1[3] = 0;
      a1[4] = 0;
      v60 = *(a3 + 3);
      a3[3] = 0;
      a3[4] = 0;
      v61 = a1[4];
      *(a1 + 3) = v60;
      if (!v61 || atomic_fetch_add(v61 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_115:
        v68 = a3[4];
        *(a3 + 3) = v59;
        if (!v68)
        {
          return;
        }

LABEL_122:
        if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v68->__on_zero_shared)(v68);

          std::__shared_weak_count::__release_weak(v68);
        }

        return;
      }

      v77 = v59;
      (*(*v61 + 16))(v61);
      v62 = v61;
LABEL_114:
      std::__shared_weak_count::__release_weak(v62);
      v59 = v77;
      goto LABEL_115;
    }

    if (v21 == v8)
    {
      if (a3[3] < a2[3])
      {
        goto LABEL_107;
      }
    }

    else if (v21 < v8)
    {
      goto LABEL_107;
    }

LABEL_48:
    v24 = a1[2];
    v25 = *a1;
    v26 = a2[2];
    *a1 = *a2;
    a1[2] = v26;
    *a2 = v25;
    a2[2] = v24;
    v27 = *(a1 + 3);
    a1[3] = 0;
    a1[4] = 0;
    v28 = a2 + 3;
    v29 = *(a2 + 3);
    a2[3] = 0;
    a2[4] = 0;
    v30 = a1[4];
    *(a1 + 3) = v29;
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v75 = v27;
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v27 = v75;
    }

    v31 = a2[4];
    *(a2 + 3) = v27;
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
    }

    v32 = *(a3 + 23);
    if (v32 >= 0)
    {
      v33 = a3;
    }

    else
    {
      v33 = *a3;
    }

    if (v32 >= 0)
    {
      v34 = *(a3 + 23);
    }

    else
    {
      v34 = a3[1];
    }

    v35 = *(a2 + 23);
    if (v35 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = *a2;
    }

    if (v35 >= 0)
    {
      v37 = *(a2 + 23);
    }

    else
    {
      v37 = a2[1];
    }

    if (v37 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v37;
    }

    v39 = memcmp(v33, v36, v38);
    if (v39)
    {
      if ((v39 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v34 == v37)
    {
      if (a3[3] >= *v28)
      {
        return;
      }
    }

    else if (v34 >= v37)
    {
      return;
    }

    v63 = a2[2];
    v64 = *a2;
    v65 = a3[2];
    *a2 = *a3;
    a2[2] = v65;
    *a3 = v64;
    a3[2] = v63;
    v59 = *(a2 + 3);
    *v28 = 0;
    a2[4] = 0;
    v66 = *(a3 + 3);
    a3[3] = 0;
    a3[4] = 0;
    v67 = a2[4];
    *(a2 + 3) = v66;
    if (!v67 || atomic_fetch_add(v67 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_115;
    }

    v77 = v59;
    (*(*v67 + 16))(v67);
    v62 = v67;
    goto LABEL_114;
  }

  if (v8 == v11)
  {
    if (a2[3] < a1[3])
    {
      goto LABEL_37;
    }
  }

  else if (v8 < v11)
  {
    goto LABEL_37;
  }

LABEL_18:
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v8 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = memcmp(v15, v7, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v16 == v8)
  {
    if (a3[3] >= a2[3])
    {
      return;
    }
  }

  else if (v16 >= v8)
  {
    return;
  }

  v40 = a2[2];
  v41 = *a2;
  v42 = a3[2];
  *a2 = *a3;
  a2[2] = v42;
  *a3 = v41;
  a3[2] = v40;
  v43 = a2 + 3;
  v44 = *(a2 + 3);
  a2[3] = 0;
  a2[4] = 0;
  v45 = *(a3 + 3);
  a3[3] = 0;
  a3[4] = 0;
  v46 = a2[4];
  *(a2 + 3) = v45;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v76 = v44;
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
    v44 = v76;
  }

  v47 = a3[4];
  *(a3 + 3) = v44;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  v48 = *(a2 + 23);
  if (v48 >= 0)
  {
    v49 = a2;
  }

  else
  {
    v49 = *a2;
  }

  if (v48 >= 0)
  {
    v50 = *(a2 + 23);
  }

  else
  {
    v50 = a2[1];
  }

  v51 = *(a1 + 23);
  if (v51 >= 0)
  {
    v52 = a1;
  }

  else
  {
    v52 = *a1;
  }

  if (v51 >= 0)
  {
    v53 = *(a1 + 23);
  }

  else
  {
    v53 = a1[1];
  }

  if (v53 >= v50)
  {
    v54 = v50;
  }

  else
  {
    v54 = v53;
  }

  v55 = memcmp(v49, v52, v54);
  if (v55)
  {
    if ((v55 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v50 == v53)
  {
    if (*v43 >= a1[3])
    {
      return;
    }
  }

  else if (v50 >= v53)
  {
    return;
  }

  v69 = a1[2];
  v70 = *a1;
  v71 = a2[2];
  *a1 = *a2;
  a1[2] = v71;
  *a2 = v70;
  a2[2] = v69;
  v72 = *(a1 + 3);
  a1[3] = 0;
  a1[4] = 0;
  v73 = *(a2 + 3);
  *v43 = 0;
  a2[4] = 0;
  v74 = a1[4];
  *(a1 + 3) = v73;
  if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v78 = v72;
    (v74->__on_zero_shared)(v74);
    std::__shared_weak_count::__release_weak(v74);
    v72 = v78;
  }

  v68 = a2[4];
  *(a2 + 3) = v72;
  if (v68)
  {
    goto LABEL_122;
  }
}

void sub_23F2D0668(__int128 *a1, __int128 *a2, __int128 *a3, const void **a4)
{
  sub_23F2D009C(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 1);
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    v16 = v10 >= v13;
    if (v10 == v13)
    {
      v16 = a4[3] >= *(a3 + 3);
    }

    if (v16)
    {
      return;
    }
  }

  v17 = *(a3 + 2);
  v18 = *a3;
  v19 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v19;
  *a4 = v18;
  a4[2] = v17;
  v20 = a3 + 3;
  v21 = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  v22 = *(a4 + 3);
  a4[3] = 0;
  a4[4] = 0;
  v23 = *(a3 + 4);
  *(a3 + 24) = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v58 = v21;
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v21 = v58;
  }

  v24 = a4[4];
  *(a4 + 3) = v21;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 1);
  }

  v28 = *(a2 + 23);
  if (v28 >= 0)
  {
    v29 = a2;
  }

  else
  {
    v29 = *a2;
  }

  if (v28 >= 0)
  {
    v30 = *(a2 + 23);
  }

  else
  {
    v30 = *(a2 + 1);
  }

  if (v30 >= v27)
  {
    v31 = v27;
  }

  else
  {
    v31 = v30;
  }

  v32 = memcmp(v26, v29, v31);
  if (v32)
  {
    if ((v32 & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    v33 = v27 >= v30;
    if (v27 == v30)
    {
      v33 = *v20 >= *(a2 + 3);
    }

    if (v33)
    {
      return;
    }
  }

  v34 = *(a2 + 2);
  v35 = *a2;
  v36 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v36;
  *a3 = v35;
  *(a3 + 2) = v34;
  v37 = a2 + 3;
  v38 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v39 = *(a3 + 24);
  *v20 = 0;
  *(a3 + 4) = 0;
  v40 = *(a2 + 4);
  *(a2 + 24) = v39;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v59 = v38;
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
    v38 = v59;
  }

  v41 = *(a3 + 4);
  *(a3 + 24) = v38;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *(a2 + 23);
  if (v42 >= 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = *a2;
  }

  if (v42 >= 0)
  {
    v44 = *(a2 + 23);
  }

  else
  {
    v44 = *(a2 + 1);
  }

  v45 = *(a1 + 23);
  if (v45 >= 0)
  {
    v46 = a1;
  }

  else
  {
    v46 = *a1;
  }

  if (v45 >= 0)
  {
    v47 = *(a1 + 23);
  }

  else
  {
    v47 = *(a1 + 1);
  }

  if (v47 >= v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = v47;
  }

  v49 = memcmp(v43, v46, v48);
  if (v49)
  {
    if ((v49 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_76;
  }

  v50 = v44 >= v47;
  if (v44 == v47)
  {
    v50 = *v37 >= *(a1 + 3);
  }

  if (!v50)
  {
LABEL_76:
    v51 = *(a1 + 2);
    v52 = *a1;
    v53 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v53;
    *a2 = v52;
    *(a2 + 2) = v51;
    v54 = *(a1 + 24);
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    v55 = *(a2 + 24);
    *v37 = 0;
    *(a2 + 4) = 0;
    v56 = *(a1 + 4);
    *(a1 + 24) = v55;
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v60 = v54;
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
      v54 = v60;
    }

    v57 = *(a2 + 4);
    *(a2 + 24) = v54;
    if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v57->__on_zero_shared)(v57);

      std::__shared_weak_count::__release_weak(v57);
    }
  }
}

void sub_23F2D0A6C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  sub_23F2D0668(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 1);
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    v18 = v12 >= v15;
    if (v12 == v15)
    {
      v18 = a5[3] >= *(a4 + 3);
    }

    if (v18)
    {
      return;
    }
  }

  v19 = *(a4 + 2);
  v20 = *a4;
  v21 = a5[2];
  *a4 = *a5;
  *(a4 + 2) = v21;
  *a5 = v20;
  a5[2] = v19;
  v22 = a4 + 3;
  v23 = *(a4 + 24);
  *(a4 + 3) = 0;
  *(a4 + 4) = 0;
  v24 = *(a5 + 3);
  a5[3] = 0;
  a5[4] = 0;
  v25 = *(a4 + 4);
  *(a4 + 24) = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v77 = v23;
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
    v23 = v77;
  }

  v26 = a5[4];
  *(a5 + 3) = v23;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(a4 + 23);
  if (v27 >= 0)
  {
    v28 = a4;
  }

  else
  {
    v28 = *a4;
  }

  if (v27 >= 0)
  {
    v29 = *(a4 + 23);
  }

  else
  {
    v29 = *(a4 + 1);
  }

  v30 = *(a3 + 23);
  if (v30 >= 0)
  {
    v31 = a3;
  }

  else
  {
    v31 = *a3;
  }

  if (v30 >= 0)
  {
    v32 = *(a3 + 23);
  }

  else
  {
    v32 = *(a3 + 8);
  }

  if (v32 >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = v32;
  }

  v34 = memcmp(v28, v31, v33);
  if (v34)
  {
    if ((v34 & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    v35 = v29 >= v32;
    if (v29 == v32)
    {
      v35 = *v22 >= *(a3 + 24);
    }

    if (v35)
    {
      return;
    }
  }

  v36 = *(a3 + 16);
  v37 = *a3;
  v38 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 16) = v38;
  *a4 = v37;
  *(a4 + 2) = v36;
  v39 = (a3 + 24);
  v40 = *(a3 + 24);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v41 = *(a4 + 24);
  *v22 = 0;
  *(a4 + 4) = 0;
  v42 = *(a3 + 32);
  *(a3 + 24) = v41;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v78 = v40;
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
    v40 = v78;
  }

  v43 = *(a4 + 4);
  *(a4 + 24) = v40;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  v44 = *(a3 + 23);
  if (v44 >= 0)
  {
    v45 = a3;
  }

  else
  {
    v45 = *a3;
  }

  if (v44 >= 0)
  {
    v46 = *(a3 + 23);
  }

  else
  {
    v46 = *(a3 + 8);
  }

  v47 = *(a2 + 23);
  if (v47 >= 0)
  {
    v48 = a2;
  }

  else
  {
    v48 = *a2;
  }

  if (v47 >= 0)
  {
    v49 = *(a2 + 23);
  }

  else
  {
    v49 = *(a2 + 8);
  }

  if (v49 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v45, v48, v50);
  if (v51)
  {
    if ((v51 & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    v52 = v46 >= v49;
    if (v46 == v49)
    {
      v52 = *v39 >= *(a2 + 24);
    }

    if (v52)
    {
      return;
    }
  }

  v53 = *(a2 + 16);
  v54 = *a2;
  v55 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v55;
  *a3 = v54;
  *(a3 + 16) = v53;
  v56 = (a2 + 24);
  v57 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v58 = *(a3 + 24);
  *v39 = 0;
  *(a3 + 32) = 0;
  v59 = *(a2 + 32);
  *(a2 + 24) = v58;
  if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v79 = v57;
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v59);
    v57 = v79;
  }

  v60 = *(a3 + 32);
  *(a3 + 24) = v57;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = *(a2 + 23);
  if (v61 >= 0)
  {
    v62 = a2;
  }

  else
  {
    v62 = *a2;
  }

  if (v61 >= 0)
  {
    v63 = *(a2 + 23);
  }

  else
  {
    v63 = *(a2 + 8);
  }

  v64 = *(a1 + 23);
  if (v64 >= 0)
  {
    v65 = a1;
  }

  else
  {
    v65 = *a1;
  }

  if (v64 >= 0)
  {
    v66 = *(a1 + 23);
  }

  else
  {
    v66 = *(a1 + 8);
  }

  if (v66 >= v63)
  {
    v67 = v63;
  }

  else
  {
    v67 = v66;
  }

  v68 = memcmp(v62, v65, v67);
  if (v68)
  {
    if ((v68 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_103;
  }

  v69 = v63 >= v66;
  if (v63 == v66)
  {
    v69 = *v56 >= *(a1 + 24);
  }

  if (!v69)
  {
LABEL_103:
    v70 = *(a1 + 16);
    v71 = *a1;
    v72 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v72;
    *a2 = v71;
    *(a2 + 16) = v70;
    v73 = *(a1 + 24);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v74 = *(a2 + 24);
    *v56 = 0;
    *(a2 + 32) = 0;
    v75 = *(a1 + 32);
    *(a1 + 24) = v74;
    if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v80 = v73;
      (v75->__on_zero_shared)(v75);
      std::__shared_weak_count::__release_weak(v75);
      v73 = v80;
    }

    v76 = *(a2 + 32);
    *(a2 + 24) = v73;
    if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v76->__on_zero_shared)(v76);

      std::__shared_weak_count::__release_weak(v76);
    }
  }
}

BOOL sub_23F2D0FB4(uint64_t a1, uint64_t a2)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        sub_23F2D009C(a1, (a1 + 40), (a2 - 40));
        return 1;
      case 4:
        sub_23F2D0668(a1, (a1 + 40), (a1 + 80), (a2 - 40));
        return 1;
      case 5:
        sub_23F2D0A6C(a1, a1 + 40, a1 + 80, (a1 + 120), (a2 - 40));
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = a2 - 40;
      v5 = *(a2 - 17);
      if (v5 >= 0)
      {
        v6 = (a2 - 40);
      }

      else
      {
        v6 = *(a2 - 40);
      }

      if (v5 >= 0)
      {
        v7 = *(a2 - 17);
      }

      else
      {
        v7 = *(a2 - 32);
      }

      v8 = *(a1 + 23);
      if (v8 >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      if (v8 >= 0)
      {
        v10 = *(a1 + 23);
      }

      else
      {
        v10 = *(a1 + 8);
      }

      if (v10 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v10;
      }

      v12 = memcmp(v6, v9, v11);
      if (!v12)
      {
        v49 = v7 >= v10;
        if (v7 == v10)
        {
          v49 = *(a2 - 16) >= *(a1 + 24);
        }

        if (v49)
        {
          return 1;
        }

        goto LABEL_99;
      }

      if (v12 < 0)
      {
LABEL_99:
        v50 = *(a1 + 16);
        v51 = *a1;
        v52 = *(v4 + 16);
        *a1 = *v4;
        *(a1 + 16) = v52;
        *v4 = v51;
        *(v4 + 16) = v50;
        v53 = *(a1 + 24);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v54 = *(a2 - 16);
        *(a2 - 16) = 0;
        *(a2 - 8) = 0;
        v55 = *(a1 + 32);
        *(a1 + 24) = v54;
        if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v57 = v53;
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
          v53 = v57;
        }

        v56 = *(a2 - 8);
        *(a2 - 16) = v53;
        if (v56)
        {
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
          }
        }
      }

      return 1;
    }
  }

  v13 = a1 + 80;
  sub_23F2D009C(a1, (a1 + 40), (a1 + 80));
  v14 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 23);
    v18 = v17 >= 0 ? v14 : *v14;
    v19 = v17 >= 0 ? *(v14 + 23) : *(v14 + 8);
    v20 = *(v13 + 23);
    v21 = v20 >= 0 ? v13 : *v13;
    v22 = v20 >= 0 ? *(v13 + 23) : *(v13 + 8);
    v23 = v22 >= v19 ? v19 : v22;
    v24 = memcmp(v18, v21, v23);
    if (!v24)
    {
      break;
    }

    if (v24 < 0)
    {
      goto LABEL_53;
    }

LABEL_31:
    v13 = v14;
    v15 += 40;
    v14 += 40;
    if (v14 == a2)
    {
      return 1;
    }
  }

  v25 = v19 >= v22;
  if (v19 == v22)
  {
    v25 = *(v14 + 24) >= *(v13 + 24);
  }

  if (v25)
  {
    goto LABEL_31;
  }

LABEL_53:
  v26 = 0;
  *__p = *v14;
  v60 = *(v14 + 16);
  *v14 = 0;
  *(v14 + 8) = 0;
  v61 = *(v14 + 24);
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v27 = v15;
  *(v14 + 32) = 0;
  while (1)
  {
    v28 = a1 + v27;
    if (v26 < 0)
    {
      operator delete(*(v28 + 120));
    }

    *(v28 + 120) = *(v28 + 80);
    *(v28 + 136) = *(v28 + 96);
    *(v28 + 103) = 0;
    *(v28 + 80) = 0;
    v29 = *(v28 + 104);
    *(v28 + 104) = 0;
    *(v28 + 112) = 0;
    v30 = *(v28 + 152);
    *(v28 + 144) = v29;
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    if (v27 == -80)
    {
      v43 = a1;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    v31 = a1 + v27;
    v32 = v60 >= 0 ? __p : __p[0];
    v33 = v60 >= 0 ? HIBYTE(v60) : __p[1];
    v36 = *(v31 + 40);
    v34 = v31 + 40;
    v35 = v36;
    v37 = *(v34 + 23);
    v38 = (v37 >= 0 ? v34 : v35);
    v39 = v37 >= 0 ? *(v34 + 23) : *(v34 + 8);
    v40 = (v39 >= v33 ? v33 : v39);
    v41 = memcmp(v32, v38, v40);
    if (!v41)
    {
      break;
    }

    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_55:
    v26 = *(v28 + 103);
    v27 -= 40;
  }

  v42 = v33 >= v39;
  if (v33 == v39)
  {
    v42 = v61 >= *(a1 + v27 + 64);
  }

  if (!v42)
  {
    goto LABEL_55;
  }

LABEL_90:
  v43 = a1 + v27 + 80;
  if (*(a1 + v27 + 103) < 0)
  {
LABEL_83:
    operator delete(*v43);
  }

LABEL_84:
  *v43 = *__p;
  v44 = v61;
  *(v43 + 16) = v60;
  HIBYTE(v60) = 0;
  LOBYTE(__p[0]) = 0;
  v45 = *(&v61 + 1);
  v61 = 0uLL;
  *(a1 + v27 + 104) = v44;
  v46 = *(v43 + 32);
  *(v43 + 32) = v45;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = *(&v61 + 1);
  if (*(&v61 + 1) && !atomic_fetch_add((*(&v61 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
    if (++v16 == 8)
    {
      return v14 + 40 == a2;
    }

    goto LABEL_31;
  }

  if (++v16 != 8)
  {
    goto LABEL_31;
  }

  return v14 + 40 == a2;
}

void sub_23F2D14D4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_23EF3AE74();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_23F2D1628(void **a1, uint64_t a2, const void *a3)
{
  v13[4] = a3;
  v5 = CFGetTypeID(*a2);
  v6 = (*a1)[1];
  if (!v6)
  {
    return 0;
  }

  v7 = **a1;
  v8 = 8 * v6;
  while (*v7 != v5)
  {
    ++v7;
    v8 -= 8;
    if (!v8)
    {
      return 0;
    }
  }

  if (!v8)
  {
    return 0;
  }

  v9 = v5;
  if (v5 == CFDictionaryGetTypeID())
  {
    v10 = *(a2 + 8);
    v13[0] = *a2;
    v13[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    }

    sub_23EFEA404(v13);
  }

  if (v9 == CFArrayGetTypeID())
  {
    v11 = *(a2 + 8);
    v14[0] = *a2;
    v14[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    sub_23EFEA198(v14);
  }

  return 1;
}

void sub_23F2D1A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1A78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1A8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23F2D1AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2D1ABC(void **a1, CFTypeRef *a2, const __CFArray *a3)
{
  v11[4] = a3;
  v5 = CFGetTypeID(*a2);
  v6 = (*a1)[1];
  if (!v6)
  {
    return 0;
  }

  v7 = **a1;
  v8 = 8 * v6;
  while (*v7 != v5)
  {
    ++v7;
    v8 -= 8;
    if (!v8)
    {
      return 0;
    }
  }

  if (!v8)
  {
    return 0;
  }

  v9 = v5;
  if (v5 == CFDictionaryGetTypeID())
  {
    sub_23EFF1164(v11, a2);
  }

  if (v9 == CFArrayGetTypeID())
  {
    sub_23EFF1164(&v12, a2);
  }

  return 1;
}

void sub_23F2D1E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1ED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23F2D1F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D1F58(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D4C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2D1FAC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

  v3 = *(a1 + 24);

  operator delete(v3);
}

void sub_23F2D206C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2D20C0(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];
    v8 = a1[3];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[3];
    }

    a1[4] = v6;

    operator delete(v8);
  }
}

void sub_23F2D233C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F2D2844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a9);
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a13);
  _Unwind_Resume(a1);
}

void sub_23F2D2868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D287C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23F2D29F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F2D2A28()
{
  *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
  __dst.__r_.__value_.__r.__words[0] = &__dst.__r_.__value_.__l.__size_;
  sub_23F2D2898();
}

void sub_23F2D3034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23F2D3050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2D3068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(&a18);
  _Unwind_Resume(a1);
}

void sub_23F2D3110()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_23F2D2898();
}

void sub_23F2D3434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F2D34B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2D34EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2D3510(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F2D3570(CFNumberRef *a1@<X0>, _BYTE *a2@<X8>)
{
  Type = CFNumberGetType(*a1);
  v5 = *a1;
  switch(Type)
  {
    case 2:
    case 8:
      LOWORD(valuePtr) = 0;
      v11 = CFNumberGetType(v5);
      CFNumberGetValue(v5, v11, &valuePtr);
      *a2 = 6;
      operator new();
    case 3:
    case 9:
      LODWORD(valuePtr) = 0;
      v9 = CFNumberGetType(v5);
      CFNumberGetValue(v5, v9, &valuePtr);
      *a2 = 7;
      operator new();
    case 4:
    case 10:
    case 11:
    case 14:
    case 15:
      valuePtr = 0;
      v6 = CFNumberGetType(v5);
      CFNumberGetValue(v5, v6, &valuePtr);
      *a2 = 8;
      operator new();
    case 5:
    case 12:
      LODWORD(valuePtr) = 0;
      v8 = CFNumberGetType(v5);
      CFNumberGetValue(v5, v8, &valuePtr);
      *a2 = 11;
      operator new();
    case 6:
    case 13:
    case 16:
      valuePtr = 0;
      v7 = CFNumberGetType(v5);
      CFNumberGetValue(v5, v7, &valuePtr);
      *a2 = 12;
      operator new();
    default:
      LOBYTE(valuePtr) = 0;
      v10 = CFNumberGetType(v5);
      CFNumberGetValue(v5, v10, &valuePtr);
      *a2 = 5;
      operator new();
  }
}

void sub_23F2D38B4(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 <= 5)
  {
    if (*a2 > 1u)
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          LOBYTE(v9) = 8;
          operator new();
        }

        LOBYTE(valuePtr) = *sub_23F2F21D4(a2);
        v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, &valuePtr);
        sub_23EFEA754(&v9, v4);
      }

      LOBYTE(v9) = 7;
      operator new();
    }

    if (!*a2)
    {
      LOBYTE(v9) = 5;
      operator new();
    }

    LOBYTE(v9) = 6;
    operator new();
  }

  if (*a2 > 7u)
  {
    if (v2 != 8)
    {
      if (v2 == 11)
      {
        LODWORD(valuePtr) = *sub_23F2F2594(a2);
        v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloat32Type, &valuePtr);
        sub_23EFEA754(&v9, v3);
      }

      valuePtr = *sub_23F2F2684(a2);
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloat64Type, &valuePtr);
      sub_23EFEA754(&v9, v5);
    }

    valuePtr = *sub_23F2F24A4(a2);
    v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    sub_23EFEA754(&v9, v8);
  }

  if (v2 == 6)
  {
    LOWORD(valuePtr) = *sub_23F2F22C4(a2);
    v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, &valuePtr);
    sub_23EFEA754(&v9, v6);
  }

  LODWORD(valuePtr) = *sub_23F2F23B4(a2);
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  sub_23EFEA754(&v9, v7);
}

void sub_23F2D3CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2D3CE8(CFTypeID a1, CFTypeID a2)
{
  if (a1 != a2)
  {
    goto LABEL_10;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/src/Ptr.cpp", 38, "expected != found", 0x11uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_53;
    }

    goto LABEL_7;
  }

  if (byte_27E3961A8 == 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_7:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "expected != found", 17, &unk_23F3091D6, 0);
      }

      while (v4 != v5);
      if (byte_27E3961A0)
      {
        goto LABEL_9;
      }

LABEL_53:
      abort();
    }
  }

LABEL_9:
  qword_27E396190(*algn_27E396198, "expected != found", 17, &unk_23F3091D6, 0);
LABEL_10:
  sub_23F2D42A4(a1, &v15);
  sub_23F2D42A4(a2, &__p);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  v10 = "Are you wrapping a CFTypeRef from a different type ?";
  if (size == v9)
  {
    v11 = (v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v15 : v15.__r_.__value_.__r.__words[0];
    v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    if (!memcmp(v11, v12, size))
    {
      v10 = "Are you wrapping the same type from different static context ?";
    }
  }

  v13[0] = v10;
  v13[1] = strlen(v10);
  v17 = 0;
  v20 = v16;
  p_p = "Runtime type ID ";
  v22 = v16;
  v23 = "Runtime type ID ";
  v24 = "Runtime type ID ";
  v18.__r_.__value_.__r.__words[0] = &v20;
  sub_23F059C54(&v18);
  v20 = v16;
  p_p = &__p;
  v22 = v16;
  v23 = &__p;
  v24 = &__p;
  if (v17 == -1)
  {
    sub_23EF41D6C();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (off_28518D5C0[v17])(&v18, v16);
  v20 = v16;
  p_p = " (";
  v22 = v16;
  v23 = " (";
  v24 = " (";
  if (v17 == -1)
  {
    sub_23EF41D6C();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (off_28518D5D8[v17])(&v18, v16);
  std::to_string(&v18, a2);
  v20 = v16;
  p_p = &v18;
  v22 = v16;
  v23 = &v18;
  v24 = &v18;
  if (v17 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v20;
  (off_28518D5F0[v17])(&v19, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v20 = v16;
  p_p = ") does not match the expected compile time type ID ";
  v22 = v16;
  v23 = ") does not match the expected compile time type ID ";
  v24 = ") does not match the expected compile time type ID ";
  if (v17 == -1)
  {
    sub_23EF41D6C();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (off_28518D608[v17])(&v18, v16);
  v20 = v16;
  p_p = &v15;
  v22 = v16;
  v23 = &v15;
  v24 = &v15;
  if (v17 == -1)
  {
    sub_23EF41D6C();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (off_28518D5C0[v17])(&v18, v16);
  v20 = v16;
  p_p = " (";
  v22 = v16;
  v23 = " (";
  v24 = " (";
  if (v17 == -1)
  {
    sub_23EF41D6C();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (off_28518D5D8[v17])(&v18, v16);
  std::to_string(&v18, a1);
  v20 = v16;
  p_p = &v18;
  v22 = v16;
  v23 = &v18;
  v24 = &v18;
  if (v17 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v20;
  (off_28518D5F0[v17])(&v19, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v20 = v16;
  p_p = ") : ";
  v22 = v16;
  v23 = ") : ";
  v24 = ") : ";
  if (v17 == -1)
  {
    sub_23EF41D6C();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (off_28518D620[v17])(&v18, v16);
  sub_23F04D774(&v20, v16, v13);
  if (v17 == -1)
  {
    sub_23EF41D6C();
  }

  v20 = &v18;
  (off_28518D638[v17])(&v20, v16);
  if (v17 != -1)
  {
    (off_28518D5A8[v17])(&v20, v16);
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_43:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_43;
  }
}

void sub_23F2D41EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_23F04B948(&a24);
  if (a17 < 0)
  {
    operator delete(__p);
    if (a23 < 0)
    {
LABEL_6:
      operator delete(a18);
      _Unwind_Resume(a1);
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_23F2D42A4(CFTypeID a1@<X0>, std::string *a2@<X8>)
{
  v3 = CFCopyTypeIDDescription(a1);
  sub_23F064058(&v8, v3);
  v5 = v8;
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v9;
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }

  sub_23F2CB1FC(v5, &v7);
  *a2 = v7;
  memset(&v7, 0, sizeof(v7));
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

size_t sub_23F2D43CC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28518D5A8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F2D44C0(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28518D5A8[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23F2D4684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2D46DC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F2D491C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

size_t sub_23F2D4938(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28518D5A8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F2D4A2C(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28518D5A8[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23F2D4BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2D4C48(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F2D4E88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void *sub_23F2D4EA4(void *a1, CFTypeRef cf)
{
  v10 = cf;
  if (cf)
  {
    v3 = CFCopyDescription(cf);
    sub_23F064058(v8, v3);
  }

  v12 = 0;
  sub_23F04B688(&v14, &__p, &v10);
  if (v12 == -1)
  {
    sub_23EF41D6C();
  }

  v14 = &v13;
  (off_28518D668[v12])(v8, &v14, &__p);
  if (v12 != -1)
  {
    (off_28518D650[v12])(&v14, &__p);
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = v8[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = v8[1];
  }

  result = sub_23EF2F9B0(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(v8[0]);
    return v7;
  }

  return result;
}

void sub_23F2D5178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2D51F8(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277CBECE8];
  if (*(a2 + 23) < 0)
  {
    sub_23EF34EA4(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v7 >= 0)
  {
    v4 = HIBYTE(v7);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(v2, v3, v4, 0x8000100u, 0);
  sub_23F064058(&v8, v5);
}

void sub_23F2D53EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_23EF3AE8C(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F2D5418(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/src/URLRef.cpp", 66, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_13:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
LABEL_14:
      v9 = *a1;
      v8 = *(a1 + 8);
      if (v8 && (atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else if (v9)
      {
        goto LABEL_27;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/src/URLRef.cpp", 60, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v10 = qword_27E396178, v11 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_26:
          qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
LABEL_27:
          v14 = CFURLCopyScheme(*a1);
          sub_23F064058(&v15, v14);
        }
      }

      else
      {
        v10 = qword_27E396178;
        v11 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_28;
        }
      }

      do
      {
        v13 = *v10;
        v12 = *(v10 + 8);
        v10 += 16;
        v13(v12, "IsValid()", 9, &unk_23F3091D6, 0);
      }

      while (v10 != v11);
      if (byte_27E3961A0)
      {
        goto LABEL_26;
      }

LABEL_28:
      abort();
    }
  }

  else
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_28;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "IsValid()", 9, &unk_23F3091D6, 0);
  }

  while (v4 != v5);
  if ((byte_27E3961A0 & 1) == 0)
  {
    goto LABEL_28;
  }

  goto LABEL_13;
}

void sub_23F2D59A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2D59FC(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_27E396000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396000))
  {
    sub_23F2D5AEC();
    __cxa_guard_release(&qword_27E396000);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (byte_27E396020 == 1)
  {
    if (byte_27E396008[23] < 0)
    {
      sub_23EF34EA4(a1, *byte_27E396008, *&byte_27E396008[8]);
    }

    else
    {
      *a1 = *byte_27E396008;
      *(a1 + 16) = *&byte_27E396008[16];
    }

    *(a1 + 24) = 1;
  }
}

void sub_23F2D5AC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2D5AEC()
{
  v51 = *MEMORY[0x277D85DE8];
  if (!dladdr(sub_23F2D59FC, &__dst))
  {
    goto LABEL_10;
  }

  memset(&__p, 0, sizeof(__p));
  v0 = (__dst.dli_fname - 1);
    ;
  }

  sub_23F296694(&__p, __dst.dli_fname, v0);
  std::__fs::filesystem::__weakly_canonical(&v39, &__p, 0);
  v41 = v39;
  memset(&v39, 0, sizeof(v39));
  v42 = 1;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((v42 & 1) == 0)
    {
LABEL_10:
      byte_27E396008[0] = 0;
      byte_27E396020 = 0;
      goto LABEL_193;
    }
  }

  v2 = std::__fs::filesystem::path::__parent_path(&v41);
  if (v2.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v2.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v2.__size_;
  if (v2.__size_)
  {
    memmove(&__dst, v2.__data_, v2.__size_);
  }

  *(&__dst.dli_fname + v2.__size_) = 0;
  *&__p.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  __p.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  v3 = std::__fs::filesystem::path::__extension(&__p);
  if (v3.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst.dli_fname + v3.__size_) = 0;
  *&v50.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v50.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  memset(&__dst, 0, 24);
  sub_23F296694(&__dst, ".framework", "");
  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v4.__data_ = &__dst;
  }

  else
  {
    v4.__data_ = __dst.dli_fname;
  }

  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v4.__size_ = HIBYTE(__dst.dli_sname);
  }

  else
  {
    v4.__size_ = __dst.dli_fbase;
  }

  v5 = std::__fs::filesystem::path::__compare(&v50, v4);
  if (SHIBYTE(__dst.dli_sname) < 0)
  {
    operator delete(__dst.dli_fname);
    if ((SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if (v5)
      {
        goto LABEL_28;
      }

LABEL_34:
      v39 = __p;
      v40 = 1;
      goto LABEL_80;
    }
  }

  else if ((SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v50.__pn_.__r_.__value_.__l.__data_);
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_28:
  v6 = std::__fs::filesystem::path::__parent_path(&__p);
  if (v6.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v6.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v6.__size_;
  if (v6.__size_)
  {
    memmove(&__dst, v6.__data_, v6.__size_);
  }

  *(&__dst.dli_fname + v6.__size_) = 0;
  *&v50.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v50.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  v7 = std::__fs::filesystem::path::__filename(&v50);
  if (v7.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v7.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v7.__size_;
  if (v7.__size_)
  {
    memmove(&__dst, v7.__data_, v7.__size_);
  }

  *(&__dst.dli_fname + v7.__size_) = 0;
  *&v45.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v45.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  memset(&__dst, 0, 24);
  sub_23F296694(&__dst, "Versions", "");
  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v8.__data_ = &__dst;
  }

  else
  {
    v8.__data_ = __dst.dli_fname;
  }

  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v8.__size_ = HIBYTE(__dst.dli_sname);
  }

  else
  {
    v8.__size_ = __dst.dli_fbase;
  }

  v9 = std::__fs::filesystem::path::__compare(&v45, v8);
  if (SHIBYTE(__dst.dli_sname) < 0)
  {
    v10 = v9;
    operator delete(__dst.dli_fname);
    if (v10)
    {
      goto LABEL_76;
    }
  }

  else if (v9)
  {
    goto LABEL_76;
  }

  v11 = std::__fs::filesystem::path::__parent_path(&v50);
  if (v11.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v11.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v11.__size_;
  if (v11.__size_)
  {
    memmove(&__dst, v11.__data_, v11.__size_);
  }

  *(&__dst.dli_fname + v11.__size_) = 0;
  *&v44.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v44.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  v12 = std::__fs::filesystem::path::__extension(&v44);
  if (v12.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v12.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v12.__size_;
  if (v12.__size_)
  {
    memmove(&__dst, v12.__data_, v12.__size_);
  }

  *(&__dst.dli_fname + v12.__size_) = 0;
  *&v43.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v43.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  memset(&__dst, 0, 24);
  sub_23F296694(&__dst, ".framework", "");
  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v13.__data_ = &__dst;
  }

  else
  {
    v13.__data_ = __dst.dli_fname;
  }

  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v13.__size_ = HIBYTE(__dst.dli_sname);
  }

  else
  {
    v13.__size_ = __dst.dli_fbase;
  }

  v14 = std::__fs::filesystem::path::__compare(&v43, v13);
  if (SHIBYTE(__dst.dli_sname) < 0)
  {
    operator delete(__dst.dli_fname);
    if ((SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_73:
      if (v14)
      {
        goto LABEL_74;
      }

      goto LABEL_88;
    }
  }

  else if ((SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_73;
  }

  operator delete(v43.__pn_.__r_.__value_.__l.__data_);
  if (v14)
  {
LABEL_74:
    if (SHIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_76:
    v39.__pn_.__r_.__value_.__s.__data_[0] = 0;
    v40 = 0;
    if ((SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_89;
  }

LABEL_88:
  v39 = v44;
  v40 = 1;
  if ((SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_77:
    if ((SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_90;
  }

LABEL_89:
  operator delete(v45.__pn_.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_78:
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(v50.__pn_.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_79:
    if (v40 != 1)
    {
      goto LABEL_92;
    }

    goto LABEL_80;
  }

LABEL_91:
  operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  if (v40 != 1)
  {
    goto LABEL_92;
  }

LABEL_80:
  std::__fs::filesystem::__status(&v39, 0);
  if (!LOBYTE(__dst.dli_fname) || LOBYTE(__dst.dli_fname) == 255 || (std::__fs::filesystem::__status(&v39, 0), v15 = WORD2(__dst.dli_fname), std::__fs::filesystem::__status(&v39, 0), LOBYTE(__dst.dli_fname) != 2) || (v15 & 0x100) == 0)
  {
LABEL_92:
    LODWORD(v45.__pn_.__r_.__value_.__l.__data_) = 1026;
    if (_NSGetExecutablePath(&__dst, &v45))
    {
      if (LODWORD(v45.__pn_.__r_.__value_.__l.__data_))
      {
        operator new();
      }

      v18 = _NSGetExecutablePath(0, &v45);
      if (v18)
      {
        __p.__pn_.__r_.__value_.__s.__data_[0] = 0;
        v38 = 0;
      }

      else
      {
        memset(&v50, 0, sizeof(v50));
        v30 = -1;
          ;
        }

        sub_23F296694(&v50, 0, v30);
        __p = v50;
        v38 = 1;
      }

      if (v18)
      {
        byte_27E396008[0] = 0;
        byte_27E396020 = 0;
LABEL_184:
        if (v38 == 1 && SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        if ((v40 & 1) != 0 && SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__pn_.__r_.__value_.__l.__data_);
        }

        goto LABEL_190;
      }
    }

    else
    {
      memset(&v50, 0, sizeof(v50));
      v16 = &v48;
        ;
      }

      sub_23F296694(&v50, &__dst, v16);
      __p = v50;
      v38 = 1;
    }

    v19 = std::__fs::filesystem::path::__parent_path(&__p);
    if (v19.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    if (v19.__size_ >= 0x17)
    {
      operator new();
    }

    HIBYTE(__dst.dli_sname) = v19.__size_;
    if (v19.__size_)
    {
      memmove(&__dst, v19.__data_, v19.__size_);
    }

    *(&__dst.dli_fname + v19.__size_) = 0;
    dli_fname = __dst.dli_fname;
    v46[0] = __dst.dli_sname;
    *(v46 + 3) = *(&__dst.dli_sname + 3);
    dli_sname_high = SHIBYTE(__dst.dli_sname);
    LOBYTE(__dst.dli_fname) = 0;
    LOBYTE(__dst.dli_saddr) = 0;
    if (SHIBYTE(__dst.dli_sname) < 0)
    {
      sub_23EF34EA4(&__dst, dli_fname, __dst.dli_fbase);
    }

    else
    {
      __dst.dli_fname = dli_fname;
      LODWORD(__dst.dli_sname) = v46[0];
      *(&__dst.dli_sname + 3) = *(v46 + 3);
    }

    LOBYTE(__dst.dli_saddr) = 1;
    v22 = std::__fs::filesystem::path::__extension(&__dst);
    if (v22.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    data = v22.__data_;
    if (v22.__size_ >= 0x17)
    {
      operator new();
    }

    *(&v50.__pn_.__r_.__value_.__s + 23) = v22.__size_;
    if (v22.__size_)
    {
      memmove(&v50, v22.__data_, v22.__size_);
    }

    v50.__pn_.__r_.__value_.__s.__data_[v22.__size_] = 0;
    v45 = v50;
    memset(&v44, 0, sizeof(v44));
    sub_23F296694(&v44, ".app", "");
    if ((v44.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24.__data_ = &v44;
    }

    else
    {
      v24.__data_ = v44.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v44.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24.__size_ = HIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24.__size_ = v44.__pn_.__r_.__value_.__l.__size_;
    }

    if (!std::__fs::filesystem::path::__compare(&v45, v24))
    {
      v26 = 1;
      if ((SHIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_127;
    }

    v25 = std::__fs::filesystem::path::__extension(&__dst);
    if (v25.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    data = v25.__data_;
    if (v25.__size_ >= 0x17)
    {
      operator new();
    }

    *(&v50.__pn_.__r_.__value_.__s + 23) = v25.__size_;
    if (v25.__size_)
    {
      memmove(&v50, v25.__data_, v25.__size_);
    }

    v50.__pn_.__r_.__value_.__s.__data_[v25.__size_] = 0;
    v43 = v50;
    memset(&v50, 0, sizeof(v50));
    sub_23F296694(&v50, ".bundle", "");
    if ((v50.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32.__data_ = &v50;
    }

    else
    {
      v32.__data_ = v50.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v50.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32.__size_ = HIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32.__size_ = v50.__pn_.__r_.__value_.__l.__size_;
    }

    v26 = std::__fs::filesystem::path::__compare(&v43, v32) == 0;
    if (SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__pn_.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_147:
        if ((SHIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_148;
        }

        goto LABEL_127;
      }
    }

    else if ((SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

    operator delete(v43.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_148:
      if ((SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_149:
        dli_saddr = __dst.dli_saddr;
        if (v26)
        {
LABEL_150:
          if (dli_saddr)
          {
            v29 = __dst.dli_fname;
            *v47 = __dst.dli_fbase;
            *&v47[7] = *(&__dst.dli_fbase + 7);
            v28 = 1;
            data = HIBYTE(__dst.dli_sname);
LABEL_152:
            if ((dli_sname_high & 0x80000000) == 0)
            {
              goto LABEL_153;
            }

            goto LABEL_161;
          }

          goto LABEL_159;
        }

LABEL_129:
        v28 = 0;
        v29 = 0;
        if ((dli_saddr & 1) == 0)
        {
          goto LABEL_160;
        }

        if ((SHIBYTE(__dst.dli_sname) & 0x80000000) == 0)
        {
          goto LABEL_152;
        }

        operator delete(__dst.dli_fname);
LABEL_159:
        v29 = 0;
        v28 = 0;
LABEL_160:
        if ((dli_sname_high & 0x80000000) == 0)
        {
LABEL_153:
          v33 = v40;
          if (v40 == v28)
          {
            goto LABEL_154;
          }

          goto LABEL_162;
        }

LABEL_161:
        operator delete(dli_fname);
        v33 = v40;
        if (v40 == v28)
        {
LABEL_154:
          if (v33)
          {
            if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v39.__pn_.__r_.__value_.__l.__data_);
            }

            v39.__pn_.__r_.__value_.__r.__words[0] = v29;
            v39.__pn_.__r_.__value_.__l.__size_ = *v47;
            *(&v39.__pn_.__r_.__value_.__r.__words[1] + 7) = *&v47[7];
            *(&v39.__pn_.__r_.__value_.__s + 23) = data;
            if (v40 != 1)
            {
LABEL_177:
              v35 = std::__fs::filesystem::path::__parent_path(&__p);
              if (v35.__size_ > 0x7FFFFFFFFFFFFFF7)
              {
                sub_23EF2F8F4();
              }

              if (v35.__size_ >= 0x17)
              {
                operator new();
              }

              HIBYTE(__dst.dli_sname) = v35.__size_;
              if (v35.__size_)
              {
                memmove(&__dst, v35.__data_, v35.__size_);
              }

              *(&__dst.dli_fname + v35.__size_) = 0;
              *(v50.__pn_.__r_.__value_.__r.__words + 7) = *(&__dst.dli_fbase + 7);
              v50.__pn_.__r_.__value_.__r.__words[0] = __dst.dli_fbase;
              *byte_27E396008 = *&__dst.dli_fname;
              *&byte_27E396008[15] = *(v50.__pn_.__r_.__value_.__r.__words + 7);
              byte_27E396008[23] = HIBYTE(__dst.dli_sname);
              byte_27E396020 = 1;
              goto LABEL_184;
            }

LABEL_170:
            std::__fs::filesystem::__status(&v39, 0);
            if (LOBYTE(__dst.dli_fname))
            {
              if (LOBYTE(__dst.dli_fname) != 255)
              {
                std::__fs::filesystem::__status(&v39, 0);
                v34 = WORD2(__dst.dli_fname);
                std::__fs::filesystem::__status(&v39, 0);
                if (LOBYTE(__dst.dli_fname) == 2 && (v34 & 0x100) != 0)
                {
                  byte_27E396008[0] = 0;
                  byte_27E396020 = 0;
                  if (v40 == 1)
                  {
                    *byte_27E396008 = v39;
                    memset(&v39, 0, sizeof(v39));
                    byte_27E396020 = 1;
                  }

                  goto LABEL_184;
                }
              }
            }

            goto LABEL_177;
          }

LABEL_166:
          if (v28 && data < 0)
          {
            operator delete(v29);
          }

          if (v40 != 1)
          {
            goto LABEL_177;
          }

          goto LABEL_170;
        }

LABEL_162:
        if (!v33)
        {
          v39.__pn_.__r_.__value_.__r.__words[0] = v29;
          v39.__pn_.__r_.__value_.__l.__size_ = *v47;
          *(&v39.__pn_.__r_.__value_.__r.__words[1] + 7) = *&v47[7];
          *(&v39.__pn_.__r_.__value_.__s + 23) = data;
          v40 = 1;
          goto LABEL_170;
        }

        if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__pn_.__r_.__value_.__l.__data_);
        }

        v40 = 0;
        goto LABEL_166;
      }

LABEL_128:
      operator delete(v45.__pn_.__r_.__value_.__l.__data_);
      dli_saddr = __dst.dli_saddr;
      if (v26)
      {
        goto LABEL_150;
      }

      goto LABEL_129;
    }

LABEL_127:
    operator delete(v44.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_128;
  }

  byte_27E396008[0] = 0;
  byte_27E396020 = 0;
  if (v40 == 1)
  {
    *byte_27E396008 = v39;
    byte_27E396020 = 1;
  }

LABEL_190:
  if ((v42 & 1) != 0 && SHIBYTE(v41.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_193:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_23F2D68C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, char a60)
{
  if (*(v61 - 89) < 0)
  {
    operator delete(*(v61 - 112));
  }

  if (v60)
  {
    operator delete(v60);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a29 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2D6B4C(std::string *a1, uint64_t *a2)
{
  if ((a2[3] & 1) == 0)
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
    return;
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v24 = a2[2];
    *v23 = *a2;
    v3 = v23;
    if (v24 < 0)
    {
      v3 = v23[0];
    }

    goto LABEL_11;
  }

  v4 = a2;
  sub_23EF34EA4(v23, *a2, a2[1]);
  a2 = v4;
  if (v24 >= 0)
  {
    v3 = v23;
  }

  else
  {
    v3 = v23[0];
  }

  if ((*(v4 + 23) & 0x80000000) == 0)
  {
LABEL_11:
    *__p = *a2;
    v22 = a2[2];
    goto LABEL_12;
  }

  v19 = *v4;
  v18 = v4[1];
  v20 = v3;
  sub_23EF34EA4(__p, *a2, v18);
  v3 = v20;
LABEL_12:
  v5 = *MEMORY[0x277CBECE8];
  if (v22 >= 0)
  {
    v6 = HIBYTE(v22);
  }

  else
  {
    v6 = __p[1];
  }

  v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v3, v6, 0x8000100u, 0);
  v25 = v7;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
LABEL_17:
      if (v7)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v23[0]);
  if (v7)
  {
    goto LABEL_29;
  }

LABEL_21:
  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Apple/src/BundlePath.cpp", 63, "cf_path_str", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v8 = qword_27E396178;
    v9 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_59;
    }

    do
    {
LABEL_26:
      (*v8)(*(v8 + 8), "cf_path_str", 11, &unk_23F3091D6, 0);
      v8 += 16;
    }

    while (v8 != v9);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_28;
  }

  if (byte_27E3961A8 == 1)
  {
    v8 = qword_27E396178;
    v9 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  qword_27E396190(*algn_27E396198, "cf_path_str", 11, &unk_23F3091D6, 0);
LABEL_29:
  v10 = CFURLCreateWithFileSystemPath(v5, v7, kCFURLPOSIXPathStyle, 1u);
  v23[0] = v10;
  if (v10)
  {
    goto LABEL_38;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Apple/src/BundlePath.cpp", 67, "cf_path_url", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v11 = qword_27E396178;
    v12 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_59;
    }

    do
    {
LABEL_35:
      (*v11)(*(v11 + 8), "cf_path_url", 11, &unk_23F3091D6, 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_37;
  }

  if (byte_27E3961A8 == 1)
  {
    v11 = qword_27E396178;
    v12 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      goto LABEL_35;
    }
  }

LABEL_37:
  qword_27E396190(*algn_27E396198, "cf_path_url", 11, &unk_23F3091D6, 0);
LABEL_38:
  v13 = CFBundleCreate(v5, v10);
  __p[0] = v13;
  if (!v13)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Apple/src/BundlePath.cpp", 70, "cf_current_bundle", 0x11uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v14 = qword_27E396178, v15 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_46:
        qword_27E396190(*algn_27E396198, "cf_current_bundle", 17, &unk_23F3091D6, 0);
        goto LABEL_47;
      }
    }

    else
    {
      v14 = qword_27E396178;
      v15 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_59;
      }
    }

    do
    {
      (*v14)(*(v14 + 8), "cf_current_bundle", 17, &unk_23F3091D6, 0);
      v14 += 16;
    }

    while (v14 != v15);
    if (byte_27E3961A0)
    {
      goto LABEL_46;
    }

LABEL_59:
    abort();
  }

LABEL_47:
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v13, *MEMORY[0x277CBED38]);
  v17 = ValueForInfoDictionaryKey;
  if (ValueForInfoDictionaryKey)
  {
    CFRetain(ValueForInfoDictionaryKey);
  }

  sub_23F2D751C(v17, a1);
  if (v17)
  {
    CFRelease(v17);
  }

  __p[0] = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  v23[0] = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v25 = 0;
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_23F2D7014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2D70B4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_27E396150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396150))
  {
    sub_23F2D59FC(__p);
    sub_23F2D6B4C(&xmmword_27E396130, __p);
    if (v4 == 1 && v3 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_guard_release(&qword_27E396150);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (byte_27E396148 == 1)
  {
    if (byte_27E396147 < 0)
    {
      sub_23EF34EA4(a1, xmmword_27E396130, *(&xmmword_27E396130 + 1));
    }

    else
    {
      *a1 = xmmword_27E396130;
      *(a1 + 16) = unk_27E396140;
    }

    *(a1 + 24) = 1;
  }
}

void sub_23F2D719C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_27E396150);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_27E396150);
  _Unwind_Resume(a1);
}

void sub_23F2D71E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_23F2D7210(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_23F2D7248(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_23F2D7280(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_23F2D72B8()
{
  if ((atomic_load_explicit(&qword_27E396160, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_27E396160))
  {
    return &qword_27E396158;
  }

  qword_27E396158 = sub_23F2D7340();
  __cxa_guard_release(&qword_27E396160);
  return &qword_27E396158;
}

mach_timebase_info sub_23F2D7340()
{
  if (mach_timebase_info(&info))
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Apple/src/Clock.cpp", 54, "0 == mach_timebase_info(&timebase)", 0x22uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v0 = qword_27E396178, v1 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "0 == mach_timebase_info(&timebase)", 34, &unk_23F3091D6, 0);
        return info;
      }
    }

    else
    {
      v0 = qword_27E396178;
      v1 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v3 = *v0;
      v2 = *(v0 + 8);
      v0 += 16;
      v3(v2, "0 == mach_timebase_info(&timebase)", 34, &unk_23F3091D6, 0);
    }

    while (v0 != v1);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return info;
}

unint64_t sub_23F2D746C()
{
  v0 = mach_continuous_time();
  if ((atomic_load_explicit(&qword_27E396170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396170))
  {
    sub_23F2D72B8();
    v2 = qword_27E396158;
    sub_23F2D72B8();
    LODWORD(v3) = HIDWORD(qword_27E396158);
    *&qword_27E396168 = v2 / v3;
    __cxa_guard_release(&qword_27E396170);
  }

  return llround(*&qword_27E396168 * v0);
}

const __CFString *sub_23F2D751C@<X0>(const __CFString *result@<X0>, std::string *a2@<X8>)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v3 = result;
  result = CFStringGetLength(result);
  if (result)
  {
    v4 = result;
    usedBufLen = 0;
    v9.location = 0;
    v9.length = result;
    result = CFStringGetBytes(v3, v9, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (result > 0)
    {
      memset(&v7, 0, sizeof(v7));
      if (usedBufLen)
      {
        std::string::append(&v7, usedBufLen, 0);
        v5 = usedBufLen;
        if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v7;
        }

        else
        {
          v6 = v7.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v5 = 0;
        v6 = &v7;
      }

      v10.location = 0;
      v10.length = v4;
      result = CFStringGetBytes(v3, v10, 0x8000100u, 0, 0, v6, v5, 0);
      *a2 = v7;
      goto LABEL_12;
    }

LABEL_8:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    return result;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
LABEL_12:
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void sub_23F2D7640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2D765C(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*(a1 + 16) == 1)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      operator new();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  sub_23F2DA270();
}

void sub_23F2D7CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F2DD274(va);
  if (*(v8 + 23) < 0)
  {
    operator delete(*v8);
  }

  _Unwind_Resume(a1);
}

void sub_23F2D7D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2D7DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2D7DC4(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*(a1 + 16) == 1)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      operator new();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  operator new();
}

void sub_23F2D85D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  sub_23F2DD274(&a21);
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2D86F4(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  sub_23F06BA44(a1, v2, 1, 0, v1);
  operator new();
}

void sub_23F2D8804(_Unwind_Exception *a1, uint64_t a2, unsigned __int8 a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_23F06357C(va, a3);
  sub_23F06BCA8(va1);
  _Unwind_Resume(a1);
}

void sub_23F2D8828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F06BCA8(va);
  _Unwind_Resume(a1);
}

void sub_23F2D883C(uint64_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  sub_23F2D8984(a1, v2, 1, 0, v1);
  operator new();
}

void sub_23F2D894C(_Unwind_Exception *a1, uint64_t a2, unsigned __int8 a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, uint64_t *);
  sub_23F0655DC(va, a3);
  sub_23F2D8D90(va1);
  _Unwind_Resume(a1);
}

void sub_23F2D8970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F2D8D90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2D8984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  v8 = *(a1 + 23);
  v9 = a1[1];
  if (v8 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  *(a5 + 8) = 0;
  if (v8 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
LABEL_10:
    v19 = v12;
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    v39 = 0;
    goto LABEL_16;
  }

  if (v12 != a2)
  {
    v12 = (*(*v12 + 16))(v12);
    goto LABEL_10;
  }

  v19 = v18;
  (*(*v12 + 24))(v12, v18);
  v12 = v19;
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v12 == v18)
  {
    v39 = v38;
    (*(*v12 + 24))(v12, v38);
  }

  else
  {
    v39 = v12;
    v19 = 0;
  }

LABEL_16:
  v13 = v39;
  if (!v39)
  {
LABEL_19:
    v21 = v13;
    goto LABEL_21;
  }

  if (v39 != v38)
  {
    v13 = (*(*v39 + 16))();
    goto LABEL_19;
  }

  v21 = v20;
  (*(*v39 + 24))();
LABEL_21:
  v22 = 0;
  v23[0] = v10;
  v23[1] = v10 + v11;
  v24 = a4;
  v25 = -1;
  v26 = 0;
  v27 = 0u;
  *v28 = 0u;
  v29 = 0u;
  __p = 0u;
  v31 = 0;
  v32 = &unk_23F3091D6;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v14 = localeconv();
  if (v14->decimal_point)
  {
    v15 = *v14->decimal_point;
  }

  else
  {
    v15 = 46;
  }

  v36 = v15;
  v37 = a3;
  v22 = sub_23F2E2F80(v23);
  if (v39 == v38)
  {
    (*(*v39 + 32))(v39);
  }

  else if (v39)
  {
    (*(*v39 + 40))();
  }

  sub_23F2DF860(v20, a5);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  if (v21 != v20)
  {
    if (v21)
    {
      (*(*v21 + 40))();
    }

    result = v19;
    if (v19 != v18)
    {
      goto LABEL_36;
    }

LABEL_39:
    result = (*(*result + 32))(result);
    goto LABEL_40;
  }

  (*(*v21 + 32))(v21);
  result = v19;
  if (v19 == v18)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_40:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F2D8D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2D8D90(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t **sub_23F2D8E1C(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    sub_23F06357C(v1 + 1, *v1);
    MEMORY[0x245CACD00](v1, 0x1022C40B06DCE69);
    return v2;
  }

  return result;
}

uint64_t ***sub_23F2D8E74(uint64_t ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    sub_23F0655DC(v1 + 1, *v1);
    MEMORY[0x245CACD00](v1, 0x1022C40B06DCE69);
    return v2;
  }

  return result;
}

uint64_t sub_23F2D8ECC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != v3)
  {
    v8 = v2 == 5 && v3 == 7;
    if (v8)
    {
      v11 = a1[1];
    }

    else
    {
      if (v2 == 7 && v3 == 5)
      {
        return *(a1 + 1) == a2[1];
      }

      if (v2 != 6 || v3 != 7)
      {
        if (v2 == 7 && v3 == 6)
        {
          return *(a1 + 1) == a2[1];
        }

        if (v2 != 6 || v3 != 5)
        {
          result = 0;
          if (v2 != 5 || v3 != 6)
          {
            return result;
          }

          v41 = a1[1];
          return v41 == a2[1];
        }

        goto LABEL_90;
      }

      v11 = a1[1];
    }

    return *(a2 + 1) == v11;
  }

  if (*a1 <= 3u)
  {
    if (*a1 > 1u)
    {
      if (v2 == 2)
      {
        v36 = a1[1];
        v37 = a2[1];
        v38 = *v36;
        v39 = v36[1];
        v40 = *v37;
        if (v39 - *v36 == v37[1] - *v37)
        {
          if (v38 != v39)
          {
            do
            {
              result = sub_23F2D8ECC(v38, v40);
              if (!result)
              {
                break;
              }

              v38 += 16;
              v40 += 16;
            }

            while (v38 != v39);
            return result;
          }

          return 1;
        }
      }

      else
      {
        v28 = a1[1];
        v29 = a2[1];
        v30 = *(v28 + 23);
        if (v30 >= 0)
        {
          v31 = *(v28 + 23);
        }

        else
        {
          v31 = *(v28 + 8);
        }

        v32 = *(v29 + 23);
        v33 = v32;
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(v29 + 8);
        }

        if (v31 == v32)
        {
          if (v30 >= 0)
          {
            v34 = a1[1];
          }

          else
          {
            v34 = *v28;
          }

          if (v33 >= 0)
          {
            v35 = a2[1];
          }

          else
          {
            v35 = *v29;
          }

          return memcmp(v34, v35, v31) == 0;
        }
      }
    }

    else
    {
      if (!*a1)
      {
        return 1;
      }

      v12 = a1[1];
      v13 = a2[1];
      if (v12[2] == v13[2])
      {
        v16 = *v12;
        v14 = v12 + 1;
        v15 = v16;
        if (v16 != v14)
        {
          v17 = *v13;
          while (1)
          {
            v18 = *(v15 + 55);
            if (v18 >= 0)
            {
              v19 = *(v15 + 55);
            }

            else
            {
              v19 = v15[5];
            }

            v20 = *(v17 + 55);
            v21 = v20;
            if ((v20 & 0x80u) != 0)
            {
              v20 = v17[5];
            }

            if (v19 != v20)
            {
              break;
            }

            v22 = v18 >= 0 ? v15 + 4 : v15[4];
            v23 = v21 >= 0 ? v17 + 4 : v17[4];
            if (memcmp(v22, v23, v19))
            {
              break;
            }

            result = sub_23F2D8ECC(v15 + 7, v17 + 7);
            if (result)
            {
              v24 = v15[1];
              v25 = v15;
              if (v24)
              {
                do
                {
                  v15 = v24;
                  v24 = *v24;
                }

                while (v24);
              }

              else
              {
                do
                {
                  v15 = v25[2];
                  v8 = *v15 == v25;
                  v25 = v15;
                }

                while (!v8);
              }

              v26 = v17[1];
              if (v26)
              {
                do
                {
                  v27 = v26;
                  v26 = *v26;
                }

                while (v26);
              }

              else
              {
                do
                {
                  v27 = v17[2];
                  v8 = *v27 == v17;
                  v17 = v27;
                }

                while (!v8);
              }

              result = 1;
              v17 = v27;
              if (v15 != v14)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 1;
      }
    }

    return 0;
  }

  if (*a1 <= 5u)
  {
    if (v2 == 4)
    {
      return *(a1 + 8) == *(a2 + 8);
    }

    goto LABEL_90;
  }

  switch(v2)
  {
    case 6:
LABEL_90:
      v41 = a1[1];
      return v41 == a2[1];
    case 7:
      return *(a1 + 1) == *(a2 + 1);
    case 8:
      v4 = a1[1];
      v5 = a2[1];
      v6 = *(v4 + 8) - *v4;
      if (v6 == *(v5 + 8) - *v5 && !memcmp(*v4, *v5, v6) && *(v4 + 24) == *(v5 + 24))
      {
        return *(v4 + 25) == *(v5 + 25);
      }

      return 0;
  }

  return 0;
}

uint64_t sub_23F2D92D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != v3)
  {
    if (v2 == 5 && v3 == 7)
    {
      v11 = a1[1];
    }

    else
    {
      if (v2 == 7 && v3 == 5)
      {
        return *(a1 + 1) == a2[1];
      }

      if (v2 != 6 || v3 != 7)
      {
        if (v2 == 7 && v3 == 6)
        {
          return *(a1 + 1) == a2[1];
        }

        if (v2 != 6 || v3 != 5)
        {
          result = 0;
          if (v2 != 5 || v3 != 6)
          {
            return result;
          }

          v38 = a1[1];
          return v38 == a2[1];
        }

        goto LABEL_80;
      }

      v11 = a1[1];
    }

    return *(a2 + 1) == v11;
  }

  if (*a1 <= 3u)
  {
    if (*a1 > 1u)
    {
      if (v2 == 2)
      {
        v33 = a1[1];
        v34 = a2[1];
        v35 = *v33;
        v36 = v33[1];
        v37 = *v34;
        if (v36 - *v33 == v34[1] - *v34)
        {
          if (v35 != v36)
          {
            do
            {
              result = sub_23F2D92D8(v35, v37);
              if (!result)
              {
                break;
              }

              v35 += 16;
              v37 += 16;
            }

            while (v35 != v36);
            return result;
          }

          return 1;
        }
      }

      else
      {
        v25 = a1[1];
        v26 = a2[1];
        v27 = *(v25 + 23);
        if (v27 >= 0)
        {
          v28 = *(v25 + 23);
        }

        else
        {
          v28 = *(v25 + 8);
        }

        v29 = *(v26 + 23);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(v26 + 8);
        }

        if (v28 == v29)
        {
          if (v27 >= 0)
          {
            v31 = a1[1];
          }

          else
          {
            v31 = *v25;
          }

          if (v30 >= 0)
          {
            v32 = a2[1];
          }

          else
          {
            v32 = *v26;
          }

          return memcmp(v31, v32, v28) == 0;
        }
      }
    }

    else
    {
      if (!*a1)
      {
        return 1;
      }

      v12 = a1[1];
      v13 = a2[1];
      v15 = *v12;
      v14 = v12[1];
      v16 = *v13;
      if (v14 - *v12 == v13[1] - *v13)
      {
        if (v15 != v14)
        {
          v17 = 0;
          while (1)
          {
            v18 = v16 + v17;
            v19 = *(v15 + v17 + 23);
            if (v19 >= 0)
            {
              v20 = *(v15 + v17 + 23);
            }

            else
            {
              v20 = *(v15 + v17 + 8);
            }

            v21 = *(v18 + 23);
            v22 = v21;
            if ((v21 & 0x80u) != 0)
            {
              v21 = *(v18 + 8);
            }

            if (v20 != v21)
            {
              break;
            }

            v23 = v19 >= 0 ? (v15 + v17) : *(v15 + v17);
            v24 = v22 >= 0 ? (v16 + v17) : *v18;
            if (memcmp(v23, v24, v20))
            {
              break;
            }

            result = sub_23F2D92D8(v15 + v17 + 24, v16 + v17 + 24);
            if (result)
            {
              v17 += 40;
              result = 1;
              if (v15 + v17 != v14)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 1;
      }
    }

    return 0;
  }

  if (*a1 <= 5u)
  {
    if (v2 == 4)
    {
      return *(a1 + 8) == *(a2 + 8);
    }

    goto LABEL_80;
  }

  switch(v2)
  {
    case 6:
LABEL_80:
      v38 = a1[1];
      return v38 == a2[1];
    case 7:
      return *(a1 + 1) == *(a2 + 1);
    case 8:
      v4 = a1[1];
      v5 = a2[1];
      v6 = *(v4 + 8) - *v4;
      if (v6 == *(v5 + 8) - *v5 && !memcmp(*v4, *v5, v6) && *(v4 + 24) == *(v5 + 24))
      {
        return *(v4 + 25) == *(v5 + 25);
      }

      return 0;
  }

  return 0;
}

uint64_t *sub_23F2D9694(uint64_t a1, const void **a2)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_23F06D864(a1);
    sub_23EF3F240(&v6, v5);
    sub_23F06C3EC("cannot use operator[] with a string argument with ", &v6, &v7);
    sub_23F06D6C8(305, &v7, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  return sub_23F04BB84(*(a1 + 8), a2) + 7;
}

void sub_23F2D974C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

uint64_t sub_23F2D97AC(uint64_t a1, const void **a2)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v14 = sub_23F06D864(a1);
    sub_23EF3F240(&v15, v14);
    sub_23F06C3EC("cannot use operator[] with a string argument with ", &v15, &v16);
    sub_23F06D6C8(305, &v16, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v2 = *(a1 + 8);
  v4 = *v2;
  v3 = v2[1];
  if (*v2 != v3)
  {
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    while (1)
    {
      v8 = *(v4 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v4 + 8);
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v4 : *v4;
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v4 += 40;
      if (v4 == v3)
      {
        return v3 + 24;
      }
    }

    v3 = v4;
  }

  return v3 + 24;
}

void sub_23F2D98D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_23F2D9930(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 3);
  *(v1 + 3) = 0;
  operator new();
}

void sub_23F2D9CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F2D9CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::locale a13)
{
  std::locale::~locale(&a13);
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F2D9CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23F2DBBDC(va);
  _Unwind_Resume(a1);
}

void sub_23F2D9D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_23EF3AE8C(&a14);
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F2D9D28(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 3);
  *(v1 + 3) = 0;
  operator new();
}

void sub_23F2DA0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F2DA0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::locale a13)
{
  std::locale::~locale(&a13);
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F2DA0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23F2DBBDC(va);
  _Unwind_Resume(a1);
}

void sub_23F2DA0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_23EF3AE8C(&a14);
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void *sub_23F2DA120(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }
    }

    else if (a2 != 1)
    {
LABEL_7:
      *result = 0;
      return result;
    }

    operator new();
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_7;
  }

  if (a2 == 4)
  {
    *result = 0;
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_23F2DA478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2DA4BC(uint64_t result, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  v9 = *a2;
  if (v9 > 4)
  {
    if (*a2 > 6u)
    {
      if (v9 == 7)
      {
        if ((*(a2 + 1) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_38:
          v31 = *result;
          v11 = (**v8)[1];
          goto LABEL_196;
        }

        sub_23F2DC3BC((result + 16), *(a2 + 1));
        v11 = (**v8)[1];
LABEL_196:

        return v11();
      }

      if (v9 != 8)
      {
        if (v9 != 9)
        {
          return result;
        }

        v12 = *result;
        v11 = (**v8)[1];
        goto LABEL_196;
      }

      v33 = *result;
      v34 = (**v8)[1];
      if (a3)
      {
        v34();
        v35 = (a5 + a4);
        v36 = v8 + 76;
        v37 = *(v8 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v61 = v8[77];
          if (v61 >= v35)
          {
            v38 = *v8;
            goto LABEL_84;
          }
        }

        else
        {
          if (v35 <= v37)
          {
            v38 = *v8;
            v39 = v8 + 76;
            goto LABEL_85;
          }

          v61 = *(v8 + 631);
        }

        std::string::resize((v8 + 76), 2 * v61, 32);
        v38 = *v8;
        v39 = v8 + 76;
        if ((*(v8 + 631) & 0x80000000) == 0)
        {
LABEL_85:
          ((*v38)[1])(v38, v39, v35);
          ((**v8)[1])(*v8, "bytes: [", 10);
          v62 = **(a2 + 1);
          v63 = *(*(a2 + 1) + 8);
          v64 = **(a2 + 1);
          if (v64 == v63)
          {
            goto LABEL_160;
          }

          if (v64 != v63 - 1)
          {
            while (1)
            {
              v65 = *v64;
              if (*v64)
              {
                break;
              }

              (***v8)(*v8, 48);
LABEL_89:
              ((**v8)[1])(*v8, ", ", 2);
              ++v64;
              v63 = *(*(a2 + 1) + 8);
              if (v64 == v63 - 1)
              {
                goto LABEL_98;
              }
            }

            if (v65 >= 0xA)
            {
              if (v65 < 0x64)
              {
                v67 = &a00010203040506_0[2 * v65];
                *(v8 + 17) = v67[1];
                v68 = *v67;
                v66 = 2;
LABEL_97:
                *(v8 + 16) = v68;
                ((**v8)[1])(*v8, v8 + 2, v66);
                goto LABEL_89;
              }

              *(v8 + 17) = *&a00010203040506_0[2 * (*v64 % 0x64u)];
              LOBYTE(v65) = v65 / 0x64u;
              v66 = 3;
            }

            else
            {
              v66 = 1;
            }

            v68 = v65 | 0x30;
            goto LABEL_97;
          }

LABEL_98:
          v69 = *(v63 - 1);
          if (!v69)
          {
            (***v8)(*v8, 48);
            goto LABEL_160;
          }

          if (v69 >= 0xA)
          {
            if (v69 < 0x64)
            {
              v86 = &a00010203040506_0[2 * v69];
              *(v8 + 17) = v86[1];
              v87 = *v86;
              v70 = 2;
LABEL_159:
              *(v8 + 16) = v87;
              ((**v8)[1])(*v8, v8 + 2, v70);
LABEL_160:
              ((**v8)[1])(*v8, "],\n", 3);
              v95 = v8 + 76;
              if (*(v8 + 631) < 0)
              {
                v95 = *v36;
              }

              ((**v8)[1])(*v8, v95, v35);
              ((**v8)[1])(*v8, "subtype: ", 11);
              v96 = *(a2 + 1);
              if (*(v96 + 25) != 1)
              {
                v98 = (**v8)[1];
LABEL_180:
                v98();
                goto LABEL_181;
              }

              v97 = *(v96 + 24);
              if (!v97)
              {
                (***v8)(*v8, 48);
LABEL_181:
                (***v8)(*v8, 10);
                if (*(v8 + 631) < 0)
                {
                  v101 = *v36;
                }

                v79 = (**v8)[1];
                goto LABEL_184;
              }

              if (v97 >= 0xA)
              {
                if (v97 < 0x64)
                {
                  v99 = &a00010203040506_0[2 * v97];
                  *(v8 + 17) = v99[1];
                  v100 = *v99;
LABEL_179:
                  *(v8 + 16) = v100;
                  v98 = (**v8)[1];
                  goto LABEL_180;
                }

                *(v8 + 17) = *&a00010203040506_0[2 * (v97 % 0x64u)];
                LOBYTE(v97) = v97 / 0x64u;
              }

              v100 = v97 | 0x30;
              goto LABEL_179;
            }

            *(v8 + 17) = *&a00010203040506_0[2 * (v69 % 0x64u)];
            v70 = 3;
            LOBYTE(v69) = v69 / 0x64u;
          }

          else
          {
            v70 = 1;
          }

          v87 = v69 | 0x30;
          goto LABEL_159;
        }

LABEL_84:
        v39 = *v36;
        goto LABEL_85;
      }

      v34();
      v42 = **(a2 + 1);
      v43 = *(*(a2 + 1) + 8);
      v44 = **(a2 + 1);
      if (v44 == v43)
      {
LABEL_149:
        ((**v8)[1])(*v8, "],subtype:", 12);
        v90 = *(a2 + 1);
        if (*(v90 + 25) != 1)
        {
          v11 = (**v8)[1];
          goto LABEL_196;
        }

        v91 = *(v90 + 24);
        if (!v91)
        {
          (***v8)(*v8, 48);
LABEL_173:
          v41 = ***v8;
          goto LABEL_174;
        }

        if (v91 >= 0xA)
        {
          if (v91 < 0x64)
          {
            v93 = &a00010203040506_0[2 * v91];
            *(v8 + 17) = v93[1];
            v94 = *v93;
            v92 = 2;
LABEL_172:
            *(v8 + 16) = v94;
            ((**v8)[1])(*v8, v8 + 2, v92);
            goto LABEL_173;
          }

          *(v8 + 17) = *&a00010203040506_0[2 * (v91 % 0x64u)];
          v92 = 3;
          LOBYTE(v91) = v91 / 0x64u;
        }

        else
        {
          v92 = 1;
        }

        v94 = v91 | 0x30;
        goto LABEL_172;
      }

      if (v44 != v43 - 1)
      {
        while (1)
        {
          v45 = *v44;
          if (*v44)
          {
            break;
          }

          (***v8)(*v8, 48);
LABEL_51:
          (***v8)(*v8, 44);
          ++v44;
          v43 = *(*(a2 + 1) + 8);
          if (v44 == v43 - 1)
          {
            goto LABEL_71;
          }
        }

        if (v45 >= 0xA)
        {
          if (v45 < 0x64)
          {
            v47 = &a00010203040506_0[2 * v45];
            *(v8 + 17) = v47[1];
            v48 = *v47;
            v46 = 2;
LABEL_59:
            *(v8 + 16) = v48;
            ((**v8)[1])(*v8, v8 + 2, v46);
            goto LABEL_51;
          }

          *(v8 + 17) = *&a00010203040506_0[2 * (*v44 % 0x64u)];
          LOBYTE(v45) = v45 / 0x64u;
          v46 = 3;
        }

        else
        {
          v46 = 1;
        }

        v48 = v45 | 0x30;
        goto LABEL_59;
      }

LABEL_71:
      v56 = *(v43 - 1);
      if (!v56)
      {
        (***v8)(*v8, 48);
        goto LABEL_149;
      }

      if (v56 >= 0xA)
      {
        if (v56 < 0x64)
        {
          v84 = &a00010203040506_0[2 * v56];
          *(v8 + 17) = v84[1];
          v85 = *v84;
          v57 = 2;
LABEL_148:
          *(v8 + 16) = v85;
          ((**v8)[1])(*v8, v8 + 2, v57);
          goto LABEL_149;
        }

        *(v8 + 17) = *&a00010203040506_0[2 * (v56 % 0x64u)];
        v57 = 3;
        LOBYTE(v56) = v56 / 0x64u;
      }

      else
      {
        v57 = 1;
      }

      v85 = v56 | 0x30;
      goto LABEL_148;
    }

    if (v9 == 5)
    {
      v19 = *(a2 + 1);
      if (v19)
      {
        v23 = (result + 16);
        if ((v19 & 0x8000000000000000) != 0)
        {
          *v23 = 45;
          v19 = -v19;
          if (v19 >= 0xA)
          {
            v58 = 4;
            v80 = v19;
            while (1)
            {
              if (v80 <= 0x63)
              {
                v58 -= 2;
                goto LABEL_188;
              }

              if (v80 <= 0x3E7)
              {
                break;
              }

              if (v80 >> 4 < 0x271)
              {
                goto LABEL_188;
              }

              v58 += 4;
              v22 = v80 >= 0x186A0;
              v80 /= 0x2710uLL;
              if (!v22)
              {
                v58 -= 3;
                goto LABEL_188;
              }
            }

            --v58;
          }

          else
          {
            v58 = 1;
          }

LABEL_188:
          v59 = v58 + 1;
        }

        else
        {
          if (v19 < 0xA)
          {
            goto LABEL_31;
          }

          v59 = 4;
          v60 = *(a2 + 1);
          while (1)
          {
            if (v60 <= 0x63)
            {
              v59 -= 2;
              goto LABEL_189;
            }

            if (v60 <= 0x3E7)
            {
              break;
            }

            if (v60 >> 4 < 0x271)
            {
              goto LABEL_189;
            }

            v59 += 4;
            v22 = v60 >= 0x186A0;
            v60 /= 0x2710uLL;
            if (!v22)
            {
              v59 -= 3;
              goto LABEL_189;
            }
          }

          --v59;
        }

LABEL_189:
        v24 = &v23[v59];
        if (v19 < 0x64)
        {
          v88 = v19;
        }

        else
        {
          do
          {
            v88 = v19 / 0x64;
            *(v24 - 2) = *&a00010203040506_0[2 * (v19 % 0x64)];
            v24 -= 2;
            v102 = v19 >> 4;
            v19 /= 0x64uLL;
          }

          while (v102 > 0x270);
        }

        if (v88 < 0xA)
        {
LABEL_142:
          LOBYTE(v19) = v88;
          goto LABEL_143;
        }

LABEL_194:
        *(v24 - 2) = *&a00010203040506_0[2 * v88];
        goto LABEL_195;
      }
    }

    else
    {
      if (v9 != 6)
      {
        return result;
      }

      v19 = *(a2 + 1);
      if (v19)
      {
        if (v19 >= 0xA)
        {
          v20 = 4;
          v21 = *(a2 + 1);
          while (1)
          {
            if (v21 <= 0x63)
            {
              v20 -= 2;
              goto LABEL_137;
            }

            if (v21 <= 0x3E7)
            {
              break;
            }

            if (v21 >> 4 < 0x271)
            {
              goto LABEL_137;
            }

            v20 += 4;
            v22 = v21 >= 0x186A0;
            v21 /= 0x2710uLL;
            if (!v22)
            {
              v20 -= 3;
              goto LABEL_137;
            }
          }

          --v20;
LABEL_137:
          v24 = result + 16 + v20;
          if (v19 < 0x64)
          {
            v88 = *(a2 + 1);
          }

          else
          {
            do
            {
              v88 = v19 / 0x64;
              *(v24 - 2) = *&a00010203040506_0[2 * (v19 % 0x64)];
              v24 -= 2;
              v89 = v19 >> 4;
              v19 /= 0x64uLL;
            }

            while (v89 > 0x270);
          }

          if (v88 < 0xA)
          {
            goto LABEL_142;
          }

          goto LABEL_194;
        }

LABEL_31:
        v24 = result + 17;
LABEL_143:
        *(v24 - 1) = v19 | 0x30;
LABEL_195:
        v103 = *result;
        v11 = (**v8)[1];
        goto LABEL_196;
      }
    }

    v40 = *result;
    v41 = ***v8;
LABEL_174:

    return v41();
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v13 = *result;
      v14 = **v8;
      if (!*(*(a2 + 1) + 16))
      {
        v49 = v14[1];
        goto LABEL_62;
      }

      if (!a3)
      {
        (*v14)();
        v50 = *(a2 + 1);
        v51 = *v50;
        if (v50[2] == 1)
        {
          v52 = *v50;
        }

        else
        {
          v71 = 0;
          do
          {
            (***v8)(*v8, 34);
            sub_23F2DBD34(v8, v51 + 4);
            ((**v8)[1])(*v8, ":", 2);
            sub_23F2DA4BC(v8, v51 + 7, 0, a4, a5);
            (***v8)();
            v72 = v51[1];
            if (v72)
            {
              do
              {
                v52 = v72;
                v72 = *v72;
              }

              while (v72);
            }

            else
            {
              do
              {
                v52 = v51[2];
                v73 = *v52 == v51;
                v51 = v52;
              }

              while (!v73);
            }

            ++v71;
            v51 = v52;
          }

          while (v71 < *(*(a2 + 1) + 16) - 1);
        }

        (***v8)(*v8, 34);
        sub_23F2DBD34(v8, v52 + 4);
        ((**v8)[1])(*v8, ":", 2);
        sub_23F2DA4BC(v8, v52 + 7, 0, a4, a5);
        goto LABEL_185;
      }

      v14[1]();
      v15 = (a5 + a4);
      v16 = v8 + 76;
      v17 = *(v8 + 631);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = v8[77];
        if (v18 < v15)
        {
LABEL_199:
          std::string::resize((v8 + 76), 2 * v18, 32);
          v104 = *(a2 + 1);
          v75 = *v104;
          if (v104[2] != 1)
          {
LABEL_200:
            v105 = 0;
            do
            {
              v106 = v8 + 76;
              if (*(v8 + 631) < 0)
              {
                v106 = *v16;
              }

              ((**v8)[1])(*v8, v106, (a5 + a4));
              (***v8)();
              sub_23F2DBD34(v8, v75 + 4);
              ((**v8)[1])(*v8, ": ", 3);
              sub_23F2DA4BC(v8, v75 + 7, 1, a4, (a5 + a4));
              ((**v8)[1])(*v8, ",\n", 2);
              v107 = v75[1];
              if (v107)
              {
                do
                {
                  v76 = v107;
                  v107 = *v107;
                }

                while (v107);
              }

              else
              {
                do
                {
                  v76 = v75[2];
                  v73 = *v76 == v75;
                  v75 = v76;
                }

                while (!v73);
              }

              ++v105;
              v75 = v76;
            }

            while (v105 < *(*(a2 + 1) + 16) - 1);
            goto LABEL_112;
          }

LABEL_111:
          v76 = v75;
LABEL_112:
          v77 = v8 + 76;
          if (*(v8 + 631) < 0)
          {
            v77 = *v16;
          }

          ((**v8)[1])(*v8, v77, (a5 + a4));
          (***v8)();
          sub_23F2DBD34(v8, v76 + 4);
          ((**v8)[1])(*v8, ": ", 3);
          sub_23F2DA4BC(v8, v76 + 7, 1, a4, (a5 + a4));
          (***v8)();
          if (*(v8 + 631) < 0)
          {
            v78 = *v16;
          }

          v79 = (**v8)[1];
LABEL_184:
          v79();
LABEL_185:
          v11 = ***v8;
          goto LABEL_217;
        }
      }

      else if (v15 > v17)
      {
        v18 = *(v8 + 631);
        goto LABEL_199;
      }

      v74 = *(a2 + 1);
      v75 = *v74;
      if (v74[2] != 1)
      {
        goto LABEL_200;
      }

      goto LABEL_111;
    }

    goto LABEL_38;
  }

  switch(v9)
  {
    case 2u:
      v25 = *result;
      v26 = **v8;
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        if (!a3)
        {
          (*v26)();
          v53 = *(a2 + 1);
          v55 = *v53;
          for (i = v53[1]; v55 != i - 16; i = *(*(a2 + 1) + 8))
          {
            sub_23F2DA4BC(v8, v55, 0, a4, a5);
            (***v8)();
            v55 += 16;
          }

          sub_23F2DA4BC(v8, i - 16, 0, a4, a5);
          goto LABEL_216;
        }

        v26[1]();
        v27 = (a5 + a4);
        v28 = v8 + 76;
        v29 = *(v8 + 631);
        if ((v29 & 0x80000000) != 0)
        {
          v30 = v8[77];
          if (v30 < v27)
          {
LABEL_210:
            std::string::resize((v8 + 76), 2 * v30, 32);
            v108 = *(a2 + 1);
            v82 = *v108;
            if (*v108 == v108[1] - 16)
            {
              goto LABEL_211;
            }

            goto LABEL_127;
          }
        }

        else if (v27 > v29)
        {
          v30 = *(v8 + 631);
          goto LABEL_210;
        }

        v81 = *(a2 + 1);
        v82 = *v81;
        if (*v81 == v81[1] - 16)
        {
LABEL_211:
          v109 = v8 + 76;
          if (*(v8 + 631) < 0)
          {
            v109 = *v28;
          }

          ((**v8)[1])(*v8, v109, (a5 + a4));
          sub_23F2DA4BC(v8, *(*(a2 + 1) + 8) - 16, 1, a4, (a5 + a4));
          (***v8)();
          if (*(v8 + 631) < 0)
          {
            v28 = *v28;
          }

          ((**v8)[1])(*v8, v28, a5);
LABEL_216:
          v11 = ***v8;
LABEL_217:

          return v11();
        }

        do
        {
LABEL_127:
          if (*(v8 + 631) < 0)
          {
            v83 = *v28;
          }

          (**v8)[1]();
          sub_23F2DA4BC(v8, v82, 1, a4, (a5 + a4));
          ((**v8)[1])(*v8, ",\n", 2);
          v82 += 16;
        }

        while (v82 != *(*(a2 + 1) + 8) - 16);
        goto LABEL_211;
      }

      v49 = v26[1];
LABEL_62:

      return v49();
    case 3u:
      v32 = *result;
      (***v8)();
      sub_23F2DBD34(v8, *(a2 + 1));
      v11 = ***v8;
      goto LABEL_217;
    case 4u:
      v10 = *result;
      v11 = (**v8)[1];
      a2[8];
      goto LABEL_196;
  }

  return result;
}

uint64_t sub_23F2DBBDC(uint64_t result)
{
  if (*(result + 631) < 0)
  {
    v1 = result;
    operator delete(*(result + 608));
    result = v1;
  }

  v2 = *(result + 8);
  if (v2)
  {
    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = result;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      return v3;
    }
  }

  return result;
}

void sub_23F2DBC90(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D6D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2DBD34(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a2 + 23);
  }

  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v2 >> 63;
  v13 = result + 90;
  do
  {
    v16 = *a2;
    if ((v12 & 1) == 0)
    {
      v16 = a2;
    }

    v17 = *(v16 + v7);
    if (v10)
    {
      v11 = *(v16 + v7) & 0x3F | (v11 << 6);
    }

    else
    {
      v11 = (0xFFu >> byte_23F348B20[v17]) & v17;
    }

    v10 = byte_23F348B20[16 * v10 + 256 + byte_23F348B20[v17]];
    if (v10 != 1)
    {
      if (v10)
      {
        *(v13 + v6++) = *(v16 + v7);
        ++v8;
        goto LABEL_6;
      }

      if (v11 <= 11)
      {
        switch(v11)
        {
          case 8:
            *(v13 + v6) = 25180;
            v9 = v6 + 2;
            if ((v6 - 498) <= 0xC)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          case 9:
            *(v13 + v6) = 29788;
            v9 = v6 + 2;
            if ((v6 - 498) <= 0xC)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          case 10:
            *(v13 + v6) = 28252;
            v9 = v6 + 2;
            if ((v6 - 498) <= 0xC)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
        }
      }

      else if (v11 > 33)
      {
        if (v11 == 34)
        {
          *(v13 + v6) = 8796;
          v9 = v6 + 2;
          if ((v6 - 498) <= 0xC)
          {
            goto LABEL_38;
          }

          goto LABEL_46;
        }

        if (v11 == 92)
        {
          *(v13 + v6) = 23644;
          v9 = v6 + 2;
          if ((v6 - 498) <= 0xC)
          {
            goto LABEL_38;
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (v11 == 12)
        {
          *(v13 + v6) = 26204;
          v9 = v6 + 2;
          if ((v6 - 498) <= 0xC)
          {
            goto LABEL_38;
          }

          goto LABEL_46;
        }

        if (v11 == 13)
        {
          *(v13 + v6) = 29276;
          v9 = v6 + 2;
          if ((v6 - 498) <= 0xC)
          {
            goto LABEL_38;
          }

          goto LABEL_46;
        }
      }

      if (v11 <= 0x1F)
      {
        result = snprintf((v13 + v6), 7uLL, "\\u%04x", v11);
        v9 = v6 + 6;
        if ((v6 - 494) <= 0xC)
        {
          goto LABEL_38;
        }

        goto LABEL_46;
      }

      v9 = v6 + 1;
      *(v13 + v6) = *(v16 + v7);
      if ((v6 - 499) > 0xC)
      {
LABEL_46:
        v10 = 0;
        v8 = 0;
        v6 = v9;
        goto LABEL_6;
      }

LABEL_38:
      v20 = *(**v5 + 8);
LABEL_39:
      result = v20();
      v10 = 0;
      v9 = 0;
      v8 = 0;
      v6 = 0;
      goto LABEL_6;
    }

    v18 = v5[158];
    if ((v18 - 1) < 2)
    {
      v7 -= v8 != 0;
      if (v18 != 1)
      {
        goto LABEL_46;
      }

      v6 = v9 + 3;
      v19 = v13 + v9;
      *v19 = -16401;
      *(v19 + 2) = -67;
      if ((v9 - 497) > 0xC)
      {
        v10 = 0;
        v8 = 0;
        v9 += 3;
        goto LABEL_6;
      }

      v20 = *(**v5 + 8);
      goto LABEL_39;
    }

    if (!v18)
    {
      v37 = 3;
      *__str = 0;
      snprintf(__str, 3uLL, "%.2X", v17);
      exception = __cxa_allocate_exception(0x20uLL);
      std::to_string(&v30, v7);
      sub_23F06C3EC("invalid UTF-8 byte at index ", &v30, &v31);
      sub_23F06E0E4(": 0x", &v31, &v32);
      if (v37 >= 0)
      {
        v24 = __str;
      }

      else
      {
        v24 = *__str;
      }

      if (v37 >= 0)
      {
        v25 = v37;
      }

      else
      {
        v25 = v36;
      }

      v26 = std::string::append(&v32, v24, v25);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v34 = v26->__r_.__value_.__r.__words[2];
      v33 = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      sub_23F06D6C8(316, &v33, exception);
      __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
    }

    v10 = 1;
LABEL_6:
    ++v7;
    v14 = *(a2 + 23);
    v12 = v14 >> 63;
    v15 = a2[1];
    if ((v14 & 0x80000000) == 0)
    {
      v15 = *(a2 + 23);
    }
  }

  while (v7 < v15);
  if (v10)
  {
    v22 = v5[158];
    switch(v22)
    {
      case 1:
        (*(**v5 + 8))(*v5, v13, v9);
        v21 = *(**v5 + 8);
        break;
      case 2:
        v21 = *(**v5 + 8);
        break;
      case 0:
        v37 = 3;
        *__str = 0;
        v28 = *a2;
        if ((v14 & 0x80000000) == 0)
        {
          v28 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v28 + v15 - 1));
        v29 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        sub_23F06D6C8(316, &v33, v29);
        __cxa_throw(v29, &unk_28517D070, sub_23F06D88C);
      default:
        return result;
    }

LABEL_55:

    return v21();
  }

  if (v6)
  {
    v21 = *(**v5 + 8);
    goto LABEL_55;
  }

  return result;
}

void sub_23F2DC2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v40)
  {
LABEL_7:
    if (a39 < 0)
    {
      operator delete(a34);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v39);
  goto LABEL_7;
}

char *sub_23F2DC3BC(char *__src, double a2)
{
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    *__src++ = 45;
  }

  if (a2 == 0.0)
  {
    *__src = 11824;
    v2 = __src + 3;
    __src[2] = 48;
    return v2;
  }

  v3 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v4 = *&a2 >> 52;
  if (!(*&a2 >> 52))
  {
    v5 = 2 * *&a2;
    v6 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v7 = -1075;
LABEL_11:
    v9 = v5 - 1;
    v8 = v7;
    goto LABEL_12;
  }

  v5 = 2 * (v3 | 0x10000000000000);
  v6 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
  v7 = v4 - 1076;
  if (!(*&a2 >> 53) || v3)
  {
    v3 |= 0x10000000000000uLL;
    goto LABEL_11;
  }

  v8 = v4 - 53;
  v9 = 0x3FFFFFFFFFFFFFLL;
  v3 = 0x10000000000000;
LABEL_12:
  v10 = -v7;
  v11 = -4813693 - 78913 * v7;
  do
  {
    v12 = v6;
    v6 *= 2;
    ++v10;
    v11 += 78913;
  }

  while ((v6 & 0x8000000000000000) == 0);
  do
  {
    v13 = v3;
    v3 *= 2;
  }

  while ((v3 & 0x8000000000000000) == 0);
  v14 = v9 << (v8 + v10);
  v15 = v11 / 0x40000;
  if (v10 - 61 > 0)
  {
    ++v15;
  }

  v16 = &unk_23F348630 + 16 * (((v15 + 307 + (((v15 + 307) >> 28) & 7)) << 16) >> 19);
  v17 = v16 + 8;
  v18 = v3 & 0xFFFFFFFE;
  v19 = v13 >> 31;
  v20 = *v16;
  v21 = HIDWORD(*v16);
  v22 = v20 * v18;
  v23 = HIDWORD(*v16) * v18;
  v24 = HIDWORD(v23);
  v25 = (v20 * v19) >> 32;
  v107 = v23;
  v108 = HIDWORD(v22);
  v106 = (v20 * v19);
  v26 = v23 + HIDWORD(v22) + v106;
  v27 = HIDWORD(v14);
  v28 = HIDWORD(*v16) * v14;
  v29 = v20 * HIDWORD(v14);
  v30 = (v20 * v14) >> 32;
  v31 = v28;
  v32 = v29;
  v33 = v10 - *(v16 + 2);
  v34 = v33 - 64;
  v35 = v6 & 0xFFFFFFFE;
  v36 = v12 >> 31;
  v37 = v20 * v35;
  v38 = v21 * v35;
  v39 = v20 * (v12 >> 31);
  v40 = HIDWORD(v38);
  v41 = HIDWORD(v39);
  v42 = (v38 + HIDWORD(v37) + v39 + 0x80000000) >> 32;
  v43 = v21 * v36 + HIDWORD(v38) + HIDWORD(v39) + v42 - 1;
  v44 = -*(v17 + 1);
  v45 = HIDWORD(v29) + HIDWORD(v28);
  v46 = ~(v21 * HIDWORD(v14)) - (v45 + ((v28 + v30 + v29 + 0x80000000) >> 32)) + v43;
  v47 = v43 - (v25 + v21 * v19 + v24 + ((v26 + 0x80000000) >> 32));
  v48 = 1 << v33;
  v49 = v43 >> v33;
  v50 = (1 << v33) - 1;
  v51 = v43 & v50;
  if (v49 <= 0x3B9AC9FF)
  {
    if (v49 <= 0x5F5E0FF)
    {
      if (v49 <= 0x98967F)
      {
        if (v49 <= 0xF423F)
        {
          v54 = v49 >> 5;
          v55 = v49 >> 4;
          if (v49 <= 9)
          {
            v56 = 1;
          }

          else
          {
            v56 = 10;
          }

          if (v49 <= 9)
          {
            v57 = 1;
          }

          else
          {
            v57 = 2;
          }

          if (v49 <= 0x63)
          {
            v58 = v56;
          }

          else
          {
            v58 = 100;
          }

          if (v49 > 0x63)
          {
            v57 = 3;
          }

          if (v49 > 0x3E7)
          {
            v58 = 1000;
            v57 = 4;
          }

          v59 = v55 > 0x270;
          if (v55 <= 0x270)
          {
            v60 = v58;
          }

          else
          {
            v60 = 10000;
          }

          if (v59)
          {
            v61 = 5;
          }

          else
          {
            v61 = v57;
          }

          v62 = v54 > 0xC34;
          if (v54 > 0xC34)
          {
            v52 = 100000;
          }

          else
          {
            v52 = v60;
          }

          if (v62)
          {
            v53 = 6;
          }

          else
          {
            v53 = v61;
          }
        }

        else
        {
          v52 = 1000000;
          v53 = 7;
        }
      }

      else
      {
        v52 = 10000000;
        v53 = 8;
      }
    }

    else
    {
      v52 = 100000000;
      v53 = 9;
    }
  }

  else
  {
    v52 = 1000000000;
    v53 = 10;
  }

  v63 = 0;
  v64 = v53;
  v65 = v24 + v25 + ((v108 + v107 + v106 + 0x80000000) >> 32);
  v66 = ~(v65 + v21 * v19) + v40 + v41 + v21 * v36 + v42;
  v67 = v40 - (v45 + ((v30 + v31 + v32 + 0x80000000) >> 32)) + v41 + v42 + v21 * (v36 - v27) - 2;
  v68 = v51 - v40 - v41 - v42 + v65 + v21 * (v19 - v36) + 1;
  while (v63 != v64)
  {
    v69 = v63;
    v70 = v49 / v52;
    v49 = v49 % v52;
    v71 = v70 + 48;
    v63 = v69 + 1;
    __src[v69] = v71;
    --v53;
    v72 = v49 << v34;
    v73 = (v49 << v34) + v51;
    if (v46 < v73)
    {
      v52 /= 0xAu;
    }

    else
    {
      v44 += v53;
      v74 = v52 << v34;
      v75 = v73 < v47 && v46 - v73 >= v74;
      if (!v75)
      {
        goto LABEL_75;
      }

      v76 = v66 - v73;
      v77 = v51 + v72 + v74;
      v78 = v67 - v77;
      v79 = v68 + v72 + v74;
      do
      {
        if (v77 >= v47 && v76 <= v79)
        {
          break;
        }

        __src[v69] = --v71;
        if (v77 >= v47)
        {
          break;
        }

        v76 -= v74;
        v77 += v74;
        v79 += v74;
        v75 = v78 >= v74;
        v78 -= v74;
      }

      while (v75);
    }

    if (v46 >= v73)
    {
      goto LABEL_75;
    }
  }

  do
  {
    v80 = v46;
    v81 = v47;
    v82 = (10 * v51) >> v34;
    v51 = (10 * v51) & v50;
    __src[v64++] = v82 + 48;
    v46 = 10 * v80;
    v47 *= 10;
    --v44;
  }

  while (10 * v80 < v51);
  if (v51 < v47 && 10 * v80 - v51 >= v48)
  {
    v83 = 10 * v81 - v51;
    v84 = v48 + v51;
    v85 = 10 * v80 - v84;
    do
    {
      if (v84 >= v47 && v83 <= -10 * v81 + v84)
      {
        break;
      }

      --__src[v64 - 1];
      if (v84 >= v47)
      {
        break;
      }

      v83 -= v48;
      v84 += v48;
      v75 = v85 >= v48;
      v85 -= v48;
    }

    while (v75);
  }

  LODWORD(v63) = v64;
LABEL_75:
  v86 = (v44 + v63);
  if (v44 < 0 || v86 > 15)
  {
    if ((v86 - 16) >= 0xFFFFFFF1)
    {
      v95 = &__src[v86];
      v96 = v63;
      v97 = v63 - v86;
      v98 = __src;
      memmove(v95 + 1, v95, v97);
      *v95 = 46;
      return &v98[v96 + 1];
    }

    else if (v86 != 0 && v86 < 0xFFFFFFFD)
    {
      if (v63 != 1)
      {
        v99 = v63;
        v100 = __src;
        memmove(__src + 2, __src + 1, v63 - 1);
        v100[1] = 46;
        __src = &v100[v99];
      }

      v101 = v86 - 1;
      if (v86 >= 1)
      {
        v102 = 43;
      }

      else
      {
        v102 = 45;
      }

      __src[2] = v102;
      __src[1] = 101;
      if (v86 - 1 < 0)
      {
        v101 = 1 - v86;
      }

      if (v101 > 9)
      {
        if (v101 > 0x63)
        {
          __src[3] = v101 / 0x64 + 48;
          v101 %= 0x64u;
          v103 = __src + 5;
          __src[4] = (v101 / 0xAu) | 0x30;
          LOBYTE(v101) = v101 % 0xAu;
          v104 = 4;
        }

        else
        {
          v103 = __src + 4;
          __src[3] = (v101 / 0xAu) | 0x30;
          LOBYTE(v101) = v101 % 0xAu;
          v104 = 3;
        }
      }

      else
      {
        v103 = __src + 4;
        __src[3] = 48;
        v104 = 3;
      }

      v2 = &__src[v104 + 2];
      *v103 = v101 | 0x30;
    }

    else
    {
      v90 = -v86;
      v91 = __src + 2;
      v92 = &__src[v90 + 2];
      v93 = v63;
      v94 = __src;
      memmove(v92, __src, v63);
      *v94 = 11824;
      memset(v91, 48, v90);
      return &v92[v93];
    }
  }

  else
  {
    v87 = v86;
    v88 = v86 - v63;
    v89 = __src;
    memset(&__src[v63], 48, v88);
    *&v89[v87] = 12334;
    return &v89[v87 + 2];
  }

  return v2;
}

uint64_t sub_23F2DCAD4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  if (v10 == 2)
  {
    v16 = **(a1 + 640);
    if (**(a2 + 1) != *(*(a2 + 1) + 8))
    {
      (*v16)();
      v17 = *(a2 + 1);
      v19 = *v17;
      for (i = v17[1]; v19 != i - 16; i = *(*(a2 + 1) + 8))
      {
        sub_23F2DCAD4(a1, v19, a3, a4, a5);
        (***(a1 + 640))();
        v19 += 16;
      }

      sub_23F2DCAD4(a1, i - 16, a3, a4, a5);
      v20 = ***(a1 + 640);
      goto LABEL_51;
    }

    v22 = *(v16 + 8);
LABEL_17:

    return v22();
  }

  if (v10 == 1)
  {
    v11 = **(a1 + 640);
    if (*(*(a2 + 1) + 16))
    {
      if (!a3)
      {
        (*v11)();
        v23 = *(a2 + 1);
        v24 = *v23;
        if (v23[2] < 2uLL)
        {
          v27 = *v23;
        }

        else
        {
          v25 = 1;
          do
          {
            (***(a1 + 640))(*(a1 + 640), 34);
            sub_23F2DBD34(a1, v24 + 4);
            (*(**(a1 + 640) + 8))(*(a1 + 640), ":", 2);
            sub_23F2DCAD4(a1, v24 + 7, 0, a4, a5);
            (***(a1 + 640))();
            v26 = v24[1];
            if (v26)
            {
              do
              {
                v27 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v27 = v24[2];
                v28 = *v27 == v24;
                v24 = v27;
              }

              while (!v28);
            }

            ++v25;
            v24 = v27;
          }

          while (v25 < *(*(a2 + 1) + 16));
        }

        (***(a1 + 640))(*(a1 + 640), 34);
        sub_23F2DBD34(a1, v27 + 4);
        (*(**(a1 + 640) + 8))(*(a1 + 640), ":", 2);
        sub_23F2DCAD4(a1, v27 + 7, 0, a4, a5);
LABEL_50:
        v20 = ***(a1 + 640);
LABEL_51:

        return v20();
      }

      v11[1]();
      v12 = (a5 + a4);
      v13 = (a1 + 664);
      v14 = *(a1 + 687);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = *(a1 + 672);
        if (v15 < v12)
        {
LABEL_43:
          std::string::resize((a1 + 664), 2 * v15, 32);
          v35 = *(a2 + 1);
          v30 = *v35;
          if (v35[2] < 2uLL)
          {
            goto LABEL_44;
          }

          goto LABEL_33;
        }
      }

      else if (v12 > v14)
      {
        v15 = *(a1 + 687);
        goto LABEL_43;
      }

      v29 = *(a2 + 1);
      v30 = *v29;
      if (v29[2] < 2uLL)
      {
LABEL_44:
        v34 = v30;
LABEL_45:
        v36 = (a1 + 664);
        if (*(a1 + 687) < 0)
        {
          v36 = *v13;
        }

        (*(**(a1 + 640) + 8))(*(a1 + 640), v36, (a5 + a4));
        (***(a1 + 640))();
        sub_23F2DBD34(a1, v34 + 4);
        (*(**(a1 + 640) + 8))(*(a1 + 640), ": ", 3);
        sub_23F2DCAD4(a1, v34 + 7, 1, a4, (a5 + a4));
        (***(a1 + 640))();
        if (*(a1 + 687) < 0)
        {
          v13 = *v13;
        }

        (*(**(a1 + 640) + 8))(*(a1 + 640), v13, a5);
        goto LABEL_50;
      }

LABEL_33:
      v31 = 1;
      do
      {
        v32 = a1 + 664;
        if (*(a1 + 687) < 0)
        {
          v32 = *v13;
        }

        (*(**(a1 + 640) + 8))(*(a1 + 640), v32, (a5 + a4));
        (***(a1 + 640))();
        sub_23F2DBD34(a1, v30 + 4);
        (*(**(a1 + 640) + 8))(*(a1 + 640), ": ", 3);
        sub_23F2DCAD4(a1, v30 + 7, 1, a4, (a5 + a4));
        (*(**(a1 + 640) + 8))(*(a1 + 640), ",\n", 2);
        v33 = v30[1];
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = v30[2];
            v28 = *v34 == v30;
            v30 = v34;
          }

          while (!v28);
        }

        ++v31;
        v30 = v34;
      }

      while (v31 < *(*(a2 + 1) + 16));
      goto LABEL_45;
    }

    v22 = v11[1];
    goto LABEL_17;
  }

  return sub_23F2DA4BC(a1, a2, a3, a4, a5);
}

uint64_t sub_23F2DD274(uint64_t a1)
{
  if (*(a1 + 687) < 0)
  {
    operator delete(*(a1 + 664));
  }

  v2 = *(a1 + 648);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(a1 + 631) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(a1 + 631) < 0)
  {
LABEL_6:
    operator delete(*(a1 + 608));
  }

LABEL_7:
  v3 = *(a1 + 8);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t sub_23F2DD364(uint64_t result, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  v9 = *a2;
  if (v9 > 4)
  {
    if (*a2 > 6u)
    {
      if (v9 == 7)
      {
        if ((*(a2 + 1) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_38:
          v31 = *result;
          v11 = (**v8)[1];
          goto LABEL_192;
        }

        sub_23F2DC3BC((result + 16), *(a2 + 1));
        v11 = (**v8)[1];
LABEL_192:

        return v11();
      }

      if (v9 != 8)
      {
        if (v9 != 9)
        {
          return result;
        }

        v12 = *result;
        v11 = (**v8)[1];
        goto LABEL_192;
      }

      v33 = *result;
      v34 = (**v8)[1];
      if (a3)
      {
        v34();
        v35 = (a5 + a4);
        v36 = v8 + 76;
        v37 = *(v8 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v61 = v8[77];
          if (v61 >= v35)
          {
            v38 = *v8;
            goto LABEL_85;
          }
        }

        else
        {
          if (v35 <= v37)
          {
            v38 = *v8;
            v39 = v8 + 76;
            goto LABEL_86;
          }

          v61 = *(v8 + 631);
        }

        std::string::resize((v8 + 76), 2 * v61, 32);
        v38 = *v8;
        v39 = v8 + 76;
        if ((*(v8 + 631) & 0x80000000) == 0)
        {
LABEL_86:
          ((*v38)[1])(v38, v39, v35);
          ((**v8)[1])(*v8, "bytes: [", 10);
          v62 = **(a2 + 1);
          v63 = *(*(a2 + 1) + 8);
          v64 = **(a2 + 1);
          if (v64 == v63)
          {
            goto LABEL_156;
          }

          if (v64 != v63 - 1)
          {
            while (1)
            {
              v65 = *v64;
              if (*v64)
              {
                break;
              }

              (***v8)(*v8, 48);
LABEL_90:
              ((**v8)[1])(*v8, ", ", 2);
              ++v64;
              v63 = *(*(a2 + 1) + 8);
              if (v64 == v63 - 1)
              {
                goto LABEL_99;
              }
            }

            if (v65 >= 0xA)
            {
              if (v65 < 0x64)
              {
                v67 = &a00010203040506_0[2 * v65];
                *(v8 + 17) = v67[1];
                v68 = *v67;
                v66 = 2;
LABEL_98:
                *(v8 + 16) = v68;
                ((**v8)[1])(*v8, v8 + 2, v66);
                goto LABEL_90;
              }

              *(v8 + 17) = *&a00010203040506_0[2 * (*v64 % 0x64u)];
              LOBYTE(v65) = v65 / 0x64u;
              v66 = 3;
            }

            else
            {
              v66 = 1;
            }

            v68 = v65 | 0x30;
            goto LABEL_98;
          }

LABEL_99:
          v69 = *(v63 - 1);
          if (!v69)
          {
            (***v8)(*v8, 48);
            goto LABEL_156;
          }

          if (v69 >= 0xA)
          {
            if (v69 < 0x64)
            {
              v84 = &a00010203040506_0[2 * v69];
              *(v8 + 17) = v84[1];
              v85 = *v84;
              v70 = 2;
LABEL_155:
              *(v8 + 16) = v85;
              ((**v8)[1])(*v8, v8 + 2, v70);
LABEL_156:
              ((**v8)[1])(*v8, "],\n", 3);
              v93 = v8 + 76;
              if (*(v8 + 631) < 0)
              {
                v93 = *v36;
              }

              ((**v8)[1])(*v8, v93, v35);
              ((**v8)[1])(*v8, "subtype: ", 11);
              v94 = *(a2 + 1);
              if (*(v94 + 25) != 1)
              {
                v96 = (**v8)[1];
LABEL_176:
                v96();
                goto LABEL_177;
              }

              v95 = *(v94 + 24);
              if (!v95)
              {
                (***v8)(*v8, 48);
LABEL_177:
                (***v8)(*v8, 10);
                if (*(v8 + 631) < 0)
                {
                  v99 = *v36;
                }

                v77 = (**v8)[1];
                goto LABEL_180;
              }

              if (v95 >= 0xA)
              {
                if (v95 < 0x64)
                {
                  v97 = &a00010203040506_0[2 * v95];
                  *(v8 + 17) = v97[1];
                  v98 = *v97;
LABEL_175:
                  *(v8 + 16) = v98;
                  v96 = (**v8)[1];
                  goto LABEL_176;
                }

                *(v8 + 17) = *&a00010203040506_0[2 * (v95 % 0x64u)];
                LOBYTE(v95) = v95 / 0x64u;
              }

              v98 = v95 | 0x30;
              goto LABEL_175;
            }

            *(v8 + 17) = *&a00010203040506_0[2 * (v69 % 0x64u)];
            v70 = 3;
            LOBYTE(v69) = v69 / 0x64u;
          }

          else
          {
            v70 = 1;
          }

          v85 = v69 | 0x30;
          goto LABEL_155;
        }

LABEL_85:
        v39 = *v36;
        goto LABEL_86;
      }

      v34();
      v42 = **(a2 + 1);
      v43 = *(*(a2 + 1) + 8);
      v44 = **(a2 + 1);
      if (v44 == v43)
      {
LABEL_145:
        ((**v8)[1])(*v8, "],subtype:", 12);
        v88 = *(a2 + 1);
        if (*(v88 + 25) != 1)
        {
          v11 = (**v8)[1];
          goto LABEL_192;
        }

        v89 = *(v88 + 24);
        if (!v89)
        {
          (***v8)(*v8, 48);
LABEL_169:
          v41 = ***v8;
          goto LABEL_170;
        }

        if (v89 >= 0xA)
        {
          if (v89 < 0x64)
          {
            v91 = &a00010203040506_0[2 * v89];
            *(v8 + 17) = v91[1];
            v92 = *v91;
            v90 = 2;
LABEL_168:
            *(v8 + 16) = v92;
            ((**v8)[1])(*v8, v8 + 2, v90);
            goto LABEL_169;
          }

          *(v8 + 17) = *&a00010203040506_0[2 * (v89 % 0x64u)];
          v90 = 3;
          LOBYTE(v89) = v89 / 0x64u;
        }

        else
        {
          v90 = 1;
        }

        v92 = v89 | 0x30;
        goto LABEL_168;
      }

      if (v44 != v43 - 1)
      {
        while (1)
        {
          v45 = *v44;
          if (*v44)
          {
            break;
          }

          (***v8)(*v8, 48);
LABEL_51:
          (***v8)(*v8, 44);
          ++v44;
          v43 = *(*(a2 + 1) + 8);
          if (v44 == v43 - 1)
          {
            goto LABEL_72;
          }
        }

        if (v45 >= 0xA)
        {
          if (v45 < 0x64)
          {
            v47 = &a00010203040506_0[2 * v45];
            *(v8 + 17) = v47[1];
            v48 = *v47;
            v46 = 2;
LABEL_59:
            *(v8 + 16) = v48;
            ((**v8)[1])(*v8, v8 + 2, v46);
            goto LABEL_51;
          }

          *(v8 + 17) = *&a00010203040506_0[2 * (*v44 % 0x64u)];
          LOBYTE(v45) = v45 / 0x64u;
          v46 = 3;
        }

        else
        {
          v46 = 1;
        }

        v48 = v45 | 0x30;
        goto LABEL_59;
      }

LABEL_72:
      v56 = *(v43 - 1);
      if (!v56)
      {
        (***v8)(*v8, 48);
        goto LABEL_145;
      }

      if (v56 >= 0xA)
      {
        if (v56 < 0x64)
        {
          v82 = &a00010203040506_0[2 * v56];
          *(v8 + 17) = v82[1];
          v83 = *v82;
          v57 = 2;
LABEL_144:
          *(v8 + 16) = v83;
          ((**v8)[1])(*v8, v8 + 2, v57);
          goto LABEL_145;
        }

        *(v8 + 17) = *&a00010203040506_0[2 * (v56 % 0x64u)];
        v57 = 3;
        LOBYTE(v56) = v56 / 0x64u;
      }

      else
      {
        v57 = 1;
      }

      v83 = v56 | 0x30;
      goto LABEL_144;
    }

    if (v9 == 5)
    {
      v19 = *(a2 + 1);
      if (v19)
      {
        v23 = (result + 16);
        if ((v19 & 0x8000000000000000) != 0)
        {
          *v23 = 45;
          v19 = -v19;
          if (v19 >= 0xA)
          {
            v58 = 4;
            v78 = v19;
            while (1)
            {
              if (v78 <= 0x63)
              {
                v58 -= 2;
                goto LABEL_184;
              }

              if (v78 <= 0x3E7)
              {
                break;
              }

              if (v78 >> 4 < 0x271)
              {
                goto LABEL_184;
              }

              v58 += 4;
              v22 = v78 >= 0x186A0;
              v78 /= 0x2710uLL;
              if (!v22)
              {
                v58 -= 3;
                goto LABEL_184;
              }
            }

            --v58;
          }

          else
          {
            v58 = 1;
          }

LABEL_184:
          v59 = v58 + 1;
        }

        else
        {
          if (v19 < 0xA)
          {
            goto LABEL_31;
          }

          v59 = 4;
          v60 = *(a2 + 1);
          while (1)
          {
            if (v60 <= 0x63)
            {
              v59 -= 2;
              goto LABEL_185;
            }

            if (v60 <= 0x3E7)
            {
              break;
            }

            if (v60 >> 4 < 0x271)
            {
              goto LABEL_185;
            }

            v59 += 4;
            v22 = v60 >= 0x186A0;
            v60 /= 0x2710uLL;
            if (!v22)
            {
              v59 -= 3;
              goto LABEL_185;
            }
          }

          --v59;
        }

LABEL_185:
        v24 = &v23[v59];
        if (v19 < 0x64)
        {
          v86 = v19;
        }

        else
        {
          do
          {
            v86 = v19 / 0x64;
            *(v24 - 2) = *&a00010203040506_0[2 * (v19 % 0x64)];
            v24 -= 2;
            v100 = v19 >> 4;
            v19 /= 0x64uLL;
          }

          while (v100 > 0x270);
        }

        if (v86 < 0xA)
        {
LABEL_138:
          LOBYTE(v19) = v86;
          goto LABEL_139;
        }

LABEL_190:
        *(v24 - 2) = *&a00010203040506_0[2 * v86];
        goto LABEL_191;
      }
    }

    else
    {
      if (v9 != 6)
      {
        return result;
      }

      v19 = *(a2 + 1);
      if (v19)
      {
        if (v19 >= 0xA)
        {
          v20 = 4;
          v21 = *(a2 + 1);
          while (1)
          {
            if (v21 <= 0x63)
            {
              v20 -= 2;
              goto LABEL_133;
            }

            if (v21 <= 0x3E7)
            {
              break;
            }

            if (v21 >> 4 < 0x271)
            {
              goto LABEL_133;
            }

            v20 += 4;
            v22 = v21 >= 0x186A0;
            v21 /= 0x2710uLL;
            if (!v22)
            {
              v20 -= 3;
              goto LABEL_133;
            }
          }

          --v20;
LABEL_133:
          v24 = result + 16 + v20;
          if (v19 < 0x64)
          {
            v86 = *(a2 + 1);
          }

          else
          {
            do
            {
              v86 = v19 / 0x64;
              *(v24 - 2) = *&a00010203040506_0[2 * (v19 % 0x64)];
              v24 -= 2;
              v87 = v19 >> 4;
              v19 /= 0x64uLL;
            }

            while (v87 > 0x270);
          }

          if (v86 < 0xA)
          {
            goto LABEL_138;
          }

          goto LABEL_190;
        }

LABEL_31:
        v24 = result + 17;
LABEL_139:
        *(v24 - 1) = v19 | 0x30;
LABEL_191:
        v101 = *result;
        v11 = (**v8)[1];
        goto LABEL_192;
      }
    }

    v40 = *result;
    v41 = ***v8;
LABEL_170:

    return v41();
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v13 = *result;
      v14 = **v8;
      if (**(a2 + 1) == *(*(a2 + 1) + 8))
      {
        v49 = v14[1];
        goto LABEL_62;
      }

      if (!a3)
      {
        (*v14)();
        v50 = *(a2 + 1);
        v51 = *v50;
        if (*(v50 + 8) - *v50 != 40)
        {
          v52 = 0;
          do
          {
            (***v8)(*v8, 34);
            sub_23F2DEA74(v8, v51);
            ((**v8)[1])(*v8, ":", 2);
            sub_23F2DD364(v8, v51 + 3, 0, a4, a5);
            (***v8)();
            ++v52;
            v51 += 5;
          }

          while (v52 < -1 - 0x3333333333333333 * ((*(*(a2 + 1) + 8) - **(a2 + 1)) >> 3));
        }

        (***v8)(*v8, 34);
        sub_23F2DEA74(v8, v51);
        ((**v8)[1])(*v8, ":", 2);
        sub_23F2DD364(v8, v51 + 3, 0, a4, a5);
        goto LABEL_181;
      }

      v14[1]();
      v15 = (a5 + a4);
      v16 = v8 + 76;
      v17 = *(v8 + 631);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = v8[77];
        if (v18 < v15)
        {
LABEL_195:
          std::string::resize((v8 + 76), 2 * v18, 32);
          v102 = *(a2 + 1);
          v72 = *v102;
          if (*(v102 + 8) - *v102 == 40)
          {
            goto LABEL_108;
          }

          goto LABEL_104;
        }
      }

      else if (v15 > v17)
      {
        v18 = *(v8 + 631);
        goto LABEL_195;
      }

      v71 = *(a2 + 1);
      v72 = *v71;
      if (*(v71 + 8) - *v71 == 40)
      {
LABEL_108:
        v75 = v8 + 76;
        if (*(v8 + 631) < 0)
        {
          v75 = *v16;
        }

        ((**v8)[1])(*v8, v75, v15);
        (***v8)();
        sub_23F2DEA74(v8, v72);
        ((**v8)[1])(*v8, ": ", 3);
        sub_23F2DD364(v8, v72 + 3, 1, a4, v15);
        (***v8)();
        if (*(v8 + 631) < 0)
        {
          v76 = *v16;
        }

        v77 = (**v8)[1];
LABEL_180:
        v77();
LABEL_181:
        v11 = ***v8;
        goto LABEL_204;
      }

LABEL_104:
      v73 = 0;
      do
      {
        if (*(v8 + 631) < 0)
        {
          v74 = *v16;
        }

        (**v8)[1]();
        (***v8)();
        sub_23F2DEA74(v8, v72);
        ((**v8)[1])(*v8, ": ", 3);
        sub_23F2DD364(v8, v72 + 3, 1, a4, v15);
        ((**v8)[1])(*v8, ",\n", 2);
        ++v73;
        v72 += 5;
      }

      while (v73 < -1 - 0x3333333333333333 * ((*(*(a2 + 1) + 8) - **(a2 + 1)) >> 3));
      goto LABEL_108;
    }

    goto LABEL_38;
  }

  switch(v9)
  {
    case 2u:
      v25 = *result;
      v26 = **v8;
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        if (!a3)
        {
          (*v26)();
          v53 = *(a2 + 1);
          v55 = *v53;
          for (i = v53[1]; v55 != i - 16; i = *(*(a2 + 1) + 8))
          {
            sub_23F2DD364(v8, v55, 0, a4, a5);
            (***v8)();
            v55 += 16;
          }

          sub_23F2DD364(v8, i - 16, 0, a4, a5);
          goto LABEL_203;
        }

        v26[1]();
        v27 = (a5 + a4);
        v28 = v8 + 76;
        v29 = *(v8 + 631);
        if ((v29 & 0x80000000) != 0)
        {
          v30 = v8[77];
          if (v30 < v27)
          {
LABEL_197:
            std::string::resize((v8 + 76), 2 * v30, 32);
            v103 = *(a2 + 1);
            v80 = *v103;
            if (*v103 == v103[1] - 16)
            {
              goto LABEL_198;
            }

            goto LABEL_123;
          }
        }

        else if (v27 > v29)
        {
          v30 = *(v8 + 631);
          goto LABEL_197;
        }

        v79 = *(a2 + 1);
        v80 = *v79;
        if (*v79 == v79[1] - 16)
        {
LABEL_198:
          v104 = v8 + 76;
          if (*(v8 + 631) < 0)
          {
            v104 = *v28;
          }

          ((**v8)[1])(*v8, v104, (a5 + a4));
          sub_23F2DD364(v8, *(*(a2 + 1) + 8) - 16, 1, a4, (a5 + a4));
          (***v8)();
          if (*(v8 + 631) < 0)
          {
            v28 = *v28;
          }

          ((**v8)[1])(*v8, v28, a5);
LABEL_203:
          v11 = ***v8;
LABEL_204:

          return v11();
        }

        do
        {
LABEL_123:
          if (*(v8 + 631) < 0)
          {
            v81 = *v28;
          }

          (**v8)[1]();
          sub_23F2DD364(v8, v80, 1, a4, (a5 + a4));
          ((**v8)[1])(*v8, ",\n", 2);
          v80 += 16;
        }

        while (v80 != *(*(a2 + 1) + 8) - 16);
        goto LABEL_198;
      }

      v49 = v26[1];
LABEL_62:

      return v49();
    case 3u:
      v32 = *result;
      (***v8)();
      sub_23F2DEA74(v8, *(a2 + 1));
      v11 = ***v8;
      goto LABEL_204;
    case 4u:
      v10 = *result;
      v11 = (**v8)[1];
      a2[8];
      goto LABEL_192;
  }

  return result;
}

uint64_t sub_23F2DEA74(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a2 + 23);
  }

  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v2 >> 63;
  v13 = result + 90;
  do
  {
    v16 = *a2;
    if ((v12 & 1) == 0)
    {
      v16 = a2;
    }

    v17 = *(v16 + v7);
    if (v10)
    {
      v11 = *(v16 + v7) & 0x3F | (v11 << 6);
    }

    else
    {
      v11 = (0xFFu >> byte_23F348B20[v17]) & v17;
    }

    v10 = byte_23F348B20[16 * v10 + 256 + byte_23F348B20[v17]];
    if (v10 != 1)
    {
      if (v10)
      {
        *(v13 + v6++) = *(v16 + v7);
        ++v8;
        goto LABEL_6;
      }

      if (v11 <= 11)
      {
        switch(v11)
        {
          case 8:
            *(v13 + v6) = 25180;
            v9 = v6 + 2;
            if ((v6 - 498) <= 0xC)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          case 9:
            *(v13 + v6) = 29788;
            v9 = v6 + 2;
            if ((v6 - 498) <= 0xC)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          case 10:
            *(v13 + v6) = 28252;
            v9 = v6 + 2;
            if ((v6 - 498) <= 0xC)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
        }
      }

      else if (v11 > 33)
      {
        if (v11 == 34)
        {
          *(v13 + v6) = 8796;
          v9 = v6 + 2;
          if ((v6 - 498) <= 0xC)
          {
            goto LABEL_38;
          }

          goto LABEL_46;
        }

        if (v11 == 92)
        {
          *(v13 + v6) = 23644;
          v9 = v6 + 2;
          if ((v6 - 498) <= 0xC)
          {
            goto LABEL_38;
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (v11 == 12)
        {
          *(v13 + v6) = 26204;
          v9 = v6 + 2;
          if ((v6 - 498) <= 0xC)
          {
            goto LABEL_38;
          }

          goto LABEL_46;
        }

        if (v11 == 13)
        {
          *(v13 + v6) = 29276;
          v9 = v6 + 2;
          if ((v6 - 498) <= 0xC)
          {
            goto LABEL_38;
          }

          goto LABEL_46;
        }
      }

      if (v11 <= 0x1F)
      {
        result = snprintf((v13 + v6), 7uLL, "\\u%04x", v11);
        v9 = v6 + 6;
        if ((v6 - 494) <= 0xC)
        {
          goto LABEL_38;
        }

        goto LABEL_46;
      }

      v9 = v6 + 1;
      *(v13 + v6) = *(v16 + v7);
      if ((v6 - 499) > 0xC)
      {
LABEL_46:
        v10 = 0;
        v8 = 0;
        v6 = v9;
        goto LABEL_6;
      }

LABEL_38:
      v20 = *(**v5 + 8);
LABEL_39:
      result = v20();
      v10 = 0;
      v9 = 0;
      v8 = 0;
      v6 = 0;
      goto LABEL_6;
    }

    v18 = v5[158];
    if ((v18 - 1) < 2)
    {
      v7 -= v8 != 0;
      if (v18 != 1)
      {
        goto LABEL_46;
      }

      v6 = v9 + 3;
      v19 = v13 + v9;
      *v19 = -16401;
      *(v19 + 2) = -67;
      if ((v9 - 497) > 0xC)
      {
        v10 = 0;
        v8 = 0;
        v9 += 3;
        goto LABEL_6;
      }

      v20 = *(**v5 + 8);
      goto LABEL_39;
    }

    if (!v18)
    {
      v37 = 3;
      *__str = 0;
      snprintf(__str, 3uLL, "%.2X", v17);
      exception = __cxa_allocate_exception(0x20uLL);
      std::to_string(&v30, v7);
      sub_23F06C3EC("invalid UTF-8 byte at index ", &v30, &v31);
      sub_23F06E0E4(": 0x", &v31, &v32);
      if (v37 >= 0)
      {
        v24 = __str;
      }

      else
      {
        v24 = *__str;
      }

      if (v37 >= 0)
      {
        v25 = v37;
      }

      else
      {
        v25 = v36;
      }

      v26 = std::string::append(&v32, v24, v25);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v34 = v26->__r_.__value_.__r.__words[2];
      v33 = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      sub_23F06D6C8(316, &v33, exception);
      __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
    }

    v10 = 1;
LABEL_6:
    ++v7;
    v14 = *(a2 + 23);
    v12 = v14 >> 63;
    v15 = a2[1];
    if ((v14 & 0x80000000) == 0)
    {
      v15 = *(a2 + 23);
    }
  }

  while (v7 < v15);
  if (v10)
  {
    v22 = v5[158];
    switch(v22)
    {
      case 1:
        (*(**v5 + 8))(*v5, v13, v9);
        v21 = *(**v5 + 8);
        break;
      case 2:
        v21 = *(**v5 + 8);
        break;
      case 0:
        v37 = 3;
        *__str = 0;
        v28 = *a2;
        if ((v14 & 0x80000000) == 0)
        {
          v28 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v28 + v15 - 1));
        v29 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        sub_23F06D6C8(316, &v33, v29);
        __cxa_throw(v29, &unk_28517D070, sub_23F06D88C);
      default:
        return result;
    }

LABEL_55:

    return v21();
  }

  if (v6)
  {
    v21 = *(**v5 + 8);
    goto LABEL_55;
  }

  return result;
}

void sub_23F2DF014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v40)
  {
LABEL_7:
    if (a39 < 0)
    {
      operator delete(a34);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v39);
  goto LABEL_7;
}

uint64_t sub_23F2DF0FC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  if (v10 == 2)
  {
    v16 = **(a1 + 640);
    if (**(a2 + 1) != *(*(a2 + 1) + 8))
    {
      (*v16)();
      v17 = *(a2 + 1);
      v19 = *v17;
      for (i = v17[1]; v19 != i - 16; i = *(*(a2 + 1) + 8))
      {
        sub_23F2DF0FC(a1, v19, a3, a4, a5);
        (***(a1 + 640))();
        v19 += 16;
      }

      sub_23F2DF0FC(a1, i - 16, a3, a4, a5);
      v20 = ***(a1 + 640);
      goto LABEL_36;
    }

    v22 = *(v16 + 8);
LABEL_17:

    return v22();
  }

  if (v10 == 1)
  {
    v11 = **(a1 + 640);
    if (**(a2 + 1) != *(*(a2 + 1) + 8))
    {
      if (!a3)
      {
        (*v11)();
        v23 = *(a2 + 1);
        v24 = *v23;
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v23 + 8) - *v23) >> 3) >= 2)
        {
          v25 = 1;
          do
          {
            (***(a1 + 640))(*(a1 + 640), 34);
            sub_23F2DEA74(a1, v24);
            (*(**(a1 + 640) + 8))(*(a1 + 640), ":", 2);
            sub_23F2DF0FC(a1, v24 + 3, 0, a4, a5);
            (***(a1 + 640))();
            v24 += 5;
            ++v25;
          }

          while (v25 < 0xCCCCCCCCCCCCCCCDLL * ((*(*(a2 + 1) + 8) - **(a2 + 1)) >> 3));
        }

        (***(a1 + 640))(*(a1 + 640), 34);
        sub_23F2DEA74(a1, v24);
        (*(**(a1 + 640) + 8))(*(a1 + 640), ":", 2);
        sub_23F2DF0FC(a1, v24 + 3, 0, a4, a5);
        goto LABEL_35;
      }

      v11[1]();
      v12 = (a5 + a4);
      v13 = (a1 + 664);
      v14 = *(a1 + 687);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = *(a1 + 672);
        if (v15 < v12)
        {
          goto LABEL_39;
        }
      }

      else if (v12 > v14)
      {
        v15 = *(a1 + 687);
LABEL_39:
        std::string::resize((a1 + 664), 2 * v15, 32);
      }

      v26 = *(a2 + 1);
      v27 = *v26;
      if (0xCCCCCCCCCCCCCCCDLL * ((*(v26 + 8) - *v26) >> 3) >= 2)
      {
        v28 = 1;
        do
        {
          if (*(a1 + 687) < 0)
          {
            v29 = *v13;
          }

          (*(**(a1 + 640) + 8))(*(a1 + 640));
          (***(a1 + 640))();
          sub_23F2DEA74(a1, v27);
          (*(**(a1 + 640) + 8))(*(a1 + 640), ": ", 3);
          sub_23F2DF0FC(a1, v27 + 3, 1, a4, (a5 + a4));
          (*(**(a1 + 640) + 8))(*(a1 + 640), ",\n", 2);
          v27 += 5;
          ++v28;
        }

        while (v28 < 0xCCCCCCCCCCCCCCCDLL * ((*(*(a2 + 1) + 8) - **(a2 + 1)) >> 3));
      }

      v30 = a1 + 664;
      if (*(a1 + 687) < 0)
      {
        v30 = *v13;
      }

      (*(**(a1 + 640) + 8))(*(a1 + 640), v30, (a5 + a4));
      (***(a1 + 640))();
      sub_23F2DEA74(a1, v27);
      (*(**(a1 + 640) + 8))(*(a1 + 640), ": ", 3);
      sub_23F2DF0FC(a1, v27 + 3, 1, a4, (a5 + a4));
      (***(a1 + 640))();
      if (*(a1 + 687) < 0)
      {
        v13 = *v13;
      }

      (*(**(a1 + 640) + 8))(*(a1 + 640), v13, a5);
LABEL_35:
      v20 = ***(a1 + 640);
LABEL_36:

      return v20();
    }

    v22 = v11[1];
    goto LABEL_17;
  }

  return sub_23F2DD364(a1, a2, a3, a4, a5);
}

void sub_23F2DF860(uint64_t a1, unsigned __int8 *a2)
{
  v296 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (!v4)
  {
    v6 = 0;
    v7 = *(a1 + 184);
    v281 = a2;
    v282 = 0u;
    v283 = 0u;
    LOBYTE(v284) = 0;
    BYTE1(v284) = v7;
    memset(&__p, 0, sizeof(__p));
    while (1)
    {
      while (1)
      {
        v8 = *(a1 + 32);
        if (v8 > 5)
        {
          break;
        }

        if (v8 <= 2)
        {
          if (v8 == 1)
          {
            LOBYTE(__str.__vftable) = 1;
            sub_23F2E6904(&v281, &__str);
          }

          else
          {
            if (v8 != 2)
            {
              goto LABEL_457;
            }

            LOBYTE(__str.__vftable) = 0;
            sub_23F2E6904(&v281, &__str);
          }
        }

        else
        {
          if (v8 != 3)
          {
            if (v8 == 4)
            {
              if (v282 == v6)
              {
                operator new();
              }

              v27 = *(v6 - 1);
              if (*v27 != 2)
              {
                operator new();
              }

              v28 = *(v27 + 8);
              v30 = v28[1];
              v29 = v28[2];
              if (v30 < v29)
              {
                *(v30 + 8) = 0;
                *v30 = 3;
                operator new();
              }

              v78 = (v30 - *v28) >> 4;
              if ((v78 + 1) >> 60)
              {
LABEL_516:
                sub_23F063D28();
              }

              v79 = v29 - *v28;
              v80 = v79 >> 3;
              if (v79 >> 3 <= (v78 + 1))
              {
                v80 = v78 + 1;
              }

              if (v79 >= 0x7FFFFFFFFFFFFFF0)
              {
                v81 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v81 = v80;
              }

              v295 = v28;
              if (!v81)
              {
                v110 = 16 * v78;
                __str.__vftable = 0;
                __str.__imp_.__imp_ = v110;
                v294 = (16 * v78);
                *(v110 + 8) = 0;
                *v110 = 3;
                operator new();
              }

              if (!(v81 >> 60))
              {
                operator new();
              }

LABEL_521:
              sub_23EF34E18();
            }

            v9 = *(a1 + 160);
            if (v282 == v6)
            {
              v43 = v281;
              v44 = *v281;
              v45 = 6;
              goto LABEL_63;
            }

            v10 = *(v6 - 1);
            if (*v10 != 2)
            {
              v50 = *(&v283 + 1);
              v44 = **(&v283 + 1);
              v51 = 6;
              goto LABEL_70;
            }

            v11 = *(v10 + 8);
            v13 = *(v11 + 8);
            v12 = *(v11 + 16);
            if (v13 < v12)
            {
              *v13 = 6;
              *(v13 + 8) = v9;
              *(v11 + 8) = v13 + 16;
              goto LABEL_141;
            }

            v64 = *v11;
            v74 = (v13 - *v11) >> 4;
            v75 = v74 + 1;
            if ((v74 + 1) >> 60)
            {
              goto LABEL_516;
            }

            v76 = v12 - v64;
            if (v76 >> 3 > v75)
            {
              v75 = v76 >> 3;
            }

            if (v76 >= 0x7FFFFFFFFFFFFFF0)
            {
              v77 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v77 = v75;
            }

            if (v77)
            {
              if (!(v77 >> 60))
              {
                operator new();
              }

              goto LABEL_521;
            }

            v105 = (v13 - *v11) >> 4;
            v94 = 16 * v74;
            *v94 = 6;
            *(v94 + 8) = v9;
            v95 = v94 - 16 * v105;
            if (v64 != v13)
            {
              v106 = v64;
              v107 = v95;
              do
              {
                *v107 = *v106;
                *(v107 + 8) = v106[1];
                *v106 = 0;
                v106[1] = 0;
                v106 += 2;
                v107 += 16;
              }

              while (v106 != v13);
              v108 = v64;
              do
              {
                v109 = *v108;
                v108 += 2;
                sub_23F0655DC(v64 + 1, v109);
                v64 = v108;
              }

              while (v108 != v13);
              goto LABEL_188;
            }

            goto LABEL_189;
          }

          if (v282 == v6)
          {
            v46 = v281;
            v44 = *v281;
            *v281 = 0;
            LOBYTE(__str.__vftable) = v44;
            v47 = *(v46 + 1);
            *(v46 + 1) = 0;
            goto LABEL_66;
          }

          v22 = *(v6 - 1);
          if (*v22 != 2)
          {
            v52 = *(&v283 + 1);
            v44 = **(&v283 + 1);
            **(&v283 + 1) = 0;
            v277.__r_.__value_.__s.__data_[0] = v44;
            v53 = *(v52 + 8);
            *(v52 + 8) = 0;
            goto LABEL_139;
          }

          v23 = *(v22 + 8);
          v25 = *(v23 + 8);
          v24 = *(v23 + 16);
          if (v25 >= v24)
          {
            v69 = *v23;
            v70 = (v25 - *v23) >> 4;
            v71 = v70 + 1;
            if ((v70 + 1) >> 60)
            {
              goto LABEL_516;
            }

            v72 = v24 - v69;
            if (v72 >> 3 > v71)
            {
              v71 = v72 >> 3;
            }

            if (v72 >= 0x7FFFFFFFFFFFFFF0)
            {
              v73 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v73 = v71;
            }

            if (v73)
            {
              if (!(v73 >> 60))
              {
                operator new();
              }

              goto LABEL_521;
            }

            v100 = 16 * v70;
            *v100 = 0;
            *(v100 + 8) = 0;
            if (v69 != v25)
            {
              v101 = v69;
              v102 = 0;
              do
              {
                *v102 = *v101;
                *(v102 + 8) = v101[1];
                *v101 = 0;
                v101[1] = 0;
                v101 += 2;
                v102 += 16;
              }

              while (v101 != v25);
              v103 = v69;
              do
              {
                v104 = *v103;
                v103 += 2;
                sub_23F0655DC(v69 + 1, v104);
                v69 = v103;
              }

              while (v103 != v25);
              v69 = *v23;
            }

            *v23 = 0;
            *(v23 + 8) = v100 + 16;
            *(v23 + 16) = 0;
            if (v69)
            {
              operator delete(v69);
            }

            *(v23 + 8) = v100 + 16;
          }

          else
          {
            *v25 = 0;
            *(v25 + 8) = 0;
            *(v23 + 8) = v25 + 16;
          }
        }

LABEL_141:
        size = __p.__r_.__value_.__l.__size_;
        if (!__p.__r_.__value_.__l.__size_)
        {
          goto LABEL_197;
        }

        v6 = *(&v282 + 1);
        while (2)
        {
          if ((*(__p.__r_.__value_.__r.__words[0] + (((size - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (size - 1)))
          {
            v87 = sub_23F2E2F80(a1 + 40);
            *(a1 + 32) = v87;
            if (v87 != 13)
            {
              if (v87 != 10)
              {
                *(&v282 + 1) = v6;
                sub_23F2E4B94(&v277, *(a1 + 96), *(a1 + 104));
                v276 = *(a1 + 72);
                sub_23EF3F240(&v274, "array");
                sub_23F2E4C8C(&v275, a1, 10, &v274.__r_.__value_.__l.__data_);
                sub_23F076170(101, &v276, &v275, &__str);
                sub_23F2E5944(&v281, &__str);
                goto LABEL_491;
              }

              goto LABEL_149;
            }

            *(&v282 + 1) = v6;
            *(a1 + 32) = sub_23F2E2F80(a1 + 40);
          }

          else
          {
            v88 = sub_23F2E2F80(a1 + 40);
            *(a1 + 32) = v88;
            if (v88 != 13)
            {
              if (v88 != 11)
              {
                *(&v282 + 1) = v6;
                sub_23F2E4B94(&v277, *(a1 + 96), *(a1 + 104));
                v276 = *(a1 + 72);
                sub_23EF3F240(&v274, "object");
                sub_23F2E4C8C(&v275, a1, 11, &v274.__r_.__value_.__l.__data_);
                sub_23F076170(101, &v276, &v275, &__str);
                sub_23F2E5944(&v281, &__str);
                goto LABEL_491;
              }

LABEL_149:
              --v6;
              size = --__p.__r_.__value_.__l.__size_;
              if (!__p.__r_.__value_.__l.__size_)
              {
                *(&v282 + 1) = v6;
                goto LABEL_197;
              }

              continue;
            }

            *(&v282 + 1) = v6;
            v89 = sub_23F2E2F80(a1 + 40);
            *(a1 + 32) = v89;
            if (v89 != 4)
            {
LABEL_489:
              sub_23F2E4B94(&v277, *(a1 + 96), *(a1 + 104));
              v276 = *(a1 + 72);
              sub_23EF3F240(&v274, "object key");
              sub_23F2E4C8C(&v275, a1, 4, &v274.__r_.__value_.__l.__data_);
              sub_23F076170(101, &v276, &v275, &__str);
              sub_23F2E5944(&v281, &__str);
              goto LABEL_491;
            }

            v90 = *(*(v6 - 1) + 8);
            LOBYTE(__str.__vftable) = 0;
            __str.__imp_.__imp_ = 0;
            v91 = sub_23F06EDE4(v90, a1 + 120, &__str) + 24;
            sub_23F0655DC(&__str.__imp_, LOBYTE(__str.__vftable));
            *(&v283 + 1) = v91;
            v92 = sub_23F2E2F80(a1 + 40);
            *(a1 + 32) = v92;
            if (v92 != 12)
            {
              goto LABEL_490;
            }

            *(a1 + 32) = sub_23F2E2F80(a1 + 40);
          }

          break;
        }
      }

      if (v8 <= 7)
      {
        if (v8 == 6)
        {
          v9 = *(a1 + 152);
          if (v282 == v6)
          {
            v43 = v281;
            v44 = *v281;
            v45 = 5;
LABEL_63:
            *v43 = v45;
            LOBYTE(__str.__vftable) = v44;
            v47 = *(v43 + 1);
            *(v43 + 1) = v9;
            goto LABEL_66;
          }

          v19 = *(v6 - 1);
          if (*v19 != 2)
          {
            v50 = *(&v283 + 1);
            v44 = **(&v283 + 1);
            v51 = 5;
LABEL_70:
            *v50 = v51;
            v277.__r_.__value_.__s.__data_[0] = v44;
            v53 = *(v50 + 8);
            *(v50 + 8) = v9;
LABEL_139:
            v277.__r_.__value_.__l.__size_ = v53;
            p_size = &v277.__r_.__value_.__l.__size_;
            goto LABEL_140;
          }

          v11 = *(v19 + 8);
          v21 = *(v11 + 8);
          v20 = *(v11 + 16);
          if (v21 < v20)
          {
            *v21 = 5;
            *(v21 + 8) = v9;
            *(v11 + 8) = v21 + 16;
            goto LABEL_141;
          }

          v64 = *v11;
          v65 = (v21 - *v11) >> 4;
          v66 = v65 + 1;
          if ((v65 + 1) >> 60)
          {
            goto LABEL_516;
          }

          v67 = v20 - v64;
          if (v67 >> 3 > v66)
          {
            v66 = v67 >> 3;
          }

          if (v67 >= 0x7FFFFFFFFFFFFFF0)
          {
            v68 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v66;
          }

          if (v68)
          {
            if (!(v68 >> 60))
            {
              operator new();
            }

            goto LABEL_521;
          }

          v93 = (v21 - *v11) >> 4;
          v94 = 16 * v65;
          *v94 = 5;
          *(v94 + 8) = v9;
          v95 = v94 - 16 * v93;
          if (v64 != v21)
          {
            v96 = v64;
            v97 = v95;
            do
            {
              *v97 = *v96;
              *(v97 + 8) = v96[1];
              *v96 = 0;
              v96[1] = 0;
              v96 += 2;
              v97 += 16;
            }

            while (v96 != v21);
            v98 = v64;
            do
            {
              v99 = *v98;
              v98 += 2;
              sub_23F0655DC(v64 + 1, v99);
              v64 = v98;
            }

            while (v98 != v21);
LABEL_188:
            v64 = *v11;
          }
        }

        else
        {
          v15 = *(a1 + 168);
          if ((v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            sub_23F2E4B94(&v277, *(a1 + 96), *(a1 + 104));
            sub_23F2E4B94(&v274, *(a1 + 96), *(a1 + 104));
            sub_23F06C3EC("number overflow parsing '", &v274, &v275);
            sub_23F06E0E4("'", &v275, &v276);
            sub_23F078C28(406, &v276, &__str);
            sub_23F2E6628(&v281, &__str);
            sub_23F078DC8(&__str);
            if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v276.__r_.__value_.__l.__data_);
            }

            goto LABEL_492;
          }

          if (v282 == v6)
          {
            v48 = v281;
            v44 = *v281;
            *v281 = 7;
            LOBYTE(__str.__vftable) = v44;
            v47 = *(v48 + 1);
            *(v48 + 1) = v15;
LABEL_66:
            __str.__imp_.__imp_ = v47;
            p_size = &__str.__imp_;
LABEL_140:
            sub_23F0655DC(p_size, v44);
            goto LABEL_141;
          }

          v16 = *(v6 - 1);
          if (*v16 != 2)
          {
            v54 = *(&v283 + 1);
            v44 = **(&v283 + 1);
            **(&v283 + 1) = 7;
            v277.__r_.__value_.__s.__data_[0] = v44;
            v53 = *(v54 + 8);
            *(v54 + 8) = v15;
            goto LABEL_139;
          }

          v11 = *(v16 + 8);
          v18 = *(v11 + 8);
          v17 = *(v11 + 16);
          if (v18 < v17)
          {
            *v18 = 7;
            *(v18 + 8) = v15;
            *(v11 + 8) = v18 + 16;
            goto LABEL_141;
          }

          v64 = *v11;
          v82 = (v18 - *v11) >> 4;
          v83 = v82 + 1;
          if ((v82 + 1) >> 60)
          {
            sub_23F063D28();
          }

          v84 = v17 - v64;
          if (v84 >> 3 > v83)
          {
            v83 = v84 >> 3;
          }

          if (v84 >= 0x7FFFFFFFFFFFFFF0)
          {
            v85 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v85 = v83;
          }

          if (v85)
          {
            if (!(v85 >> 60))
            {
              operator new();
            }

            sub_23EF34E18();
          }

          v111 = (v18 - *v11) >> 4;
          v94 = 16 * v82;
          *v94 = 7;
          *(v94 + 8) = v15;
          v95 = v94 - 16 * v111;
          if (v64 != v18)
          {
            v112 = v64;
            v113 = v95;
            do
            {
              *v113 = *v112;
              *(v113 + 8) = v112[1];
              *v112 = 0;
              v112[1] = 0;
              v112 += 2;
              v113 += 16;
            }

            while (v112 != v18);
            v114 = v64;
            do
            {
              v115 = *v114;
              v114 += 2;
              sub_23F0655DC(v64 + 1, v115);
              v64 = v114;
            }

            while (v114 != v18);
            goto LABEL_188;
          }
        }

LABEL_189:
        v116 = v94 + 16;
        *v11 = v95;
        *(v11 + 8) = v116;
        *(v11 + 16) = 0;
        if (v64)
        {
          operator delete(v64);
        }

        *(v11 + 8) = v116;
        goto LABEL_141;
      }

      if (v8 == 8)
      {
        LOBYTE(__str.__vftable) = 2;
        v26 = sub_23F2E6680(&v281, &__str);
        if (v6 >= v283)
        {
          v37 = v282;
          v38 = v6 - v282;
          v39 = (v6 - v282) >> 3;
          v40 = v39 + 1;
          if ((v39 + 1) >> 61)
          {
LABEL_513:
            sub_23F2E6550();
          }

          v41 = v283 - v282;
          if ((v283 - v282) >> 2 > v40)
          {
            v40 = v41 >> 2;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF8)
          {
            v42 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            if (!(v42 >> 61))
            {
              operator new();
            }

LABEL_515:
            sub_23EF34E18();
          }

          *(8 * v39) = v26;
          v6 = (8 * v39 + 8);
          memcpy(0, v37, v38);
          *&v282 = 0;
          *&v283 = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v6++ = v26;
        }

        *(&v282 + 1) = v6;
        v61 = sub_23F2E2F80(a1 + 40);
        *(a1 + 32) = v61;
        if (v61 == 10)
        {
          goto LABEL_87;
        }

        v62 = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[2] << 6)
        {
          if ((__p.__r_.__value_.__l.__size_ + 1) < 0)
          {
            sub_23F06C6E8();
          }

          if (__p.__r_.__value_.__l.__size_ > 0x3FFFFFFFFFFFFFFELL)
          {
            v63 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (__p.__r_.__value_.__r.__words[2] << 7 <= (__p.__r_.__value_.__l.__size_ & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v63 = (__p.__r_.__value_.__l.__size_ & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v63 = __p.__r_.__value_.__r.__words[2] << 7;
          }

          sub_23F078018(&__p, v63);
          v62 = __p.__r_.__value_.__l.__size_;
        }

        __p.__r_.__value_.__l.__size_ = v62 + 1;
        *(__p.__r_.__value_.__r.__words[0] + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
      }

      else
      {
        if (v8 != 9)
        {
          if (v8 == 14)
          {
            v239 = *(a1 + 96);
            v240 = *(a1 + 104);
            memset(&v277, 0, sizeof(v277));
            for (; v239 != v240; ++v239)
            {
              while (1)
              {
                while (1)
                {
                  v242 = *v239;
                  if (v242 > 0x1F)
                  {
                    break;
                  }

                  LOBYTE(__str.__imp_.__imp_) = 0;
                  __str.__vftable = 0;
                  snprintf(&__str, 9uLL, "<U+%.4X>", v242);
                  v241 = strlen(&__str);
                  std::string::append(&v277, &__str, v241);
                  if (++v239 == v240)
                  {
                    goto LABEL_471;
                  }
                }

                v243 = HIBYTE(v277.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                {
                  break;
                }

                if (HIBYTE(v277.__r_.__value_.__r.__words[2]) == 22)
                {
                  goto LABEL_452;
                }

                *(&v277.__r_.__value_.__s + 23) = (*(&v277.__r_.__value_.__s + 23) + 1) & 0x7F;
                v245 = &v277 + v243;
                *v245 = v242;
                v245[1] = 0;
                if (++v239 == v240)
                {
                  goto LABEL_471;
                }
              }

              v244 = (v277.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v277.__r_.__value_.__l.__size_ == v244)
              {
                if ((v277.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                {
                  sub_23EF2F8F4();
                }

LABEL_452:
                operator new();
              }

              v246 = *&v277.__r_.__value_.__l.__data_;
              ++v277.__r_.__value_.__l.__size_;
              v247 = (v246 + *(&v246 + 1));
              *v247 = v242;
              v247[1] = 0;
            }

LABEL_471:
            v276 = *(a1 + 72);
            *(&v274.__r_.__value_.__s + 23) = 5;
            strcpy(&v274, "value");
            sub_23F2E4C8C(&v275, a1, 0, &v274.__r_.__value_.__l.__data_);
            sub_23F076170(101, &v276, &v275, &__str);
            LOBYTE(v284) = 1;
            if (BYTE1(v284) == 1)
            {
              exception = __cxa_allocate_exception(0x28uLL);
              v258 = sub_23F07A500(exception, &__str);
              __cxa_throw(v258, &unk_28517D130, sub_23F0771F4);
            }
          }

          else
          {
LABEL_457:
            v248 = *(a1 + 96);
            v249 = *(a1 + 104);
            memset(&v277, 0, sizeof(v277));
            for (; v248 != v249; ++v248)
            {
              while (1)
              {
                while (1)
                {
                  v251 = *v248;
                  if (v251 > 0x1F)
                  {
                    break;
                  }

                  LOBYTE(__str.__imp_.__imp_) = 0;
                  __str.__vftable = 0;
                  snprintf(&__str, 9uLL, "<U+%.4X>", v251);
                  v250 = strlen(&__str);
                  std::string::append(&v277, &__str, v250);
                  if (++v248 == v249)
                  {
                    goto LABEL_473;
                  }
                }

                v252 = HIBYTE(v277.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                {
                  break;
                }

                if (HIBYTE(v277.__r_.__value_.__r.__words[2]) == 22)
                {
                  goto LABEL_466;
                }

                *(&v277.__r_.__value_.__s + 23) = (*(&v277.__r_.__value_.__s + 23) + 1) & 0x7F;
                v254 = &v277 + v252;
                *v254 = v251;
                v254[1] = 0;
                if (++v248 == v249)
                {
                  goto LABEL_473;
                }
              }

              v253 = (v277.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v277.__r_.__value_.__l.__size_ == v253)
              {
                if ((v277.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                {
                  sub_23EF2F8F4();
                }

LABEL_466:
                operator new();
              }

              v255 = *&v277.__r_.__value_.__l.__data_;
              ++v277.__r_.__value_.__l.__size_;
              v256 = (v255 + *(&v255 + 1));
              *v256 = v251;
              v256[1] = 0;
            }

LABEL_473:
            v276 = *(a1 + 72);
            *(&v274.__r_.__value_.__s + 23) = 5;
            strcpy(&v274, "value");
            sub_23F2E4C8C(&v275, a1, 16, &v274.__r_.__value_.__l.__data_);
            sub_23F076170(101, &v276, &v275, &__str);
            LOBYTE(v284) = 1;
            if (BYTE1(v284) == 1)
            {
              v266 = __cxa_allocate_exception(0x28uLL);
              v267 = sub_23F07A500(v266, &__str);
              __cxa_throw(v267, &unk_28517D130, sub_23F0771F4);
            }
          }

          __str.__vftable = &unk_28517D058;
          std::runtime_error::~runtime_error(&v294);
          std::exception::~exception(&__str);
          if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
          {
            v259 = v275.__r_.__value_.__r.__words[0];
            goto LABEL_476;
          }

LABEL_477:
          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }

LABEL_197:
          if (__p.__r_.__value_.__r.__words[0])
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v118 = sub_23F2E2F80(a1 + 40);
          *(a1 + 32) = v118;
          if (v118 == 15)
          {
            v119 = a2;
            if ((v284 & 1) == 0)
            {
              v120 = v282;
              if (!v282)
              {
                goto LABEL_441;
              }

              goto LABEL_220;
            }
          }

          else
          {
            v121 = *(a1 + 96);
            v122 = *(a1 + 104);
            memset(&__p, 0, sizeof(__p));
            for (; v121 != v122; ++v121)
            {
              while (1)
              {
                while (1)
                {
                  v124 = *v121;
                  if (v124 > 0x1F)
                  {
                    break;
                  }

                  LOBYTE(__str.__imp_.__imp_) = 0;
                  __str.__vftable = 0;
                  snprintf(&__str, 9uLL, "<U+%.4X>", v124);
                  v123 = strlen(&__str);
                  std::string::append(&__p, &__str, v123);
                  if (++v121 == v122)
                  {
                    goto LABEL_216;
                  }
                }

                v125 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  break;
                }

                if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
                {
                  goto LABEL_212;
                }

                *(&__p.__r_.__value_.__s + 23) = (*(&__p.__r_.__value_.__s + 23) + 1) & 0x7F;
                v127 = &__p + v125;
                *v127 = v124;
                v127[1] = 0;
                if (++v121 == v122)
                {
                  goto LABEL_216;
                }
              }

              v126 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (__p.__r_.__value_.__l.__size_ == v126)
              {
                if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                {
                  sub_23EF2F8F4();
                }

LABEL_212:
                operator new();
              }

              v128 = __p.__r_.__value_.__l.__size_++;
              v129 = (__p.__r_.__value_.__r.__words[0] + v128);
              *v129 = v124;
              v129[1] = 0;
            }

LABEL_216:
            v277 = *(a1 + 72);
            *(&v275.__r_.__value_.__s + 23) = 5;
            strcpy(&v275, "value");
            sub_23F2E4C8C(&v276, a1, 15, &v275.__r_.__value_.__l.__data_);
            sub_23F076170(101, &v277, &v276, &__str);
            v119 = a2;
            if (BYTE1(v284) == 1)
            {
              v262 = __cxa_allocate_exception(0x28uLL);
              v263 = sub_23F07A500(v262, &__str);
              __cxa_throw(v263, &unk_28517D130, sub_23F0771F4);
            }

            __str.__vftable = &unk_28517D058;
            std::runtime_error::~runtime_error(&v294);
            std::exception::~exception(&__str);
            if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v276.__r_.__value_.__l.__data_);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_219;
              }
            }

            else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_219;
            }

            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_219:
          v130 = *v119;
          *v119 = 9;
          v131 = *(v119 + 1);
          *(v119 + 1) = 0;
          v269 = v131;
          sub_23F0655DC(&v269, v130);
          v120 = v282;
          if (!v282)
          {
            goto LABEL_441;
          }

LABEL_220:
          operator delete(v120);
          goto LABEL_441;
        }

        LOBYTE(__str.__vftable) = 1;
        v14 = sub_23F2E6680(&v281, &__str);
        if (v6 >= v283)
        {
          v31 = v282;
          v32 = v6 - v282;
          v33 = (v6 - v282) >> 3;
          v34 = v33 + 1;
          if ((v33 + 1) >> 61)
          {
            goto LABEL_513;
          }

          v35 = v283 - v282;
          if ((v283 - v282) >> 2 > v34)
          {
            v34 = v35 >> 2;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            if (!(v36 >> 61))
            {
              operator new();
            }

            goto LABEL_515;
          }

          *(8 * v33) = v14;
          v6 = (8 * v33 + 8);
          memcpy(0, v31, v32);
          *&v282 = 0;
          *&v283 = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v6++ = v14;
        }

        *(&v282 + 1) = v6;
        v55 = sub_23F2E2F80(a1 + 40);
        *(a1 + 32) = v55;
        if (v55 == 11)
        {
LABEL_87:
          *(&v282 + 1) = v6 - 1;
          goto LABEL_141;
        }

        if (v55 != 4)
        {
          goto LABEL_489;
        }

        v56 = *(*(v6 - 1) + 8);
        LOBYTE(__str.__vftable) = 0;
        __str.__imp_.__imp_ = 0;
        v57 = sub_23F06EDE4(v56, a1 + 120, &__str) + 24;
        sub_23F0655DC(&__str.__imp_, LOBYTE(__str.__vftable));
        *(&v283 + 1) = v57;
        v58 = sub_23F2E2F80(a1 + 40);
        *(a1 + 32) = v58;
        if (v58 != 12)
        {
LABEL_490:
          sub_23F2E4B94(&v277, *(a1 + 96), *(a1 + 104));
          v276 = *(a1 + 72);
          sub_23EF3F240(&v274, "object separator");
          sub_23F2E4C8C(&v275, a1, 12, &v274.__r_.__value_.__l.__data_);
          sub_23F076170(101, &v276, &v275, &__str);
          sub_23F2E5944(&v281, &__str);
LABEL_491:
          sub_23F0771F4(&__str);
LABEL_492:
          if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v275.__r_.__value_.__l.__data_);
            if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_496;
            }
          }

          else if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_496:
            v259 = v274.__r_.__value_.__r.__words[0];
LABEL_476:
            operator delete(v259);
          }

          goto LABEL_477;
        }

        v59 = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[2] << 6)
        {
          if ((__p.__r_.__value_.__l.__size_ + 1) < 0)
          {
            sub_23F06C6E8();
          }

          if (__p.__r_.__value_.__l.__size_ > 0x3FFFFFFFFFFFFFFELL)
          {
            v60 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (__p.__r_.__value_.__r.__words[2] << 7 <= (__p.__r_.__value_.__l.__size_ & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v60 = (__p.__r_.__value_.__l.__size_ & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v60 = __p.__r_.__value_.__r.__words[2] << 7;
          }

          sub_23F078018(&__p, v60);
          v59 = __p.__r_.__value_.__l.__size_;
        }

        __p.__r_.__value_.__l.__size_ = v59 + 1;
        *(__p.__r_.__value_.__r.__words[0] + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v59);
        *(a1 + 32) = sub_23F2E2F80(a1 + 40);
      }
    }
  }

  if (v4 == a1)
  {
    v280 = v279;
    (*(*v4 + 24))(v4, v279);
    v5 = v280;
  }

  else
  {
    v5 = (*(*v4 + 16))(v4);
    v280 = v5;
  }

  v117 = *(a1 + 184);
  v281 = a2;
  v282 = 0u;
  v283 = 0u;
  v284 = 0u;
  v285 = 0u;
  v286 = 0u;
  v287 = 0;
  if (v5)
  {
    if (v5 == v279)
    {
      v289 = v288;
      (*(*v5 + 24))(v5, v288);
      goto LABEL_222;
    }

    v5 = (*(*v5 + 16))(v5);
  }

  v289 = v5;
LABEL_222:
  v290 = v117;
  v291[0] = 9;
  v292 = 0;
  v132 = v284;
  if (v284 == *(&v284 + 1) << 6)
  {
    if (v284 + 1 < 0)
    {
      sub_23F06C6E8();
    }

    v133 = *(&v284 + 1) << 7;
    if (*(&v284 + 1) << 7 <= (v284 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v133 = (v284 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v284 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v134 = v133;
    }

    else
    {
      v134 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_23F078018(&v283 + 8, v134);
    v132 = v284;
  }

  *&v284 = v132 + 1;
  *(*(&v283 + 1) + ((v132 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v132;
  if (v280 == v279)
  {
    (*(*v280 + 32))(v280);
  }

  else if (v280)
  {
    (*(*v280 + 40))();
  }

  memset(&__p, 0, sizeof(__p));
  while (1)
  {
LABEL_235:
    v135 = *(a1 + 32);
    if (v135 <= 5)
    {
      if (v135 <= 2)
      {
        if (v135 == 1)
        {
          v149 = 1;
        }

        else
        {
          if (v135 != 2)
          {
            goto LABEL_392;
          }

          v149 = 0;
        }

        if (((*(*(&v283 + 1) + (((v284 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v284 - 1)) & 1) == 0)
        {
          goto LABEL_342;
        }

        LOBYTE(__str.__vftable) = 4;
        __str.__imp_.__imp_ = v149;
        LODWORD(v275.__r_.__value_.__l.__data_) = (*(&v282 + 1) - v282) >> 3;
        v274.__r_.__value_.__s.__data_[0] = 5;
        if (!v289)
        {
          sub_23EF38C6C();
        }

        if (((*(*v289 + 48))(v289, &v275, &v274, &__str) & 1) == 0)
        {
          goto LABEL_341;
        }

        if (v282 == *(&v282 + 1))
        {
          goto LABEL_337;
        }

        v160 = *(*(&v282 + 1) - 8);
        if (!v160)
        {
          goto LABEL_341;
        }

        if (*v160 != 2)
        {
          goto LABEL_338;
        }

        v138 = *(v160 + 8);
        v139 = v138[1];
        if (v139 < v138[2])
        {
          goto LABEL_336;
        }
      }

      else
      {
        if (v135 != 3)
        {
          if (v135 != 4)
          {
            if (((*(*(&v283 + 1) + (((v284 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v284 - 1)) & 1) == 0)
            {
              goto LABEL_342;
            }

            v136 = *(a1 + 160);
            LOBYTE(__str.__vftable) = 6;
            __str.__imp_.__imp_ = v136;
            LODWORD(v275.__r_.__value_.__l.__data_) = (*(&v282 + 1) - v282) >> 3;
            v274.__r_.__value_.__s.__data_[0] = 5;
            if (!v289)
            {
              sub_23EF38C6C();
            }

            if (((*(*v289 + 48))(v289, &v275, &v274, &__str) & 1) == 0)
            {
              goto LABEL_341;
            }

            if (v282 != *(&v282 + 1))
            {
              v137 = *(*(&v282 + 1) - 8);
              if (!v137)
              {
                goto LABEL_341;
              }

              if (*v137 == 2)
              {
                v138 = *(v137 + 8);
                v139 = v138[1];
                if (v139 >= v138[2])
                {
                  goto LABEL_374;
                }

                goto LABEL_336;
              }

              goto LABEL_338;
            }

            goto LABEL_337;
          }

          if ((*(*(&v283 + 1) + (((v284 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v284 - 1)))
          {
            LOBYTE(__str.__vftable) = 3;
            operator new();
          }

          goto LABEL_342;
        }

        if (((*(*(&v283 + 1) + (((v284 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v284 - 1)) & 1) == 0)
        {
          goto LABEL_342;
        }

        LOBYTE(__str.__vftable) = 0;
        __str.__imp_.__imp_ = 0;
        LODWORD(v275.__r_.__value_.__l.__data_) = (*(&v282 + 1) - v282) >> 3;
        v274.__r_.__value_.__s.__data_[0] = 5;
        if (!v289)
        {
          sub_23EF38C6C();
        }

        if (((*(*v289 + 48))(v289, &v275, &v274, &__str) & 1) == 0)
        {
          goto LABEL_341;
        }

        if (v282 == *(&v282 + 1))
        {
          goto LABEL_337;
        }

        v152 = *(*(&v282 + 1) - 8);
        if (!v152)
        {
          goto LABEL_341;
        }

        if (*v152 != 2)
        {
          goto LABEL_338;
        }

        v138 = *(v152 + 8);
        v139 = v138[1];
        if (v139 < v138[2])
        {
          goto LABEL_336;
        }
      }

LABEL_374:
      v138[1] = sub_23F065DA8(v138, &__str);
      goto LABEL_341;
    }

    if (v135 <= 7)
    {
      break;
    }

    if (v135 != 8)
    {
      if (v135 == 9)
      {
        LODWORD(__str.__vftable) = (*(&v282 + 1) - v282) >> 3;
        v277.__r_.__value_.__s.__data_[0] = 0;
        if (!v289)
        {
LABEL_504:
          sub_23EF38C6C();
        }

        v140 = (*(*v289 + 48))(v289, &__str, &v277, v291);
        v141 = v284;
        if (v284 == *(&v284 + 1) << 6)
        {
          if (v284 + 1 < 0)
          {
LABEL_507:
            sub_23F06C6E8();
          }

          v142 = *(&v284 + 1) << 7;
          if (*(&v284 + 1) << 7 <= (v284 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v142 = (v284 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v284 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v143 = v142;
          }

          else
          {
            v143 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_23F078018(&v283 + 8, v143);
          v141 = v284;
        }

        *&v284 = v141 + 1;
        v144 = v141 >> 6;
        v145 = 1 << v141;
        if (v140)
        {
          v146 = *(*(&v283 + 1) + 8 * v144) | v145;
        }

        else
        {
          v146 = *(*(&v283 + 1) + 8 * v144) & ~v145;
        }

        *(*(&v283 + 1) + 8 * v144) = v146;
        v161 = sub_23F2E6278(&v281, 1u);
        v162 = *(&v282 + 1);
        if (*(&v282 + 1) >= v283)
        {
          v167 = v282;
          v168 = *(&v282 + 1) - v282;
          v169 = (*(&v282 + 1) - v282) >> 3;
          v170 = v169 + 1;
          if ((v169 + 1) >> 61)
          {
LABEL_506:
            sub_23F2E6550();
          }

          v171 = v283 - v282;
          if ((v283 - v282) >> 2 > v170)
          {
            v170 = v171 >> 2;
          }

          if (v171 >= 0x7FFFFFFFFFFFFFF8)
          {
            v172 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v172 = v170;
          }

          if (v172)
          {
            if (!(v172 >> 61))
            {
              operator new();
            }

            goto LABEL_508;
          }

          v194 = (8 * v169);
          v195 = &v194[-((*(&v282 + 1) - v282) >> 3)];
          *v194 = v161;
          v163 = v194 + 1;
          memcpy(v195, v167, v168);
          *&v282 = v195;
          *(&v282 + 1) = v163;
          *&v283 = 0;
          if (v167)
          {
            operator delete(v167);
          }
        }

        else
        {
          **(&v282 + 1) = v161;
          v163 = (v162 + 8);
        }

        *(&v282 + 1) = v163;
        v196 = sub_23F2E2F80(a1 + 40);
        *(a1 + 32) = v196;
        if (v196 != 11)
        {
          if (v196 == 4)
          {
            sub_23F2E5E88();
          }

          goto LABEL_481;
        }

        sub_23F2E599C(&v281);
        goto LABEL_342;
      }

      if (v135 == 14)
      {
        v202 = *(a1 + 96);
        v203 = *(a1 + 104);
        memset(&v277, 0, sizeof(v277));
        for (; v202 != v203; ++v202)
        {
          while (1)
          {
            while (1)
            {
              v205 = *v202;
              if (v205 > 0x1F)
              {
                break;
              }

              LOBYTE(__str.__imp_.__imp_) = 0;
              __str.__vftable = 0;
              snprintf(&__str, 9uLL, "<U+%.4X>", v205);
              v204 = strlen(&__str);
              std::string::append(&v277, &__str, v204);
              if (++v202 == v203)
              {
                goto LABEL_406;
              }
            }

            v206 = HIBYTE(v277.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
            {
              break;
            }

            if (HIBYTE(v277.__r_.__value_.__r.__words[2]) == 22)
            {
              goto LABEL_387;
            }

            *(&v277.__r_.__value_.__s + 23) = (*(&v277.__r_.__value_.__s + 23) + 1) & 0x7F;
            v208 = &v277 + v206;
            *v208 = v205;
            v208[1] = 0;
            if (++v202 == v203)
            {
              goto LABEL_406;
            }
          }

          v207 = (v277.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v277.__r_.__value_.__l.__size_ == v207)
          {
            if ((v277.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_23EF2F8F4();
            }

LABEL_387:
            operator new();
          }

          v209 = *&v277.__r_.__value_.__l.__data_;
          ++v277.__r_.__value_.__l.__size_;
          v210 = (v209 + *(&v209 + 1));
          *v210 = v205;
          v210[1] = 0;
        }

LABEL_406:
        v276 = *(a1 + 72);
        *(&v274.__r_.__value_.__s + 23) = 5;
        strcpy(&v274, "value");
        sub_23F2E4C8C(&v275, a1, 0, &v274.__r_.__value_.__l.__data_);
        sub_23F076170(101, &v276, &v275, &__str);
        v287 = 1;
        if (v290 == 1)
        {
          v220 = __cxa_allocate_exception(0x28uLL);
          v221 = sub_23F07A500(v220, &__str);
          __cxa_throw(v221, &unk_28517D130, sub_23F0771F4);
        }

        goto LABEL_409;
      }

LABEL_392:
      v211 = *(a1 + 96);
      v212 = *(a1 + 104);
      memset(&v277, 0, sizeof(v277));
      for (; v211 != v212; ++v211)
      {
        while (1)
        {
          while (1)
          {
            v214 = *v211;
            if (v214 > 0x1F)
            {
              break;
            }

            LOBYTE(__str.__imp_.__imp_) = 0;
            __str.__vftable = 0;
            snprintf(&__str, 9uLL, "<U+%.4X>", v214);
            v213 = strlen(&__str);
            std::string::append(&v277, &__str, v213);
            if (++v211 == v212)
            {
              goto LABEL_408;
            }
          }

          v215 = HIBYTE(v277.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          if (HIBYTE(v277.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_401;
          }

          *(&v277.__r_.__value_.__s + 23) = (*(&v277.__r_.__value_.__s + 23) + 1) & 0x7F;
          v217 = &v277 + v215;
          *v217 = v214;
          v217[1] = 0;
          if (++v211 == v212)
          {
            goto LABEL_408;
          }
        }

        v216 = (v277.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v277.__r_.__value_.__l.__size_ == v216)
        {
          if ((v277.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23EF2F8F4();
          }

LABEL_401:
          operator new();
        }

        v218 = *&v277.__r_.__value_.__l.__data_;
        ++v277.__r_.__value_.__l.__size_;
        v219 = (v218 + *(&v218 + 1));
        *v219 = v214;
        v219[1] = 0;
      }

LABEL_408:
      v276 = *(a1 + 72);
      *(&v274.__r_.__value_.__s + 23) = 5;
      strcpy(&v274, "value");
      sub_23F2E4C8C(&v275, a1, 16, &v274.__r_.__value_.__l.__data_);
      sub_23F076170(101, &v276, &v275, &__str);
      v287 = 1;
      if (v290 == 1)
      {
        v264 = __cxa_allocate_exception(0x28uLL);
        v265 = sub_23F07A500(v264, &__str);
        __cxa_throw(v265, &unk_28517D130, sub_23F0771F4);
      }

LABEL_409:
      __str.__vftable = &unk_28517D058;
      std::runtime_error::~runtime_error(&v294);
      std::exception::~exception(&__str);
      if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
      {
        v222 = v275.__r_.__value_.__r.__words[0];
        goto LABEL_411;
      }

LABEL_412:
      if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v277.__r_.__value_.__l.__data_);
      }

      goto LABEL_414;
    }

    LODWORD(__str.__vftable) = (*(&v282 + 1) - v282) >> 3;
    v277.__r_.__value_.__s.__data_[0] = 2;
    if (!v289)
    {
      goto LABEL_504;
    }

    v153 = (*(*v289 + 48))(v289, &__str, &v277, v291);
    v154 = v284;
    if (v284 == *(&v284 + 1) << 6)
    {
      if (v284 + 1 < 0)
      {
        goto LABEL_507;
      }

      v155 = *(&v284 + 1) << 7;
      if (*(&v284 + 1) << 7 <= (v284 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v155 = (v284 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v284 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v156 = v155;
      }

      else
      {
        v156 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_23F078018(&v283 + 8, v156);
      v154 = v284;
    }

    *&v284 = v154 + 1;
    v157 = v154 >> 6;
    v158 = 1 << v154;
    if (v153)
    {
      v159 = *(*(&v283 + 1) + 8 * v157) | v158;
    }

    else
    {
      v159 = *(*(&v283 + 1) + 8 * v157) & ~v158;
    }

    *(*(&v283 + 1) + 8 * v157) = v159;
    v164 = sub_23F2E6278(&v281, 2u);
    v165 = *(&v282 + 1);
    if (*(&v282 + 1) >= v283)
    {
      v173 = v282;
      v174 = *(&v282 + 1) - v282;
      v175 = (*(&v282 + 1) - v282) >> 3;
      v176 = v175 + 1;
      if ((v175 + 1) >> 61)
      {
        goto LABEL_506;
      }

      v177 = v283 - v282;
      if ((v283 - v282) >> 2 > v176)
      {
        v176 = v177 >> 2;
      }

      if (v177 >= 0x7FFFFFFFFFFFFFF8)
      {
        v178 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v178 = v176;
      }

      if (v178)
      {
        if (!(v178 >> 61))
        {
          operator new();
        }

LABEL_508:
        sub_23EF34E18();
      }

      v197 = (8 * v175);
      v198 = &v197[-((*(&v282 + 1) - v282) >> 3)];
      *v197 = v164;
      v166 = v197 + 1;
      memcpy(v198, v173, v174);
      *&v282 = v198;
      *(&v282 + 1) = v166;
      *&v283 = 0;
      if (v173)
      {
        operator delete(v173);
      }
    }

    else
    {
      **(&v282 + 1) = v164;
      v166 = (v165 + 8);
    }

    *(&v282 + 1) = v166;
    v199 = sub_23F2E2F80(a1 + 40);
    *(a1 + 32) = v199;
    if (v199 == 10)
    {
      sub_23F2E60D8(&v281);
      goto LABEL_342;
    }

    v200 = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[2] << 6)
    {
      if ((__p.__r_.__value_.__l.__size_ + 1) < 0)
      {
        sub_23F06C6E8();
      }

      if (__p.__r_.__value_.__l.__size_ > 0x3FFFFFFFFFFFFFFELL)
      {
        v201 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (__p.__r_.__value_.__r.__words[2] << 7 <= (__p.__r_.__value_.__l.__size_ & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v201 = (__p.__r_.__value_.__l.__size_ & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      else
      {
        v201 = __p.__r_.__value_.__r.__words[2] << 7;
      }

      sub_23F078018(&__p, v201);
      v200 = __p.__r_.__value_.__l.__size_;
    }

    __p.__r_.__value_.__l.__size_ = v200 + 1;
    *(__p.__r_.__value_.__r.__words[0] + ((v200 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v200;
  }

  if (v135 == 6)
  {
    if (((*(*(&v283 + 1) + (((v284 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v284 - 1)) & 1) == 0)
    {
      goto LABEL_342;
    }

    v150 = *(a1 + 152);
    LOBYTE(__str.__vftable) = 5;
    __str.__imp_.__imp_ = v150;
    LODWORD(v275.__r_.__value_.__l.__data_) = (*(&v282 + 1) - v282) >> 3;
    v274.__r_.__value_.__s.__data_[0] = 5;
    if (!v289)
    {
      sub_23EF38C6C();
    }

    if (((*(*v289 + 48))(v289, &v275, &v274, &__str) & 1) == 0)
    {
      goto LABEL_341;
    }

    if (v282 == *(&v282 + 1))
    {
      goto LABEL_337;
    }

    v151 = *(*(&v282 + 1) - 8);
    if (!v151)
    {
      goto LABEL_341;
    }

    if (*v151 != 2)
    {
      goto LABEL_338;
    }

    v138 = *(v151 + 8);
    v139 = v138[1];
    if (v139 < v138[2])
    {
      goto LABEL_336;
    }

    goto LABEL_374;
  }

  v147 = *(a1 + 168);
  if ((v147 & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
  {
    sub_23F2E4B94(&v277, *(a1 + 96), *(a1 + 104));
    sub_23F2E4B94(&v274, *(a1 + 96), *(a1 + 104));
    sub_23F06C3EC("number overflow parsing '", &v274, &v275);
    sub_23F06E0E4("'", &v275, &v276);
    sub_23F078C28(406, &v276, &__str);
    sub_23F2E6220(&v281, &__str);
    sub_23F078DC8(&__str);
    if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v276.__r_.__value_.__l.__data_);
    }

    goto LABEL_483;
  }

  if ((*(*(&v283 + 1) + (((v284 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v284 - 1)))
  {
    LOBYTE(__str.__vftable) = 7;
    __str.__imp_.__imp_ = v147;
    LODWORD(v275.__r_.__value_.__l.__data_) = (*(&v282 + 1) - v282) >> 3;
    v274.__r_.__value_.__s.__data_[0] = 5;
    if (!v289)
    {
      sub_23EF38C6C();
    }

    if (((*(*v289 + 48))(v289, &v275, &v274, &__str) & 1) == 0)
    {
      goto LABEL_341;
    }

    if (v282 != *(&v282 + 1))
    {
      v148 = *(*(&v282 + 1) - 8);
      if (!v148)
      {
        goto LABEL_341;
      }

      if (*v148 == 2)
      {
        v138 = *(v148 + 8);
        v139 = v138[1];
        if (v139 >= v138[2])
        {
          goto LABEL_374;
        }

LABEL_336:
        *v139 = __str.__vftable;
        *(v139 + 8) = __str.__imp_.__imp_;
        LOBYTE(__str.__vftable) = 0;
        __str.__imp_.__imp_ = 0;
        v138[1] = v139 + 16;
LABEL_341:
        sub_23F0655DC(&__str.__imp_, LOBYTE(__str.__vftable));
        goto LABEL_342;
      }

LABEL_338:
      v185 = *(v285 + ((--*(&v285 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v185 >> SBYTE8(v285)) & 1) == 0)
      {
        goto LABEL_341;
      }

      v186 = __str.__vftable;
      imp = __str.__imp_.__imp_;
      LOBYTE(__str.__vftable) = 0;
      __str.__imp_.__imp_ = 0;
      v188 = *(&v286 + 1);
      v182 = **(&v286 + 1);
      **(&v286 + 1) = v186;
      v276.__r_.__value_.__s.__data_[0] = v182;
      v189 = *(v188 + 8);
      *(v188 + 8) = imp;
      v276.__r_.__value_.__l.__size_ = v189;
      v184 = &v276;
LABEL_340:
      sub_23F0655DC(&v184->__r_.__value_.__l.__size_, v182);
      goto LABEL_341;
    }

LABEL_337:
    v179 = __str.__vftable;
    v180 = __str.__imp_.__imp_;
    LOBYTE(__str.__vftable) = 0;
    __str.__imp_.__imp_ = 0;
    v181 = v281;
    v182 = *v281;
    *v281 = v179;
    v277.__r_.__value_.__s.__data_[0] = v182;
    v183 = *(v181 + 1);
    *(v181 + 1) = v180;
    v277.__r_.__value_.__l.__size_ = v183;
    v184 = &v277;
    goto LABEL_340;
  }

LABEL_342:
  v190 = __p.__r_.__value_.__l.__size_;
  while (__p.__r_.__value_.__l.__size_)
  {
    if ((*(__p.__r_.__value_.__r.__words[0] + (((v190 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v190 - 1)))
    {
      v191 = sub_23F2E2F80(a1 + 40);
      *(a1 + 32) = v191;
      if (v191 == 13)
      {
        *(a1 + 32) = sub_23F2E2F80(a1 + 40);
        goto LABEL_235;
      }

      if (v191 != 10)
      {
        sub_23F2E4B94(&v277, *(a1 + 96), *(a1 + 104));
        v276 = *(a1 + 72);
        sub_23EF3F240(&v274, "array");
        sub_23F2E4C8C(&v275, a1, 10, &v274.__r_.__value_.__l.__data_);
        sub_23F076170(101, &v276, &v275, &__str);
        sub_23F2E4B3C(&v281, &__str);
        goto LABEL_482;
      }

      sub_23F2E60D8(&v281);
    }

    else
    {
      v192 = sub_23F2E2F80(a1 + 40);
      *(a1 + 32) = v192;
      if (v192 == 13)
      {
        v193 = sub_23F2E2F80(a1 + 40);
        *(a1 + 32) = v193;
        if (v193 == 4)
        {
          sub_23F2E5E88();
        }

LABEL_481:
        sub_23F2E4B94(&v277, *(a1 + 96), *(a1 + 104));
        v276 = *(a1 + 72);
        sub_23EF3F240(&v274, "object key");
        sub_23F2E4C8C(&v275, a1, 4, &v274.__r_.__value_.__l.__data_);
        sub_23F076170(101, &v276, &v275, &__str);
        sub_23F2E4B3C(&v281, &__str);
LABEL_482:
        sub_23F0771F4(&__str);
LABEL_483:
        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
          if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_487;
          }
        }

        else if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_487:
          v222 = v274.__r_.__value_.__r.__words[0];
LABEL_411:
          operator delete(v222);
        }

        goto LABEL_412;
      }

      if (v192 != 11)
      {
        sub_23F2E4B94(&v277, *(a1 + 96), *(a1 + 104));
        v276 = *(a1 + 72);
        sub_23EF3F240(&v274, "object");
        sub_23F2E4C8C(&v275, a1, 11, &v274.__r_.__value_.__l.__data_);
        sub_23F076170(101, &v276, &v275, &__str);
        sub_23F2E4B3C(&v281, &__str);
        goto LABEL_482;
      }

      sub_23F2E599C(&v281);
    }

    v190 = --__p.__r_.__value_.__l.__size_;
  }

LABEL_414:
  if (__p.__r_.__value_.__r.__words[0])
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v223 = sub_23F2E2F80(a1 + 40);
  v224 = a2;
  *(a1 + 32) = v223;
  if (v223 == 15)
  {
    goto LABEL_433;
  }

  v225 = *(a1 + 96);
  v226 = *(a1 + 104);
  memset(&__p, 0, sizeof(__p));
  for (; v225 != v226; ++v225)
  {
    while (1)
    {
      while (1)
      {
        v228 = *v225;
        if (v228 > 0x1F)
        {
          break;
        }

        LOBYTE(__str.__imp_.__imp_) = 0;
        __str.__vftable = 0;
        snprintf(&__str, 9uLL, "<U+%.4X>", v228);
        v227 = strlen(&__str);
        std::string::append(&__p, &__str, v227);
        if (++v225 == v226)
        {
          goto LABEL_430;
        }
      }

      v229 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_426;
      }

      *(&__p.__r_.__value_.__s + 23) = (*(&__p.__r_.__value_.__s + 23) + 1) & 0x7F;
      v231 = &__p + v229;
      *v231 = v228;
      v231[1] = 0;
      if (++v225 == v226)
      {
        goto LABEL_430;
      }
    }

    v230 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__p.__r_.__value_.__l.__size_ == v230)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_426:
      operator new();
    }

    v232 = __p.__r_.__value_.__l.__size_++;
    v233 = (__p.__r_.__value_.__r.__words[0] + v232);
    *v233 = v228;
    v233[1] = 0;
  }

LABEL_430:
  v277 = *(a1 + 72);
  *(&v275.__r_.__value_.__s + 23) = 5;
  strcpy(&v275, "value");
  sub_23F2E4C8C(&v276, a1, 15, &v275.__r_.__value_.__l.__data_);
  sub_23F076170(101, &v277, &v276, &__str);
  v224 = a2;
  v287 = 1;
  if (v290 == 1)
  {
    v260 = __cxa_allocate_exception(0x28uLL);
    v261 = sub_23F07A500(v260, &__str);
    __cxa_throw(v261, &unk_28517D130, sub_23F0771F4);
  }

  __str.__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(&v294);
  std::exception::~exception(&__str);
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v276.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_436;
    }

LABEL_433:
    if (v287 != 1)
    {
      goto LABEL_437;
    }

    goto LABEL_434;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_433;
  }

LABEL_436:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v287 == 1)
  {
LABEL_434:
    v234 = *v224;
    *v224 = 9;
    v272 = v234;
    v235 = *(v224 + 1);
    *(v224 + 1) = 0;
    v273 = v235;
    v236 = &v273;
    goto LABEL_439;
  }

LABEL_437:
  if (*v224 == 9)
  {
    *v224 = 0;
    v270 = 9;
    v237 = *(v224 + 1);
    *(v224 + 1) = 0;
    v271 = v237;
    v236 = &v271;
    v234 = 9;
LABEL_439:
    sub_23F0655DC(v236, v234);
  }

  sub_23F2E6568(&v281);
LABEL_441:
  v238 = *MEMORY[0x277D85DE8];
}