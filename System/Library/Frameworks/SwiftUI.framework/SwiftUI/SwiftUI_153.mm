_BYTE *initializeWithTake for DragActionContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (&a1[v6 + 1] & ~v6);
  v8 = (&a2[v6 + 1] & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v16 + 80) & 0xF8 | 7;
  v19 = &v8[v14 + v18];
  v20 = ((v7 + v14 + v18) & ~v18);
  v21 = (v19 & ~v18);
  v22 = *(v16 + 64) + 7;
  v23 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 + 16;
  if (!v17)
  {
    if (!*(v21 + v24))
    {
      goto LABEL_21;
    }

    v25 = *(v21 + v24) - 1;
    v26 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v25 = 0;
      v26 = *v21;
    }

    if ((v26 | v25) == 0xFFFFFFFF)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (v17)
    {
      v27 = v23 + 16;
    }

    else
    {
      v27 = v23 + 17;
    }

    memcpy(v20, v21, v27);
    goto LABEL_23;
  }

  if ((*(v16 + 48))(v21, *(v16 + 84), v15))
  {
    goto LABEL_17;
  }

LABEL_21:
  (*(v16 + 32))(v20, v21, v15);
  v28 = ((v20 + v22) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v21 + v22) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  *((v30 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  if (!v17)
  {
    *(v20 + v24) = 0;
  }

LABEL_23:
  if (v17)
  {
    v32 = v23 + 16;
  }

  else
  {
    v32 = v23 + 17;
  }

  v33 = (v20 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v21 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v34 < 0xFFFFFFFFuLL)
  {
    *v33 = *v34;
  }

  else
  {
    v35 = *(v34 + 8);
    *v33 = *v34;
    *(v33 + 8) = v35;
  }

  v36 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*v37 < 0xFFFFFFFFuLL)
  {
    *v36 = *v37;
  }

  else
  {
    v38 = *(v37 + 8);
    *v36 = *v37;
    *(v36 + 8) = v38;
  }

  v39 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*v40 < 0xFFFFFFFFuLL)
  {
    *v39 = *v40;
  }

  else
  {
    v41 = *(v40 + 8);
    *v39 = *v40;
    *(v39 + 8) = v41;
  }

  v42 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*v43 < 0xFFFFFFFFuLL)
  {
    *v42 = *v43;
  }

  else
  {
    v44 = *(v43 + 8);
    *v42 = *v43;
    *(v42 + 8) = v44;
  }

  v45 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = *(v46 + 16);
  *v45 = *v46;
  *(v45 + 16) = v47;
  *(v45 + 32) = *(v46 + 32);
  v48 = (v45 + 47) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v46 + 47) & 0xFFFFFFFFFFFFFFF8;
  v50 = *v49;
  *(v48 + 16) = *(v49 + 16);
  *v48 = v50;
  return a1;
}

_BYTE *assignWithTake for DragActionContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (&a1[v6 + 1] & ~v6);
  v8 = (&a2[v6 + 1] & ~v6);
  v9 = *(v5 + 48);
  v10 = v9(v7, 1, v4);
  v11 = v9(v8, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 32))(v7, v8, v4);
      (*(v5 + 56))(v7, 0, 1, v4);
      goto LABEL_12;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 40))(v7, v8, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  memcpy(v7, v8, v14);
LABEL_12:
  if (*(v5 + 84))
  {
    v15 = *(v5 + 64);
  }

  else
  {
    v15 = *(v5 + 64) + 1;
  }

  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = *(v17 + 80) & 0xF8 | 7;
  v20 = &v8[v15 + v19];
  v21 = ((v7 + v15 + v19) & ~v19);
  v22 = (v20 & ~v19);
  v23 = *(v17 + 64) + 7;
  v24 = (((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23;
  v25 = v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = (v24 & 0xFFFFFFFFFFFFFFF8) + 16;
  v81 = v17;
  v82 = v16;
  if (v18)
  {
    v27 = v24 & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v17 + 48);
    __dst = v21;
    v29 = v16;
    v30 = (v28)(v21, v18);
    v31 = v28(v22, v18, v29);
    v25 = v27;
    if (v30)
    {
      v21 = __dst;
      if (!v31)
      {
        goto LABEL_43;
      }

LABEL_36:
      if (v18)
      {
        v38 = v26;
      }

      else
      {
        v38 = v25 + 17;
      }

      memcpy(v21, v22, v38);
      goto LABEL_45;
    }

    goto LABEL_34;
  }

  if (!*(v21 + v26) || ((v32 = *(v21 + v26) - 1, !v26) ? (v33 = 0) : (v32 = 0, v33 = *v21), (v33 | v32) == 0xFFFFFFFF))
  {
    if (!*(v22 + v26))
    {
      goto LABEL_40;
    }

    v36 = *(v22 + v26) - 1;
    if (v26)
    {
      v36 = 0;
    }

    __dst = v21;
    if (v26)
    {
      v37 = *v22;
    }

    else
    {
      v37 = 0;
    }

    v31 = (v37 | v36) + 1;
LABEL_34:
    v16 = v82;
    v21 = __dst;
    v17 = v81;
    if (v31)
    {
      (*(v81 + 8))(__dst, v82);
      goto LABEL_36;
    }

LABEL_40:
    (*(v17 + 40))(v21, v22, v16);
    v39 = ((v21 + v23) & 0xFFFFFFFFFFFFFFF8);
    v40 = ((v22 + v23) & 0xFFFFFFFFFFFFFFF8);
    *v39 = *v40;
    v39[1] = v40[1];
    v41 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
    v42 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v42;
    v41[1] = v42[1];
    v43 = ((v41 + 23) & 0xFFFFFFFFFFFFFFF8);
    v44 = ((v42 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v43 = *v44;
    v43[1] = v44[1];
    goto LABEL_45;
  }

  if (*(v22 + v26))
  {
    v34 = *(v22 + v26) - 1;
    if (v26)
    {
      v34 = 0;
      v35 = *v22;
    }

    else
    {
      v35 = 0;
    }

    if ((v35 | v34) != 0xFFFFFFFF)
    {
      goto LABEL_36;
    }
  }

LABEL_43:
  (*(v81 + 32))(v21, v22, v82);
  v45 = ((v21 + v23) & 0xFFFFFFFFFFFFFFF8);
  v46 = ((v22 + v23) & 0xFFFFFFFFFFFFFFF8);
  *v45 = *v46;
  v47 = ((v45 + 23) & 0xFFFFFFFFFFFFFFF8);
  v48 = ((v46 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v47 = *v48;
  *((v47 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v48 + 23) & 0xFFFFFFFFFFFFFFF8);
  if (!v18)
  {
    *(v21 + v26) = 0;
  }

LABEL_45:
  v49 = v25 + 17;
  if (v18)
  {
    v49 = v26;
  }

  v50 = ((v21 + v49 + 7) & 0xFFFFFFFFFFFFFFF8);
  v51 = ((v22 + v49 + 7) & 0xFFFFFFFFFFFFFFF8);
  v52 = *v51;
  if (*v50 < 0xFFFFFFFFuLL)
  {
    if (v52 >= 0xFFFFFFFF)
    {
      v54 = v51[1];
      *v50 = v52;
      v50[1] = v54;
      goto LABEL_54;
    }
  }

  else
  {
    if (v52 >= 0xFFFFFFFF)
    {
      v53 = v51[1];
      *v50 = v52;
      v50[1] = v53;

      goto LABEL_54;
    }
  }

  *v50 = *v51;
LABEL_54:
  v55 = ((v50 + 23) & 0xFFFFFFFFFFFFFFF8);
  v56 = ((v51 + 23) & 0xFFFFFFFFFFFFFFF8);
  v57 = *v56;
  if (*v55 < 0xFFFFFFFFuLL)
  {
    if (v57 >= 0xFFFFFFFF)
    {
      v59 = v56[1];
      *v55 = v57;
      v55[1] = v59;
      goto LABEL_61;
    }
  }

  else
  {
    if (v57 >= 0xFFFFFFFF)
    {
      v58 = v56[1];
      *v55 = v57;
      v55[1] = v58;

      goto LABEL_61;
    }
  }

  *v55 = *v56;
LABEL_61:
  v60 = ((v55 + 23) & 0xFFFFFFFFFFFFFFF8);
  v61 = ((v56 + 23) & 0xFFFFFFFFFFFFFFF8);
  v62 = *v61;
  if (*v60 < 0xFFFFFFFFuLL)
  {
    if (v62 >= 0xFFFFFFFF)
    {
      v64 = v61[1];
      *v60 = v62;
      v60[1] = v64;
      goto LABEL_68;
    }
  }

  else
  {
    if (v62 >= 0xFFFFFFFF)
    {
      v63 = v61[1];
      *v60 = v62;
      v60[1] = v63;

      goto LABEL_68;
    }
  }

  *v60 = *v61;
LABEL_68:
  v65 = ((v60 + 23) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v61 + 23) & 0xFFFFFFFFFFFFFFF8);
  v67 = *v66;
  if (*v65 < 0xFFFFFFFFuLL)
  {
    if (v67 >= 0xFFFFFFFF)
    {
      v69 = v66[1];
      *v65 = v67;
      v65[1] = v69;
      goto LABEL_75;
    }
  }

  else
  {
    if (v67 >= 0xFFFFFFFF)
    {
      v68 = v66[1];
      *v65 = v67;
      v65[1] = v68;

      goto LABEL_75;
    }
  }

  *v65 = *v66;
LABEL_75:
  v70 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*(v70 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v72 = *(v71 + 16);
  *v70 = *v71;
  *(v70 + 16) = v72;
  *(v70 + 32) = *(v71 + 32);
  v73 = (v70 + 47) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v71 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v73 = *v74;
  v75 = (v73 + 8);
  v77 = (v74 + 8);
  v76 = *(v74 + 8);
  if (!*(v73 + 8))
  {
    if (v76)
    {
      v79 = *(v74 + 16);
      *(v73 + 8) = v76;
      *(v73 + 16) = v79;
      return a1;
    }

LABEL_83:
    *v75 = *v77;
    return a1;
  }

  if (!v76)
  {

    goto LABEL_83;
  }

  v78 = *(v74 + 16);
  *(v73 + 8) = v76;
  *(v73 + 16) = v78;

  return a1;
}

uint64_t getEnumTagSinglePayload for DragActionContext(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(type metadata accessor for Date() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  if (!v7)
  {
    ++v15;
  }

  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = 16;
  }

  else
  {
    v17 = 17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v9 + 80) & 0xF8 | 7;
  v19 = ((((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v17;
  if (v13 < a2)
  {
    v20 = ((((((((((((v19 + ((v15 + v18 + ((v14 + 1) & ~v14)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 24;
    v21 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = a2 - v13 + 1;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = *(a1 + v20);
        if (v25)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v25 = *(a1 + v20);
        if (v25)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v24)
    {
      v25 = *(a1 + v20);
      if (v25)
      {
LABEL_33:
        v26 = v25 - 1;
        if (v21)
        {
          v26 = 0;
          v27 = *a1;
        }

        else
        {
          v27 = 0;
        }

        return v13 + (v27 | v26) + 1;
      }
    }
  }

  v28 = (a1 + v14 + 1) & ~v14;
  if (v8 == v13)
  {
    if (v7 >= 2)
    {
      v29 = (*(v6 + 48))(v28, v7, v5);
      goto LABEL_51;
    }

    return 0;
  }

  v30 = (v28 + v15 + v18) & ~v18;
  if (v12 == v13)
  {
    if (v11 >= 2)
    {
      v29 = (*(v10 + 48))(v30);
LABEL_51:
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v32 = *((v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v32 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  if ((v32 + 1) >= 2)
  {
    return v32;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for DragActionContext(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v37 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(type metadata accessor for Date() - 8);
  v13 = v12;
  v15 = *(v12 + 80);
  v14 = *(v12 + 84);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  v17 = *(v8 + 80);
  v18 = *(v12 + 64);
  if (v10 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v10;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v21 = v15 & 0xF8 | 7;
  v22 = (((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 16;
  v24 = v22 + 17;
  if (v14)
  {
    v24 = v23;
  }

  v25 = ((((((((((((v24 + ((v20 + v21 + ((v17 + 1) & ~v17)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v19 < a3)
  {
    if (((((((((((((v24 + ((v20 + v21 + ((v17 + 1) & ~v17)) & ~v21) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v26 = a3 - v19 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v11 = v27;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v19)
  {
    if (((((((((((((v24 + ((v20 + v21 + ((v17 + 1) & ~v17)) & ~v21) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v28 = a2 - v19;
    }

    else
    {
      v28 = 1;
    }

    if (((((((((((((v24 + ((v20 + v21 + ((v17 + 1) & ~v17)) & ~v21) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v29 = ~v19 + a2;
      bzero(a1, ((((((((((((v24 + ((v20 + v21 + ((v17 + 1) & ~v17)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 24);
      *a1 = v29;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v11)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v25) = 0;
  }

  else if (v11)
  {
    *(a1 + v25) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  v30 = (a1 + v17 + 1) & ~v17;
  if (v10 == v19)
  {
    v31 = *(v37 + 56);

    v31(v30, a2 + 1, v9, v7);
  }

  else
  {
    v32 = ((v30 + v20 + v21) & ~v21);
    if (v16 == v19)
    {
      v33 = a2 - v14;
      if (a2 >= v14)
      {
        if (v23)
        {
          v36 = v32;
          bzero(v32, v23);
          *v36 = v33;
        }
      }

      else
      {
        v34 = *(v13 + 56);

        v34(v32, a2 + 1);
      }
    }

    else
    {
      v35 = ((v32 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v35 = 0;
        v35[1] = 0;
        *v35 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v35 = a2;
      }
    }
  }
}

uint64_t DragActionContext.resolvedItems<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 24);
  if ((*(*(v8 - 8) + 48))(v4 + *(a2 + 44), 1, v8))
  {
    return 0;
  }

  else
  {
    return (*(*(a2 + 32) + 48))(a3, a3, a4, v8);
  }
}

uint64_t protocol witness for DragActionContextProtocol.onLiftEvent.getter in conformance DragActionContext<A, B>(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  outlined copy of AppIntentExecutor?(v2);
  return v2;
}

uint64_t protocol witness for DragActionContextProtocol.onSessionBegan.getter in conformance DragActionContext<A, B>(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));
  outlined copy of AppIntentExecutor?(v2);
  return v2;
}

uint64_t protocol witness for DragActionContextProtocol.onSessionEnded.getter in conformance DragActionContext<A, B>(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));
  outlined copy of AppIntentExecutor?(v2);
  return v2;
}

uint64_t protocol witness for DragActionContextProtocol.onLocalSessionAnimationsCompleted.getter in conformance DragActionContext<A, B>(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));
  outlined copy of AppIntentExecutor?(v2);
  return v2;
}

uint64_t DocumentBrowserViewController.init(configurations:rootModifier:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_documentConfigurations;
  *&v2[OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_documentConfigurations] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_configurationMap] = MEMORY[0x1E69E7CC8];
  *&v2[v4] = a1;
  outlined init with copy of RootModifier(a2, &v2[OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_rootModifier]);
  v5 = *(a1 + 16);
  if (!v5)
  {

LABEL_19:
    type metadata accessor for UTType();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v28.receiver = v2;
    v28.super_class = type metadata accessor for DocumentBrowserViewController();
    v21 = objc_msgSendSuper2(&v28, sel_initForOpeningContentTypes_, isa);

    v22 = v21;
    [v22 setDelegate_];
    [v22 setDefinesPresentationContext_];
    result = a1 + 32;
    v23 = -1;
    do
    {
      v24 = v23 - v5;
      if (v23 - v5 == -1)
      {
        break;
      }

      if (++v23 >= *(a1 + 16))
      {
        goto LABEL_26;
      }

      v25 = result + 128;
      outlined init with copy of IdentifiedDocumentGroupConfiguration(result, v29);
      v26 = v29[0];
      outlined destroy of IdentifiedDocumentGroupConfiguration(v29);
      result = v25;
    }

    while ((v26 & 1) != 0);

    [v22 setAllowsDocumentCreation_];

    outlined destroy of RootModifier(a2);
    return v22;
  }

  v6 = a1 + 32;

  v7 = MEMORY[0x1E69E7CC0];
  v8 = v5;
  while (1)
  {
    outlined init with copy of IdentifiedDocumentGroupConfiguration(v6, v29);
    v10 = v30;

    result = outlined destroy of IdentifiedDocumentGroupConfiguration(v29);
    v11 = *(v10 + 16);
    v12 = v7[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v7[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      if (*(v10 + 16))
      {
LABEL_14:
        v16 = (v7[3] >> 1) - v7[2];
        result = type metadata accessor for UTType();
        if (v16 < v11)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v7[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_28;
          }

          v7[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_25;
    }

LABEL_4:
    v6 += 128;
    if (!--v8)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void closure #2 in DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)(char a1, void (*a2)(char *, void), uint64_t a3, void *a4, uint64_t a5)
{
  type metadata accessor for WeakBox<DocumentViewController>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = aBlock - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  if (a1)
  {
    (*(v14 + 16))(aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13, v16);
    v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    (*(v14 + 32))(v18 + v17, aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    aBlock[4] = partial apply for closure #1 in closure #2 in DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_44;
    v19 = _Block_copy(aBlock);

    [a4 closeWithCompletionHandler_];
    _Block_release(v19);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13, v16);
    a2(v12, 0);
    _s10Foundation3URLVSgWOhTm_2(v12, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  }
}

uint64_t closure #1 in closure #2 in DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)(char a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakBox<DocumentViewController>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11;
  if (a1)
  {
    (*(v11 + 16))(v9, a4, v10);
    (*(v12 + 56))(v9, 0, 1, v10);
    v13 = 2;
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    v13 = 0;
  }

  a2(v9, v13);
  return _s10Foundation3URLVSgWOhTm_2(v9, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
}

Swift::OpaquePointer_optional __swiftcall DocumentBrowserViewController.presentDocuments(at:animated:)(Swift::OpaquePointer at, Swift::Bool animated)
{
  v60 = animated;
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for WeakBox<DocumentViewController>(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - v5;
  v76 = type metadata accessor for UTType();
  v7 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  type metadata accessor for WeakBox<DocumentViewController>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], v3);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v64 = &v59 - v22;
  v23 = *(at._rawValue + 2);
  if (!v23)
  {
    v30 = 1;
    v31 = v64;
    goto LABEL_16;
  }

  v61 = v19;
  v62 = v10;
  v24 = *(v10 + 16);
  v74 = OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_documentConfigurations;
  v75 = v24;
  v25 = at._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v65 = (v7 + 8);
  v66 = (v7 + 32);
  v72 = (v10 + 8);
  v73 = (v7 + 48);
  v71 = *(v10 + 72);
  v68 = v9;
  v69 = v16;
  v67 = v10 + 16;
  v24(v16, v25, v9, v21);
  while (1)
  {
    v26 = *(v77 + v74);

    static DocumentUtils.contentType(of:)(v16, v6);
    v27 = v76;
    if ((*v73)(v6, 1, v76) == 1)
    {

      _s10Foundation3URLVSgWOhTm_2(v6, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      memset(v85, 0, 25);
      goto LABEL_4;
    }

    v28 = v70;
    v29 = (*v66)(v70, v6, v27);
    MEMORY[0x1EEE9AC00](v29);
    *(&v59 - 2) = v28;
    specialized Sequence.first(where:)(closure #1 in configuration #1 (for:) in static DocumentUtils.documentConfiguration(for:of:)partial apply, v26, &v79);

    (*v65)(v28, v27);
    if (*(&v79 + 1))
    {
      break;
    }

    v9 = v68;
    v16 = v69;
LABEL_4:
    (*v72)(v16, v9);
    outlined destroy of DocumentGroupConfiguration?(&v79, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?, &type metadata for IdentifiedDocumentGroupConfiguration);
    v25 += v71;
    if (!--v23)
    {
      v30 = 1;
      v10 = v62;
      v31 = v64;
      goto LABEL_15;
    }

    v75(v16, v25, v9, v21);
  }

  v87[3] = v83;
  v87[4] = v84;
  v88[0] = v85[0];
  *(v88 + 9) = *(v85 + 9);
  v86 = v79;
  v87[0] = v80;
  v87[1] = v81;
  v87[2] = v82;
  v32 = *(&v79 + 1);
  v33 = v80;
  v34 = (*(v80 + 8))(*(&v79 + 1), v80);
  v35 = v59;
  v9 = v68;
  (v75)(v59, v69, v68);
  v36 = (*(v34 + 120))(v35, v32, v33);
  outlined init with copy of NewDocumentProvider?(v87 + 8, &v79);
  v37 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v38 = v81;
    __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    v39 = *&v36[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8];
    v40 = *(v38 + 8);
    v41 = swift_unknownObjectRetain();
    v40(v41, v39, v37, v38);
    v9 = v68;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  else
  {
    outlined destroy of NewDocumentProvider?(&v79);
  }

  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of IdentifiedDocumentGroupConfiguration(&v86, &v79);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v36;
  v44 = v84;
  v45 = v85[0];
  *(v43 + 96) = v83;
  *(v43 + 112) = v44;
  *(v43 + 128) = v45;
  *(v43 + 137) = *(v85 + 9);
  v46 = v80;
  *(v43 + 32) = v79;
  *(v43 + 48) = v46;
  v47 = v82;
  *(v43 + 64) = v81;
  *(v43 + 80) = v47;
  *(v43 + 153) = v60;
  v78[4] = closure #1 in DocumentBrowserViewController.presentDocument(at:animated:)partial apply;
  v78[5] = v43;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 1107296256;
  v78[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v78[3] = &block_descriptor_29_3;
  v48 = _Block_copy(v78);
  v49 = v36;

  [v49 openWithCompletionHandler_];
  _Block_release(v48);

  outlined destroy of IdentifiedDocumentGroupConfiguration(&v86);
  v10 = v62;
  v31 = v64;
  (*(v62 + 32))(v64, v69, v9);
  v30 = 0;
LABEL_15:
  v19 = v61;
LABEL_16:
  (*(v10 + 56))(v31, v30, 1, v9, v21);
  outlined init with copy of RootModifier?(v31, v19, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<DocumentViewController>);
  if ((*(v10 + 48))(v19, 1, v9) == 1)
  {
    v50 = MEMORY[0x1E6968FB0];
    _s10Foundation3URLVSgWOhTm_2(v31, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    _s10Foundation3URLVSgWOhTm_2(v19, &lazy cache variable for type metadata for URL?, v50);
    v52 = 0;
  }

  else
  {
    v53 = *(v10 + 32);
    v54 = v63;
    v53(v63, v19, v9);
    v55 = v10 + 32;
    v56 = MEMORY[0x1E6968FB0];
    type metadata accessor for WeakBox<DocumentViewController>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<URL>, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
    v57 = (*(v55 + 48) + 32) & ~*(v55 + 48);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18CD63400;
    v53((v58 + v57), v54, v9);
    _s10Foundation3URLVSgWOhTm_2(v31, &lazy cache variable for type metadata for URL?, v56);
    v52 = v58;
  }

  result.value._rawValue = v52;
  result.is_nil = v51;
  return result;
}

uint64_t DocumentBrowserViewController.presentDocument(at:animated:)(uint64_t a1, int a2)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeakBox<DocumentViewController>(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_documentConfigurations);

  v35 = a1;
  static DocumentUtils.contentType(of:)(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    _s10Foundation3URLVSgWOhTm_2(v9, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(v44, 0, 25);
LABEL_6:
    outlined destroy of DocumentGroupConfiguration?(&v38, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?, &type metadata for IdentifiedDocumentGroupConfiguration);
    return 0;
  }

  v15 = (*(v11 + 32))(v13, v9, v10);
  MEMORY[0x1EEE9AC00](v15);
  *(&v34 - 2) = v13;
  specialized Sequence.first(where:)(partial apply for closure #1 in configuration #1 (for:) in static DocumentUtils.documentConfiguration(for:of:), v14, &v38);

  (*(v11 + 8))(v13, v10);
  if (!*(&v38 + 1))
  {
    goto LABEL_6;
  }

  v46[3] = v42;
  v46[4] = v43;
  v47[0] = v44[0];
  *(v47 + 9) = *(v44 + 9);
  v45 = v38;
  v46[0] = v39;
  v46[1] = v40;
  v46[2] = v41;
  v16 = *(&v38 + 1);
  v17 = v39;
  v18 = (*(v39 + 8))(*(&v38 + 1), v39);
  (*(v34 + 16))(v6, v35, v4);
  v19 = (*(v18 + 120))(v6, v16, v17);
  outlined init with copy of NewDocumentProvider?(v46 + 8, &v38);
  v20 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v21 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    v22 = *&v19[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8];
    v23 = *(v21 + 8);
    v24 = swift_unknownObjectRetain();
    v23(v24, v22, v20, v21);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    outlined destroy of NewDocumentProvider?(&v38);
  }

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of IdentifiedDocumentGroupConfiguration(&v45, &v38);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v19;
  v28 = v43;
  v29 = v44[0];
  *(v27 + 96) = v42;
  *(v27 + 112) = v28;
  *(v27 + 128) = v29;
  *(v27 + 137) = *(v44 + 9);
  v30 = v39;
  *(v27 + 32) = v38;
  *(v27 + 48) = v30;
  v31 = v41;
  *(v27 + 64) = v40;
  *(v27 + 80) = v31;
  *(v27 + 153) = v36 & 1;
  v37[4] = partial apply for closure #1 in DocumentBrowserViewController.presentDocument(at:animated:);
  v37[5] = v27;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 1107296256;
  v37[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v37[3] = &block_descriptor_70;
  v32 = _Block_copy(v37);
  v33 = v19;

  [v33 openWithCompletionHandler_];
  _Block_release(v32);

  outlined destroy of IdentifiedDocumentGroupConfiguration(&v45);
  return 1;
}

void closure #1 in DocumentBrowserViewController.presentDocument(at:animated:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = DocumentBrowserViewController.makeHost(document:configuration:)(a3, a4);
      v11 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
      [v11 loadViewIfNeeded];
      [v11 setModalPresentationStyle_];
      [v11 setTransitioningDelegate_];
      [v9 presentViewController:v11 animated:a5 & 1 completion:0];
    }
  }
}

id DocumentBrowserViewController.makeHost(document:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for RootModifier?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IdentifiedDocumentGroupConfiguration>, &type metadata for IdentifiedDocumentGroupConfiguration, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63400;
  outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v6 + 32);
  v7 = objc_allocWithZone(type metadata accessor for IdentifiedDocumentGroupDocumentCreation());
  v8 = IdentifiedDocumentGroupDocumentCreation.init(configurations:strategies:)(v6, MEMORY[0x1E69E7CC0]);
  v9 = objc_allocWithZone(type metadata accessor for DocumentViewController(0));
  v10 = specialized DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)(v8, 0, 0);
  v11 = OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_rootModifier;
  swift_beginAccess();
  outlined init with copy of RootModifier(v3 + v11, v31);
  DocumentViewController.rootModifier.setter(v31);
  IdentifiedDocumentGroupDocumentCreation.updateCurrentDocument(with:configuration:)(a1, a2);
  v12 = OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_configurationMap;
  swift_beginAccess();
  if (*(*(v3 + v12) + 16) && (, specialized __RawDictionaryStorage.find<A>(_:)(a2), v14 = v13, , (v14 & 1) != 0))
  {
    outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v31);
    v15 = DocumentBrowserViewController.configurationMap.modify();
    v17 = specialized Dictionary.subscript.modify(v29, v31);
    if (*v16)
    {
      v18 = v16;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v19 = *v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
        *v18 = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
        v23 = v22 + 1;
        v19 = v27;
        *v18 = v27;
      }

      v19[2] = v23;
      outlined init with take of WeakBox<DocumentViewController>(v28, &v19[v22 + 4]);
      (v17)(v29, 0);
      outlined destroy of IdentifiedDocumentGroupConfiguration(v31);
      (v15)(v30, 0);
    }

    else
    {
      (v17)(v29, 0);
      outlined destroy of IdentifiedDocumentGroupConfiguration(v31);
      (v15)(v30, 0);
    }
  }

  else
  {
    type metadata accessor for WeakBox<DocumentViewController>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<DocumentViewController>>, type metadata accessor for WeakBox<DocumentViewController>, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18CD63400;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = *(v3 + v12);
    *(v3 + v12) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, a2, v25);
    *(v3 + v12) = v30[0];
    swift_endAccess();
  }

  return v10;
}

uint64_t DocumentBrowserViewController.updateHosts()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_configurationMap;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 64);
  v30 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_rootModifier;
  v29 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = &OBJC_IVAR____TtC7SwiftUI22DocumentViewController_rootModifier;
  v31 = result;
LABEL_5:
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v29)
    {
    }

    v7 = *(v30 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
LABEL_10:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = *(*(result + 56) + ((v10 << 9) | (8 * v13)));
      v15 = *(v14 + 16);
      if (v15)
      {
        v32 = v7;
        v16 = v14 + 32;

        swift_beginAccess();
        while (1)
        {
          outlined init with copy of WeakBox<DocumentViewController>(v16, v37);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v18 = Strong;
            outlined init with copy of RootModifier(v1 + v8, v36);
            v19 = *v11;
            swift_beginAccess();
            outlined assign with copy of RootModifier?(v36, v18 + v19);
            swift_endAccess();
            outlined init with copy of RootModifier?(v18 + v19, v33, &lazy cache variable for type metadata for RootModifier?, &type metadata for RootModifier, MEMORY[0x1E69E6720], type metadata accessor for RootModifier?);
            if (v34 == 1)
            {

              outlined destroy of DocumentGroupConfiguration?(v36, &lazy cache variable for type metadata for RootModifier?, &type metadata for RootModifier);
              outlined destroy of WeakBox<DocumentViewController>(v37);
              outlined destroy of DocumentGroupConfiguration?(v33, &lazy cache variable for type metadata for RootModifier?, &type metadata for RootModifier);
              goto LABEL_15;
            }

            outlined init with take of RootModifier(v33, v35);
            v20 = swift_unknownObjectWeakLoadStrong();
            if (v20)
            {
              v21 = v20;
              type metadata accessor for DocumentHostingController(0);
              v22 = swift_dynamicCastClass();
              if (v22)
              {
                v23 = v22;
                outlined init with copy of RootModifier(v35, v33);
                v24 = v11;
                v25 = v8;
                v26 = v1;
                v27 = direct field offset for DocumentHostingController.rootModifier;
                swift_beginAccess();
                v28 = v23 + v27;
                v1 = v26;
                v8 = v25;
                v11 = v24;
                outlined assign with copy of RootModifier(v33, v28);
                swift_endAccess();
                DocumentHostingController.scenesDidChange(phaseChanged:)(1);

                outlined destroy of RootModifier(v33);
              }

              else
              {
              }
            }

            else
            {
            }

            outlined destroy of RootModifier(v35);
            outlined destroy of DocumentGroupConfiguration?(v36, &lazy cache variable for type metadata for RootModifier?, &type metadata for RootModifier);
          }

          outlined destroy of WeakBox<DocumentViewController>(v37);
LABEL_15:
          v16 += 8;
          if (!--v15)
          {

            result = v31;
            v7 = v32;
            goto LABEL_5;
          }
        }
      }

      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void DocumentBrowserViewController.animationController(forDismissed:)()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = [v6 childViewControllers];
  type metadata accessor for UIViewController();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_10;
  }

LABEL_3:

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v10 = MEMORY[0x18D00E9C0](0, v9);
    goto LABEL_6;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v10 = *(v9 + 32);
LABEL_6:
  v11 = v10;

  type metadata accessor for DocumentViewController(0);
  v12 = [swift_dynamicCastClassUnconditional() document];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 fileURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v18 = [v1 transitionControllerForDocumentAtURL_];

    v19 = [v6 view];
    [v18 setTargetView_];
  }

  else
  {
  }
}

id DocumentBrowserViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentBrowserViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with copy of WeakBox<DocumentViewController>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<DocumentViewController>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WeakBox<DocumentViewController>(uint64_t a1)
{
  type metadata accessor for WeakBox<DocumentViewController>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of DocumentGroupConfiguration?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for RootModifier?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id specialized DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_lastNavigationItemDescription;
  v8 = type metadata accessor for NavigationItemDescription(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC7SwiftUI22DocumentViewController_onDocumentClose];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC7SwiftUI22DocumentViewController_rootModifier];
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  *(v10 + 6) = 1;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 13) = 0;
  *&v3[OBJC_IVAR____TtC7SwiftUI22DocumentViewController____lazy_storage___presentationModeLocation] = 0;
  v11 = &v3[OBJC_IVAR____TtC7SwiftUI22DocumentViewController_documentBrowserMediator];
  *v11 = a1;
  *(v11 + 1) = &protocol witness table for IdentifiedDocumentGroupDocumentCreation;
  *v9 = a2;
  v9[1] = a3;
  v12 = a1;
  outlined copy of AppIntentExecutor?(a2);
  v21.receiver = v3;
  v21.super_class = type metadata accessor for DocumentViewController(0);
  v13 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = &v12[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_newDocumentHandler];
  v16 = *&v12[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_newDocumentHandler];
  *v15 = partial apply for closure #1 in DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:);
  v15[1] = v14;
  v17 = v13;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16);
  v18 = IdentifiedDocumentGroupDocumentCreation.documentBrowser.getter();
  v19 = [v18 presentationController];

  if (v19)
  {
    [v19 setDelegate_];
  }

  [v17 setDefinesPresentationContext_];
  return v17;
}

{
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_lastNavigationItemDescription;
  v8 = type metadata accessor for NavigationItemDescription(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC7SwiftUI22DocumentViewController_onDocumentClose];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC7SwiftUI22DocumentViewController_rootModifier];
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  *(v10 + 6) = 1;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 13) = 0;
  *&v3[OBJC_IVAR____TtC7SwiftUI22DocumentViewController____lazy_storage___presentationModeLocation] = 0;
  v11 = &v3[OBJC_IVAR____TtC7SwiftUI22DocumentViewController_documentBrowserMediator];
  *v11 = a1;
  *(v11 + 1) = &protocol witness table for URLDocumentCreation;
  *v9 = a2;
  v9[1] = a3;
  v12 = a1;
  outlined copy of AppIntentExecutor?(a2);
  v21.receiver = v3;
  v21.super_class = type metadata accessor for DocumentViewController(0);
  v13 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = &v12[OBJC_IVAR____TtC7SwiftUI19URLDocumentCreation_newDocumentHandler];
  v16 = *&v12[OBJC_IVAR____TtC7SwiftUI19URLDocumentCreation_newDocumentHandler];
  *v15 = closure #1 in DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)partial apply;
  *(v15 + 1) = v14;
  v17 = v13;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16);
  v18 = URLDocumentCreation.documentBrowser.getter();
  v19 = [v18 presentationController];

  if (v19)
  {
    [v19 setDelegate_];
  }

  [v17 setDefinesPresentationContext_];
  return v17;
}

uint64_t outlined init with take of WeakBox<DocumentViewController>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<DocumentViewController>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of NewDocumentProvider?(uint64_t a1, uint64_t a2)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(0, &lazy cache variable for type metadata for NewDocumentProvider?, &lazy cache variable for type metadata for NewDocumentProvider, &protocol descriptor for NewDocumentProvider, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CVarArg(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of NewDocumentProvider?(uint64_t a1)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(0, &lazy cache variable for type metadata for NewDocumentProvider?, &lazy cache variable for type metadata for NewDocumentProvider, &protocol descriptor for NewDocumentProvider, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of RootModifier?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for WeakBox<DocumentViewController>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroy_19Tm()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  outlined consume of SceneID(*(v0 + 136), *(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

void specialized DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v3 = type metadata accessor for UTType();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v52 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v58 = v52 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v64 = v52 - v13;
  v14 = *(v2 + OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_documentConfigurations);
  v15 = *(v14 + 16);

  if (v15)
  {
    v16 = 0;
    v17 = v14 + 32;
    while (v16 < *(v14 + 16))
    {
      outlined init with copy of IdentifiedDocumentGroupConfiguration(v17, &v72);
      if (!*(&v72 + 1))
      {
        goto LABEL_8;
      }

      v65 = v72;
      v70 = v77;
      v71[0] = v78[0];
      *(v71 + 9) = *(v78 + 9);
      v66 = v73;
      v67 = v74;
      v68 = v75;
      v69 = v76;
      outlined init with copy of DocumentGroupConfiguration(&v65, &v79);
      outlined destroy of IdentifiedDocumentGroupConfiguration(&v65);
      if (!*(&v79 + 1))
      {
        goto LABEL_8;
      }

      v76 = v83;
      v77 = v84;
      *&v78[0] = v85;
      v72 = v79;
      v73 = v80;
      v74 = v81;
      v75 = v82;
      if ((v79 & 1) == 0)
      {
        v90 = v83;
        v91 = v84;
        v92 = v85;
        v86 = v79;
        v87 = v80;
        v88 = v81;
        v89 = v82;

        if (!*(&v86 + 1))
        {
          goto LABEL_9;
        }

        v76 = v90;
        v77 = v91;
        *&v78[0] = v92;
        v72 = v86;
        v73 = v87;
        v74 = v88;
        v75 = v89;
        v18 = [objc_opt_self() defaultManager];
        v19 = [v18 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        type metadata accessor for SwiftUIClass();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v21 = [objc_opt_self() bundleForClass_];
        v93._object = 0x800000018CD43470;
        v22.value._countAndFlagsBits = 0x746E656D75636F44;
        v23._countAndFlagsBits = 0x64656C7469746E55;
        v23._object = 0xE800000000000000;
        v22.value._object = 0xE900000000000073;
        v24._countAndFlagsBits = 0x64656C7469746E55;
        v24._object = 0xE800000000000000;
        v93._countAndFlagsBits = 0xD00000000000001DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v93);

        if (*(*(&v77 + 1) + 16))
        {
          (*(v62 + 16))(v61, *(&v77 + 1) + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v63);
          v25 = v58;
          URL.appendingPathComponent(_:conformingTo:)();

          v26 = *(&v72 + 1);
          v27 = v73;
          v28 = (*(v73 + 8))(*(&v72 + 1), v73);
          v53 = *(v59 + 16);
          v54 = v59 + 16;
          v53(v9, v25, v60);
          v29 = (*(v28 + 120))(v9, v26, v27);
          outlined init with copy of NewDocumentProvider?(&v73 + 8, &v65);
          v30 = *(&v66 + 1);
          if (*(&v66 + 1))
          {
            v31 = v67;
            v52[1] = __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
            v32 = *&v29[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8];
            v33 = *(v31 + 8);
            v34 = swift_unknownObjectRetain();
            v33(v34, v32, v30, v31);
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(&v65);
          }

          else
          {
            outlined destroy of NewDocumentProvider?(&v65);
          }

          v35 = *&v29[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8];
          ObjectType = swift_getObjectType();
          v37 = *(v35 + 40);
          swift_unknownObjectRetain();
          v37(0, ObjectType, v35);
          swift_unknownObjectRelease();
          v38 = [v29 fileURL];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          URL._bridgeToObjectiveC()(v39);
          v41 = v40;
          v42 = v29;
          v43 = v55;
          v44 = v60;
          v53(v55, v9, v60);
          v45 = v59;
          v46 = (*(v59 + 80) + 40) & ~*(v59 + 80);
          v47 = swift_allocObject();
          v48 = v57;
          *(v47 + 2) = v56;
          *(v47 + 3) = v48;
          *(v47 + 4) = v42;
          (*(v45 + 32))(&v47[v46], v43, v44);
          *&v67 = partial apply for closure #2 in DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:);
          *(&v67 + 1) = v47;
          *&v65 = MEMORY[0x1E69E9820];
          *(&v65 + 1) = 1107296256;
          *&v66 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
          *(&v66 + 1) = &block_descriptor_38_0;
          v49 = _Block_copy(&v65);

          v50 = v42;

          [v50 saveToURL:v41 forSaveOperation:0 completionHandler:v49];
          _Block_release(v49);

          v51 = *(v45 + 8);
          v51(v9, v44);
          v51(v58, v44);
          (*(v62 + 8))(v61, v63);
          v51(v64, v44);
          outlined destroy of DocumentGroupConfiguration(&v72);
          return;
        }

LABEL_18:
        __break(1u);
        return;
      }

      ++v16;
      outlined destroy of DocumentGroupConfiguration(&v72);
      v17 += 128;
      if (v15 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_8:
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;

LABEL_9:
  outlined destroy of DocumentGroupConfiguration?(&v86, &lazy cache variable for type metadata for DocumentGroupConfiguration?, &type metadata for DocumentGroupConfiguration);
}

void specialized DocumentBrowserViewController.documentBrowser(_:failedToImportDocumentAt:error:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v41._object = 0x800000018CD56450;
  v7._object = 0x800000018CD56420;
  v8._object = 0x800000018CD56420;
  v41._countAndFlagsBits = 0xD000000000000037;
  v7._countAndFlagsBits = 0xD000000000000020;
  v9.value._countAndFlagsBits = 0x746E656D75636F44;
  v9.value._object = 0xE900000000000073;
  v8._countAndFlagsBits = 0xD000000000000020;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v9, v6, v8, v41);

  v11 = [v5 bundleForClass_];
  v42._object = 0x800000018CD564D0;
  v12._object = 0x800000018CD56490;
  v13._object = 0x800000018CD56490;
  v42._countAndFlagsBits = 0xD000000000000081;
  v12._countAndFlagsBits = 0x1000000000000031;
  v14.value._countAndFlagsBits = 0x746E656D75636F44;
  v14.value._object = 0xE900000000000073;
  v13._countAndFlagsBits = 0x1000000000000031;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v14, v11, v13, v42);

  if (a3)
  {
    swift_getErrorValue();
    a3 = Error.localizedDescription.getter();
    v16 = v15;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = [objc_opt_self() defaultManager];
  v18 = URL.absoluteString.getter();
  v19 = MEMORY[0x18D00C850](v18);

  v20 = [v17 displayNameAtPath_];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_18CD63410;
  v25 = MEMORY[0x1E69E6158];
  *(v24 + 56) = MEMORY[0x1E69E6158];
  v26 = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 32) = v21;
  *(v24 + 40) = v23;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 64) = v26;
  *(v24 + 72) = a3;
  *(v24 + 80) = v16;
  v27 = String.init(format:_:)();
  v29 = v28;

  v30 = [v5 bundleForClass_];
  v43._object = 0x800000018CD56560;
  v43._countAndFlagsBits = 0xD000000000000029;
  v31._countAndFlagsBits = 19279;
  v31._object = 0xE200000000000000;
  v32.value._countAndFlagsBits = 0x746E656D75636F44;
  v32.value._object = 0xE900000000000073;
  v33._countAndFlagsBits = 19279;
  v33._object = 0xE200000000000000;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v43);

  v35 = MEMORY[0x18D00C850](v10._countAndFlagsBits, v10._object);

  v36 = MEMORY[0x18D00C850](v27, v29);

  v37 = [objc_opt_self() alertControllerWithTitle:v35 message:v36 preferredStyle:1];

  v38 = MEMORY[0x18D00C850](v34._countAndFlagsBits, v34._object);

  v39 = [objc_opt_self() actionWithTitle:v38 style:1 handler:0];

  [v37 addAction_];
  [a1 presentViewController:v37 animated:1 completion:0];
}

void specialized DocumentBrowserViewController.animationController(forPresented:presenting:source:)()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = [v6 childViewControllers];
  type metadata accessor for UIViewController();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_10;
  }

LABEL_3:

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v10 = MEMORY[0x18D00E9C0](0, v9);
    goto LABEL_6;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v10 = *(v9 + 32);
LABEL_6:
  v11 = v10;

  type metadata accessor for DocumentViewController(0);
  v12 = [swift_dynamicCastClassUnconditional() document];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 fileURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v18 = [v1 transitionControllerForDocumentAtURL_];

    v19 = [v6 view];
    [v18 setTargetView_];

    v20 = [v13 progress];
    [v18 setLoadingProgress_];
  }

  else
  {
  }
}

void type metadata accessor for RootModifier?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void partial apply for closure #2 in DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  closure #2 in DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #2 in DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in closure #2 in DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)(a1, v4, v5, v6);
}

BOOL specialized Sequence.reduce<A>(_:_:)(_BOOL8 result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = HIDWORD(a2) - a2;
  if (HIDWORD(a2) != a2)
  {
    if (SHIDWORD(a2) >= a2)
    {
      v5 = a2;
      v6 = (a2 << 6) + 92;
      while (a2 >> 32 != v5)
      {
        v7 = (a3 + 104);
        if (a4)
        {
          v7 = (a3 + 112);
        }

        if ((a2 & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v8 = *v7;
        if (*(v8 + 16) <= v5)
        {
          goto LABEL_14;
        }

        v9 = *(v8 + v6);
        v10 = __OFADD__(result, v9);
        v11 = result + v9;
        if (v10)
        {
          goto LABEL_15;
        }

        result = v11 != 0;
        v6 += 64;
        ++v5;
        if (!--v4)
        {
          return result;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 <= SHIDWORD(a2))
  {
    v3 = HIDWORD(a2);
  }

  else
  {
    v3 = a2;
  }

  v4 = v3 - a2;
  v5 = (a2 >> 32) - a2;
  v6 = a2 - 1;
  v7 = (a2 << 6) + 64;
  while (v5)
  {
    if (SHIDWORD(a2) < a2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if (!v4)
    {
      goto LABEL_15;
    }

    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    if (*(*a3 + 16) <= ++v6)
    {
      goto LABEL_17;
    }

    --v4;
    v8 = *(*a3 + v7);
    --v5;
    v7 += 64;
    v9 = v8 == 0.0;
    v10 = __OFADD__(result, v9);
    result += v9;
    if (v10)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t Grid._tree.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _VariadicView.Tree();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Grid._tree.setter(uint64_t a1)
{
  v3 = type metadata accessor for _VariadicView.Tree();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GridLayout.init(alignment:horizontalSpacing:verticalSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t closure #1 in Grid.init(alignment:horizontalSpacing:verticalSpacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)(v8, a3, a4);
  v14 = *(v6 + 8);
  v14(v8, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
  return (v14)(v12, a3);
}

uint64_t GridRow.alignment.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static GridRow._makeView(view:inputs:)()
{
  type metadata accessor for GridRow();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t View.gridCellColumns(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  return MEMORY[0x18D00A570](&v4, a2, &type metadata for _GridCellSizeModifier, a3);
}

uint64_t View.gridCellAnchor(_:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *v5 = a3;
  *&v5[1] = a4;
  return MEMORY[0x18D00A570](v5, a1, &type metadata for _GridAnchorModifier, a2);
}

uint64_t View.gridCell(x:y:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 < result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result < 0xFFFFFFFF80000000 || a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000 || a4 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4 >= a3)
  {
    v6[0] = result;
    v6[1] = a2;
    v6[2] = a3;
    v6[3] = a4;
    return MEMORY[0x18D00A570](v6, a5, &type metadata for _GridCellRangeModifier, a6);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static _GridCellRangeModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4)
{

  return static _GridCellRangeModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _GridCellRangeModifier.CellRangeTrait and conformance _GridCellRangeModifier.CellRangeTrait);
}

uint64_t _GridCellRangeModifier.CellRangeTrait.value.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    ViewTraitCollection.init()();
  }

  else
  {
    v15 = *AGGraphGetValue();
  }

  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = AGGraphGetValue();
  v7 = *(v6 + 8);
  v8 = *(v6 + 12);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  v9 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[24 * v11];
  *(v12 + 4) = v4 | (v7 << 32);
  *(v12 + 5) = v5 | (v8 << 32);
  v12[48] = 0;
  result = ViewTraitCollection.subscript.setter();
  *a2 = v15;
  return result;
}

uint64_t static _GridCellSizeModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4)
{

  return static _GridCellRangeModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _GridCellSizeModifier.MergedCellTrait and conformance _GridCellSizeModifier.MergedCellTrait);
}

uint64_t _GridCellSizeModifier.MergedCellTrait.update(data:)(uint64_t *a1)
{
  v2 = 0;
  v3 = *AGGraphGetValue();
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = 1;
  do
  {
    if (v5 + v6 == 1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 + 1, 1, v4);
        v4 = result;
      }

      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 24 * v13;
      *(v14 + 32) = v3;
      v11 = v14 + 32;
      goto LABEL_13;
    }

    v7 = *(v4 + v2 + 48) & 0xE0;
    --v6;
    v2 += 24;
  }

  while (v7 != 64);
  v8 = *(v4 + v2 + 8);
  v9 = v3 * v8;
  if ((v3 * v8) >> 64 == (v3 * v8) >> 63)
  {
    v3 = -v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  v4 = result;
LABEL_6:
  if (v3 < *(v4 + 16))
  {
    *(v4 + v2 + 8) = v9;
    v11 = v4 + v2 + 8;
LABEL_13:
    *(v11 + 8) = 0;
    *(v11 + 16) = 64;
    *a1 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static _GridAnchorModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t static _GridAnchorModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4)
{

  return static _GridCellRangeModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _GridAnchorModifier.AnchoredCellTrait and conformance _GridAnchorModifier.AnchoredCellTrait);
}

uint64_t _GridAnchorModifier.AnchoredCellTrait.value.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    ViewTraitCollection.init()();
  }

  else
  {
    v10 = *AGGraphGetValue();
  }

  v8 = *AGGraphGetValue();
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  v3 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[24 * v5];
  *(v6 + 2) = v8;
  v6[48] = 96;
  result = ViewTraitCollection.subscript.setter();
  *a2 = v10;
  return result;
}

uint64_t static _GridAlignmentModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4)
{

  return static _GridCellRangeModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _GridAlignmentModifier.AlignedCellTrait and conformance _GridAlignmentModifier.AlignedCellTrait);
}

uint64_t _GridAlignmentModifier.AlignedCellTrait.update(data:)(uint64_t *a1)
{
  v2 = *AGGraphGetValue();
  AlignmentKey.id.getter();
  if (v2)
  {
    v3 = VerticalAlignment.init(_:)();
    v4 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v7 = *(v4 + 16);
    v10 = *(v4 + 24);
    v8 = v7 + 1;
    if (v7 >= v10 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1, v4);
      v4 = result;
    }

    v9 = -96;
  }

  else
  {
    v3 = HorizontalAlignment.init(_:)();
    v4 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
      v4 = result;
    }

    v9 = 0x80;
  }

  *(v4 + 16) = v8;
  v11 = v4 + 24 * v7;
  *(v11 + 32) = v3;
  *(v11 + 40) = 0;
  *(v11 + 48) = v9;
  *a1 = v4;
  return result;
}

uint64_t static _GridUnsizedAxesModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4)
{

  return static _GridCellRangeModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _GridUnsizedAxesModifier.UnsizedAxesCellTrait and conformance _GridUnsizedAxesModifier.UnsizedAxesCellTrait);
}

uint64_t static _GridCellRangeModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  outlined init with copy of _ViewListInputs(a2, v19);
  v10 = _ViewListInputs.traits.getter();
  v11 = *MEMORY[0x1E698D3F8];
  if ((v10 & 0x100000000) == 0)
  {
    v11 = v10;
  }

  v17 = __PAIR64__(v11, v9);
  a5();
  a6();
  Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v17) = 0;
  v12 = _ViewListInputs.traits.setter();
  if (v20)
  {
    v17 = v20;
    v18 = v21 & 1;
    v20 = 0;
    v21 = 0;
    specialized Set._Variant.insert(_:)(&v16, &type metadata for GridMetadata);
    v13 = v17;
    v14 = v18;

    v20 = v13;
    v21 = v14;
  }

  a3(v12, v19);
  return outlined destroy of _ViewListInputs(v19);
}

uint64_t _GridCellSizeModifier.MergedCellTrait.value.getter@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *, uint64_t)@<X1>, void *a3@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    ViewTraitCollection.init()();
  }

  else
  {
    v8 = *AGGraphGetValue();
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  a2(v7, a1);
  result = ViewTraitCollection.subscript.setter();
  *a3 = v8;
  return result;
}

uint64_t _GridUnsizedAxesModifier.UnsizedAxesCellTrait.update(data:)(uint64_t *a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = 1;
  do
  {
    if (*(*a1 + 16) + v4 == 1)
    {
      v11 = *AGGraphGetValue();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
        v3 = result;
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 16) = v13 + 1;
      v14 = v3 + 24 * v13;
      *(v14 + 32) = v11;
      v10 = v14 + 32;
      goto LABEL_13;
    }

    v5 = *(v3 + v2 + 48) & 0xE0;
    --v4;
    v2 += 24;
  }

  while (v5 != 192);
  v6 = *(v3 + v2 + 8);
  v7 = *AGGraphGetValue();
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = -v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  if (v9 < *(v3 + 16))
  {
    *(v3 + v2 + 8) = (v7 | v6);
    v10 = v3 + v2 + 8;
LABEL_13:
    *(v10 + 8) = 0;
    *(v10 + 16) = -64;
    *a1 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t GridLayout.alignment.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t GridLayout.horizontalSpacing.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t GridLayout.verticalSpacing.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t GridLayout.makeCache(subviews:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  *(a2 + 72) = 0x7FF8000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v8 = MEMORY[0x1E69E7CC0];
  *(a2 + 104) = MEMORY[0x1E69E7CC0];
  *(a2 + 112) = v8;
  *(a2 + 120) = v8;
  *(a2 + 128) = v8;
  v9 = MEMORY[0x1E69E7CC8];
  *(a2 + 136) = v8;
  *(a2 + 144) = v9;
  v10 = *v2;
  v11 = v2[1];
  *(a2 + 25) = *(v2 + 25);
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;

  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

uint64_t GridLayout.updateCache(_:subviews:)(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v8;
  *(a1 + 25) = *(v2 + 25);

  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 65) = v7;
  *(a1 + 88) = 0x7FF8000000000000;
  *(a1 + 96) = 0;
  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

uint64_t GridLayout.spacing(subviews:cache:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  v27 = *(a1 + 96);
  v28 = v3;
  v5 = *(a1 + 112);
  v29 = *(a1 + 128);
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  v23 = *(a1 + 32);
  v24 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v9;
  v10 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v10;
  v18 = v27;
  v19 = v5;
  v20 = *(a1 + 128);
  v14 = v23;
  v15 = v8;
  v16 = v25;
  v17 = v4;
  v30 = *(a1 + 144);
  v21 = *(a1 + 144);
  v12 = v22[0];
  v13 = v7;
  outlined init with copy of GridLayout.Cache(v22, v31);
  GridLayout.Cache.spacing()(a2);
  v31[6] = v18;
  v31[7] = v19;
  v31[8] = v20;
  v32 = v21;
  v31[2] = v14;
  v31[3] = v15;
  v31[4] = v16;
  v31[5] = v17;
  v31[0] = v12;
  v31[1] = v13;
  return outlined destroy of GridLayout.Cache(v31);
}

uint64_t GridLayout.Cache.spacing()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1[13] + 16);
  if (v2 && (v3 = v1[14], (v4 = *(v3 + 16)) != 0))
  {
    v18 = v1[13];
    v5 = v1[18];
    result = ViewSpacing.init()();
    v7 = 0;
    v20 = (*(v3 + 16) << 32) - 0x100000000;
    do
    {
      if (*(v5 + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
        if (v8)
        {
          LayoutSubviews.subscript.getter();
          LayoutSubview.spacing.getter();
          v9 = v21;
          if (v23 != 2)
          {
            v9 = v23;
          }

          v23 = v9;
          AbsoluteEdge.Set.init(_:layoutDirection:)();

          Spacing.incorporate(_:of:)();
        }

        if (*(v5 + 16))
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v7 | v20);
          if (v10)
          {
            LayoutSubviews.subscript.getter();
            LayoutSubview.spacing.getter();
            v11 = v21;
            if (v23 != 2)
            {
              v11 = v23;
            }

            v23 = v11;
            AbsoluteEdge.Set.init(_:layoutDirection:)();

            Spacing.incorporate(_:of:)();
          }
        }
      }

      ++v7;
    }

    while (v2 != v7);
    v12 = 0;
    v13 = (*(v18 + 16) - 1);
    do
    {
      if (*(v5 + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if (v14)
        {
          LayoutSubviews.subscript.getter();
          LayoutSubview.spacing.getter();
          v15 = v21;
          if (v23 != 2)
          {
            v15 = v23;
          }

          v23 = v15;
          AbsoluteEdge.Set.init(_:layoutDirection:)();

          Spacing.incorporate(_:of:)();
        }

        if (*(v5 + 16))
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
          if (v16)
          {
            LayoutSubviews.subscript.getter();
            LayoutSubview.spacing.getter();
            v17 = v21;
            if (v23 != 2)
            {
              v17 = v23;
            }

            v23 = v17;
            AbsoluteEdge.Set.init(_:layoutDirection:)();

            Spacing.incorporate(_:of:)();
          }
        }
      }

      v13 += 0x100000000;
      v12 += 0x100000000;
      --v4;
    }

    while (v4);
    *a1 = v22;
    *(a1 + 8) = v23;
  }

  else
  {

    return MEMORY[0x1EEDDD780]();
  }

  return result;
}

double GridLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(v20[0]) = a2 & 1;
  LOBYTE(v18[0]) = a4 & 1;
  GridLayout.Cache.setProposal(_:)(a1, a2 & 1, a3, a4 & 1);
  v7 = *(a6 + 112);
  v18[6] = *(a6 + 96);
  v18[7] = v7;
  v18[8] = *(a6 + 128);
  v19 = *(a6 + 144);
  v8 = *(a6 + 48);
  v18[2] = *(a6 + 32);
  v18[3] = v8;
  v9 = *(a6 + 80);
  v18[4] = *(a6 + 64);
  v18[5] = v9;
  v10 = *(a6 + 16);
  v18[0] = *a6;
  v18[1] = v10;
  *&v11 = *&GridLayout.Cache.size()();
  v12 = *(a6 + 112);
  v20[6] = *(a6 + 96);
  v20[7] = v12;
  v20[8] = *(a6 + 128);
  v21 = *(a6 + 144);
  v13 = *(a6 + 48);
  v20[2] = *(a6 + 32);
  v20[3] = v13;
  v14 = *(a6 + 80);
  v20[4] = *(a6 + 64);
  v20[5] = v14;
  v15 = *(a6 + 16);
  v20[0] = *a6;
  v20[1] = v15;
  outlined init with copy of GridLayout.Cache(v18, v17);
  outlined destroy of GridLayout.Cache(v20);
  return v11;
}

uint64_t GridLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v39[0]) = a2 & 1;
  LOBYTE(v30[0]) = a4 & 1;
  GridLayout.Cache.setProposal(_:)(a1, a2 & 1, a3, a4 & 1);
  v11 = *(a8 + 112);
  v12 = *(a8 + 80);
  v35 = *(a8 + 96);
  v36 = v11;
  v13 = *(a8 + 112);
  v37 = *(a8 + 128);
  v14 = *(a8 + 48);
  v15 = *(a8 + 16);
  v31 = *(a8 + 32);
  v32 = v14;
  v16 = *(a8 + 48);
  v17 = *(a8 + 80);
  v33 = *(a8 + 64);
  v34 = v17;
  v18 = *(a8 + 16);
  v30[0] = *a8;
  v30[1] = v18;
  v26 = v35;
  v27 = v13;
  v28 = *(a8 + 128);
  v22 = v31;
  v23 = v16;
  v24 = v33;
  v25 = v12;
  v38 = *(a8 + 144);
  v29 = *(a8 + 144);
  v20 = v30[0];
  v21 = v15;
  outlined init with copy of GridLayout.Cache(v30, v39);
  GridLayout.Cache.placeSubviews(at:)(__PAIR128__(*&a6, *&a5));
  v39[6] = v26;
  v39[7] = v27;
  v39[8] = v28;
  v40 = v29;
  v39[2] = v22;
  v39[3] = v23;
  v39[4] = v24;
  v39[5] = v25;
  v39[0] = v20;
  v39[1] = v21;
  return outlined destroy of GridLayout.Cache(v39);
}

uint64_t GridLayout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v28) = a3 & 1;
  v24[0] = a5 & 1;
  GridLayout.Cache.setProposal(_:)(a2, a3 & 1, a4, a5 & 1);
  v11 = *(a8 + 112);
  v34 = *(a8 + 96);
  v35 = v11;
  v36 = *(a8 + 128);
  v37 = *(a8 + 144);
  v12 = *(a8 + 48);
  v30 = *(a8 + 32);
  v31 = v12;
  v13 = *(a8 + 80);
  v32 = *(a8 + 64);
  v33 = v13;
  v14 = *(a8 + 16);
  v28 = *a8;
  v29 = v14;
  AlignmentKey.id.getter();
  v15 = *(&v36 + 1);
  v16 = swift_allocObject();
  v17 = v35;
  *(v16 + 120) = v34;
  *(v16 + 136) = v17;
  *(v16 + 152) = v36;
  v18 = v31;
  *(v16 + 56) = v30;
  *(v16 + 72) = v18;
  v19 = v33;
  *(v16 + 88) = v32;
  *(v16 + 104) = v19;
  v20 = v29;
  *(v16 + 24) = v28;
  *(v16 + 16) = a1;
  *(v16 + 168) = v37;
  *(v16 + 40) = v20;
  v25 = v15;
  v26 = partial apply for closure #1 in GridLayout.Cache.alignment(of:);
  v27 = v16;
  outlined init with copy of GridLayout.Cache(&v28, v24);
  type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>();
  lazy protocol witness table accessor for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>();
  v21 = COERCE_DOUBLE(static AlignmentID.combineExplicit<A>(_:)());
  LOBYTE(a8) = v22;

  if (a8)
  {
    *&result = v21;
  }

  else
  {
    *&result = v21 + a6;
  }

  return result;
}

uint64_t GridLayout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  LOBYTE(v29) = a3 & 1;
  v25[0] = a5 & 1;
  GridLayout.Cache.setProposal(_:)(a2, a3 & 1, a4, a5 & 1);
  v12 = *(a9 + 112);
  v35 = *(a9 + 96);
  v36 = v12;
  v37 = *(a9 + 128);
  v38 = *(a9 + 144);
  v13 = *(a9 + 48);
  v31 = *(a9 + 32);
  v32 = v13;
  v14 = *(a9 + 80);
  v33 = *(a9 + 64);
  v34 = v14;
  v15 = *(a9 + 16);
  v29 = *a9;
  v30 = v15;
  AlignmentKey.id.getter();
  v16 = *(&v37 + 1);
  v17 = swift_allocObject();
  v18 = v36;
  *(v17 + 120) = v35;
  *(v17 + 136) = v18;
  *(v17 + 152) = v37;
  v19 = v32;
  *(v17 + 56) = v31;
  *(v17 + 72) = v19;
  v20 = v34;
  *(v17 + 88) = v33;
  *(v17 + 104) = v20;
  v21 = v30;
  *(v17 + 24) = v29;
  *(v17 + 16) = a1;
  *(v17 + 168) = v38;
  *(v17 + 40) = v21;
  v26 = v16;
  v27 = closure #1 in GridLayout.Cache.alignment(of:)partial apply;
  v28 = v17;
  outlined init with copy of GridLayout.Cache(&v29, v25);
  type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>();
  lazy protocol witness table accessor for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>();
  v22 = COERCE_DOUBLE(static AlignmentID.combineExplicit<A>(_:)());
  LOBYTE(a9) = v23;

  if (a9)
  {
    *&result = v22;
  }

  else
  {
    *&result = v22 + a7;
  }

  return result;
}

uint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance GridLayout@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  v27 = *(a1 + 96);
  v28 = v3;
  v5 = *(a1 + 112);
  v29 = *(a1 + 128);
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  v23 = *(a1 + 32);
  v24 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v9;
  v10 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v10;
  v18 = v27;
  v19 = v5;
  v20 = *(a1 + 128);
  v14 = v23;
  v15 = v8;
  v16 = v25;
  v17 = v4;
  v30 = *(a1 + 144);
  v21 = *(a1 + 144);
  v12 = v22[0];
  v13 = v7;
  outlined init with copy of GridLayout.Cache(v22, v31);
  GridLayout.Cache.spacing()(a2);
  v31[6] = v18;
  v31[7] = v19;
  v31[8] = v20;
  v32 = v21;
  v31[2] = v14;
  v31[3] = v15;
  v31[4] = v16;
  v31[5] = v17;
  v31[0] = v12;
  v31[1] = v13;
  return outlined destroy of GridLayout.Cache(v31);
}

__n128 _GridLayout.base.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  v4 = v1[2].n128_u64[0];
  v5 = v1[2].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u8[8] = v5;
  return result;
}

__n128 protocol witness for DerivedLayout.base.getter in conformance _GridLayout@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  v4 = v1[2].n128_u64[0];
  v5 = v1[2].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u8[8] = v5;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GridRange()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance GridRange()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GridRange()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GridRange(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[3] == a2[3];
}

uint64_t GeneralItem.order(to:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 8);
  if (v2 == v3)
  {
    v4 = *(v1 + 32);
    v5 = *(a1 + 32);
    v6 = v4 < v5;
    if (v4 == v5)
    {
      v7 = *(v1 + 40);
      v8 = *(a1 + 40);
      v6 = v7 < v8;
      if (v7 == v8)
      {
        v9 = *(v1 + 48);
        v10 = *(a1 + 48);
        v6 = v9 < v10;
        if (v9 == v10)
        {
          v11 = *(v1 + 56);
          v12 = *(a1 + 56);
          if (v11 == v12)
          {
            return 1;
          }

          else
          {
            return 2 * (v11 >= v12);
          }
        }
      }
    }
  }

  else
  {
    v6 = v3 < v2;
  }

  v14 = !v6;
  return (2 * v14);
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance GeneralItem(__int128 *a1, _OWORD *a2)
{
  v2 = a1[1];
  v8 = *a1;
  v9 = v2;
  v10[0] = a1[2];
  *(v10 + 9) = *(a1 + 41);
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v7[0] = a2[2];
  *(v7 + 9) = *(a2 + 41);
  v4 = GeneralItem.order(to:)(v6);
  if (!v4)
  {
    return 1;
  }

  if (v4 == 1)
  {
    return v8 < *&v6[0];
  }

  return 0;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance GeneralItem(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  v10[0] = a2[2];
  *(v10 + 9) = *(a2 + 41);
  v4 = GeneralItem.order(to:)(v6);
  if (!v4)
  {
    return 0;
  }

  if (v4 == 1)
  {
    return v8 >= *&v6[0];
  }

  return 1;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance GeneralItem(__int128 *a1, _OWORD *a2)
{
  v2 = a1[1];
  v8 = *a1;
  v9 = v2;
  v10[0] = a1[2];
  *(v10 + 9) = *(a1 + 41);
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v7[0] = a2[2];
  *(v7 + 9) = *(a2 + 41);
  v4 = GeneralItem.order(to:)(v6);
  if (!v4)
  {
    return 0;
  }

  if (v4 == 1)
  {
    return v8 >= *&v6[0];
  }

  return 1;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance GeneralItem(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  v10[0] = a2[2];
  *(v10 + 9) = *(a2 + 41);
  v4 = GeneralItem.order(to:)(v6);
  if (!v4)
  {
    return 1;
  }

  if (v4 == 1)
  {
    return v8 < *&v6[0];
  }

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GeneralItem(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static GeneralItem.== infix(_:_:)(v5, v7);
}

unint64_t lazy protocol witness table accessor for type _GridCellRangeModifier.CellRangeTrait and conformance _GridCellRangeModifier.CellRangeTrait()
{
  result = lazy protocol witness table cache variable for type _GridCellRangeModifier.CellRangeTrait and conformance _GridCellRangeModifier.CellRangeTrait;
  if (!lazy protocol witness table cache variable for type _GridCellRangeModifier.CellRangeTrait and conformance _GridCellRangeModifier.CellRangeTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GridCellRangeModifier.CellRangeTrait and conformance _GridCellRangeModifier.CellRangeTrait);
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 63;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 6;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 63;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 6;
  if (v10 < v13)
  {
    v14 = v10 << 6;
    if (a4 != __src || (__src + v14) <= a4)
    {
      memmove(a4, __src, v14);
    }

    v15 = v4 + v14;
    if (v8 < 64 || v6 >= v5)
    {
LABEL_57:
      v35 = v7;
      goto LABEL_59;
    }

    while (1)
    {
      v16 = v6[1];
      v17 = v4[1];
      if (v16 == v17)
      {
        v18 = v6[4];
        v19 = v4[4];
        v20 = v18 < v19;
        if (v18 == v19 && (v21 = v6[5], v22 = v4[5], v20 = v21 < v22, v21 == v22) && (v23 = v6[6], v24 = v4[6], v20 = v23 < v24, v23 == v24))
        {
          v25 = *(v6 + 56);
          v26 = *(v4 + 56);
          if (v25 == v26)
          {
            if (*v6 >= *v4)
            {
              goto LABEL_24;
            }
          }

          else if (v25 >= v26)
          {
LABEL_24:
            v27 = v4;
            v28 = v7 == v4;
            v4 += 8;
            if (v28)
            {
              goto LABEL_26;
            }

LABEL_25:
            v29 = *v27;
            v30 = *(v27 + 1);
            v31 = *(v27 + 3);
            *(v7 + 2) = *(v27 + 2);
            *(v7 + 3) = v31;
            *v7 = v29;
            *(v7 + 1) = v30;
            goto LABEL_26;
          }
        }

        else if (!v20)
        {
          goto LABEL_24;
        }
      }

      else if (v17 >= v16)
      {
        goto LABEL_24;
      }

      v27 = v6;
      v28 = v7 == v6;
      v6 += 8;
      if (!v28)
      {
        goto LABEL_25;
      }

LABEL_26:
      v7 += 8;
      if (v4 >= v15 || v6 >= v5)
      {
        goto LABEL_57;
      }
    }
  }

  v32 = v13 << 6;
  if (a4 != __dst || (__dst + v32) <= a4)
  {
    memmove(a4, __dst, v13 << 6);
  }

  v15 = v4 + v32;
  if (v11 < 64 || v6 <= v7)
  {
LABEL_58:
    v35 = v6;
    goto LABEL_59;
  }

  do
  {
    v33 = 0;
    v34 = v15;
    v35 = (v6 - 8);
    while (1)
    {
      v36 = &v34[v33];
      v37 = *&v34[v33 - 56];
      v38 = *(v6 - 7);
      if (v37 == v38)
      {
        break;
      }

      if (v38 < v37)
      {
        goto LABEL_52;
      }

LABEL_49:
      if (&v5[v33 / 8] != v36)
      {
        v48 = &v5[v33 / 8 - 8];
        v49 = *&v34[v33 - 64];
        v50 = *&v34[v33 - 48];
        v51 = *&v34[v33 - 16];
        *(v48 + 2) = *&v34[v33 - 32];
        *(v48 + 3) = v51;
        *v48 = v49;
        *(v48 + 1) = v50;
      }

      v33 -= 64;
      v15 = &v34[v33];
      if (&v34[v33] <= v4)
      {
        goto LABEL_58;
      }
    }

    v39 = *(v36 - 4);
    v40 = *(v6 - 4);
    v41 = v39 < v40;
    if (v39 != v40 || (v42 = *(v36 - 3), v43 = *(v6 - 3), v41 = v42 < v43, v42 != v43) || (v44 = *(v36 - 2), v45 = *(v6 - 2), v41 = v44 < v45, v44 != v45))
    {
      if (v41)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v46 = *(v36 - 8);
    v47 = *(v6 - 8);
    if (v46 == v47)
    {
      if (*&v34[v33 - 64] < *(v6 - 8))
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    if (v46 >= v47)
    {
      goto LABEL_49;
    }

LABEL_52:
    v52 = &v5[v33 / 8];
    v5 = &v5[v33 / 8 - 8];
    if (v52 != v6)
    {
      v53 = *v35;
      v54 = *(v6 - 3);
      v55 = *(v6 - 1);
      *(v5 + 2) = *(v6 - 2);
      *(v5 + 3) = v55;
      *v5 = v53;
      *(v5 + 1) = v54;
    }

    v15 = &v34[v33];
    if (&v34[v33] <= v4)
    {
      break;
    }

    v6 -= 8;
  }

  while (v35 > v7);
  v15 = &v34[v33];
LABEL_59:
  v56 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v35 != v4 || v35 >= v4 + v56)
  {
    memmove(v35, v4, v56);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type _GridCellSizeModifier.MergedCellTrait and conformance _GridCellSizeModifier.MergedCellTrait()
{
  result = lazy protocol witness table cache variable for type _GridCellSizeModifier.MergedCellTrait and conformance _GridCellSizeModifier.MergedCellTrait;
  if (!lazy protocol witness table cache variable for type _GridCellSizeModifier.MergedCellTrait and conformance _GridCellSizeModifier.MergedCellTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GridCellSizeModifier.MergedCellTrait and conformance _GridCellSizeModifier.MergedCellTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GridAnchorModifier.AnchoredCellTrait and conformance _GridAnchorModifier.AnchoredCellTrait()
{
  result = lazy protocol witness table cache variable for type _GridAnchorModifier.AnchoredCellTrait and conformance _GridAnchorModifier.AnchoredCellTrait;
  if (!lazy protocol witness table cache variable for type _GridAnchorModifier.AnchoredCellTrait and conformance _GridAnchorModifier.AnchoredCellTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GridAnchorModifier.AnchoredCellTrait and conformance _GridAnchorModifier.AnchoredCellTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GridAlignmentModifier.AlignedCellTrait and conformance _GridAlignmentModifier.AlignedCellTrait()
{
  result = lazy protocol witness table cache variable for type _GridAlignmentModifier.AlignedCellTrait and conformance _GridAlignmentModifier.AlignedCellTrait;
  if (!lazy protocol witness table cache variable for type _GridAlignmentModifier.AlignedCellTrait and conformance _GridAlignmentModifier.AlignedCellTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GridAlignmentModifier.AlignedCellTrait and conformance _GridAlignmentModifier.AlignedCellTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GridUnsizedAxesModifier.UnsizedAxesCellTrait and conformance _GridUnsizedAxesModifier.UnsizedAxesCellTrait()
{
  result = lazy protocol witness table cache variable for type _GridUnsizedAxesModifier.UnsizedAxesCellTrait and conformance _GridUnsizedAxesModifier.UnsizedAxesCellTrait;
  if (!lazy protocol witness table cache variable for type _GridUnsizedAxesModifier.UnsizedAxesCellTrait and conformance _GridUnsizedAxesModifier.UnsizedAxesCellTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GridUnsizedAxesModifier.UnsizedAxesCellTrait and conformance _GridUnsizedAxesModifier.UnsizedAxesCellTrait);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _GridLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _GridLayout and conformance _GridLayout();
  *(a1 + 8) = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for Grid(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-42 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v9 = a2[1];
    *a1 = *a2;
    a1[1] = v9;
    *(a1 + 25) = *(a2 + 25);
    (*(v4 + 16))((a1 + v5 + 41) & ~v5, (a2 + v5 + 41) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

uint64_t assignWithCopy for Grid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((*(v6 + 80) + 41 + a1) & ~*(v6 + 80), (*(v6 + 80) + 41 + a2) & ~*(v6 + 80));
  return a1;
}

_OWORD *initializeWithTake for Grid(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *(a1 + 25) = *(a2 + 25);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 32))((a1 + *(v5 + 80) + 41) & ~*(v5 + 80), (a2 + *(v5 + 80) + 41) & ~*(v5 + 80));
  return a1;
}

uint64_t assignWithTake for Grid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((*(v4 + 80) + 41 + a1) & ~*(v4 + 80), (*(v4 + 80) + 41 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for Grid(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 41) & ~v6);
  }

  v8 = ((v6 + 41) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 41) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for Grid(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 41) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 41] & ~v8;

  v18(v19);
}

void *initializeBufferWithCopyOfBuffer for GridRow(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-10 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    (*(v4 + 16))((a1 + v5 + 9) & ~v5, (a2 + v5 + 9) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

uint64_t assignWithTake for GridRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _GridCellSizeModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t assignWithCopy for GridLayout.Cache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  LOBYTE(v5) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  *(a1 + 65) = *(a2 + 65);
  v6 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v6;
  v7 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t getEnumTagSinglePayload for GridLayout.Cache(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GridLayout.Cache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for GridLayout.Cache.Cell(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for GridLayout.Cache.Cell(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for GridMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 17))
  {
    return (*a1 + 122);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GridMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 16) = 0;
    *result = a2 - 122;
    *(result + 8) = 0;
    if (a3 >= 0x7A)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

BOOL specialized static GeneralItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && (*(a1 + 40) == *(a2 + 40) ? (v2 = *(a1 + 48) == *(a2 + 48)) : (v2 = 0), v2))
  {
    return *(a1 + 56) == *(a2 + 56);
  }

  else
  {
    return 0;
  }
}

void specialized _VariadicView_ViewRoot<>.body(children:)()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000010, 0x800000018CD565C0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized _VariadicView_ViewRoot<>.body(children:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](a2, a3);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for GeneralItem(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GeneralItem(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type GridRange and conformance GridRange()
{
  result = lazy protocol witness table cache variable for type GridRange and conformance GridRange;
  if (!lazy protocol witness table cache variable for type GridRange and conformance GridRange)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridRange and conformance GridRange);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeneralItem and conformance GeneralItem()
{
  result = lazy protocol witness table cache variable for type GeneralItem and conformance GeneralItem;
  if (!lazy protocol witness table cache variable for type GeneralItem and conformance GeneralItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralItem and conformance GeneralItem);
  }

  return result;
}

uint64_t View.arrayInteractionRepresentable<A, B>(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[2] = a8;
  v19[0] = a5;
  v19[1] = a6;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CoreInteractionRepresentableAdaptor();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v19 - v16;
  (*(v10 + 16))(v12, a1, a4, v15);
  (*(v10 + 32))(v17, v12, a4);
  swift_getWitnessTable();
  View.coreInteractionRepresentable<A, B>(_:id:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t _s7SwiftUI34SearchEnvironmentTransformModifierV11_makeInputs8modifier6inputsyAA11_GraphValueVyACyxGG_AA01_kH0VztFZAA0c9SelectionF0V0E0V_Tt1B5()
{
  type metadata accessor for SearchSelectionModifier.Transform(0);
  AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  type metadata accessor for SearchEnvironmentStorage(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v4 = v3[5];
  type metadata accessor for SearchBoundProperty<AttributedString>();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v3[6];
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = (v1 + v3[7]);
  *(v8 + 28) = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version) = 0;
  ObservationRegistrar.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment(0);
  lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment, type metadata accessor for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment);
  Attribute.init<A>(body:value:flags:update:)();

  return _GraphInputs.environment.setter();
}

uint64_t _s7SwiftUI34SearchEnvironmentTransformModifierV11_makeInputs8modifier6inputsyAA11_GraphValueVyACyxGG_AA01_kH0VztFZAA0c13PopoverAnchorF033_F5D9997FD051E2FDEC8F3E85E3D4B7EBLLV0E0V_Tt1B5()
{
  AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  type metadata accessor for SearchEnvironmentStorage(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v4 = v3[5];
  type metadata accessor for SearchBoundProperty<AttributedString>();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v3[6];
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = (v1 + v3[7]);
  *(v8 + 28) = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version) = 0;
  ObservationRegistrar.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchField<SearchFieldConfiguration.Control>(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment, &type metadata for SearchPopoverAnchorModifier.Transform, &protocol witness table for SearchPopoverAnchorModifier.Transform, type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment);
  lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment();
  Attribute.init<A>(body:value:flags:update:)();

  return _GraphInputs.environment.setter();
}

uint64_t _s7SwiftUI34SearchEnvironmentTransformModifierV11_makeInputs8modifier6inputsyAA11_GraphValueVyACyxGG_AA01_kH0VztFZAA0c4TexteF033_E1458373A4858EAD6466FEBDCBAECB56LLV0E0V_Tt1B5()
{
  type metadata accessor for SearchTextTransformModifier.Transform(0);
  AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  type metadata accessor for SearchEnvironmentStorage(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v4 = v3[5];
  type metadata accessor for SearchBoundProperty<AttributedString>();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v3[6];
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = (v1 + v3[7]);
  *(v8 + 28) = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version) = 0;
  ObservationRegistrar.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0);
  lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment, type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment);
  Attribute.init<A>(body:value:flags:update:)();

  return _GraphInputs.environment.setter();
}

uint64_t _s7SwiftUI34SearchEnvironmentTransformModifierV11_makeInputs8modifier6inputsyAA11_GraphValueVyACyxGG_AA01_kH0VztFZAA0c5StatedeF033_366134F59E114783B313E1ABD2826F8FLLV0E0V_Tt1B5()
{
  type metadata accessor for SearchStateEnvironmentTransformModifier.Transform(0);
  AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  type metadata accessor for SearchEnvironmentStorage(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v4 = v3[5];
  type metadata accessor for SearchBoundProperty<AttributedString>();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v3[6];
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = (v1 + v3[7]);
  *(v8 + 28) = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version) = 0;
  ObservationRegistrar.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment(0);
  lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment, type metadata accessor for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment);
  Attribute.init<A>(body:value:flags:update:)();

  return _GraphInputs.environment.setter();
}

uint64_t SearchField<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 2;
  v11[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v11 + 1) = 2;
  *(v11 + 1) = 0;
  v11[8] = 1;
  AttributedString.init()();
  v11[*(v9 + 48)] = 0;
  v12 = *(v9 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v13 = &v11[v12];
  v14 = byte_1EAB095CC;
  *v13 = static SearchFocusUpdate.empty;
  v13[4] = v14;
  type metadata accessor for State<SearchFieldState>(0);
  *(a2 + *(v15 + 28)) = 0;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v11, a2, type metadata accessor for SearchFieldState);
  type metadata accessor for StateOrBinding<SearchFieldState>(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SearchField<SearchFieldConfiguration.Control>(0, &lazy cache variable for type metadata for SearchField<SearchFieldConfiguration.Control>, &type metadata for SearchFieldConfiguration.Control, &protocol witness table for SearchFieldConfiguration.Control, type metadata accessor for SearchField);
  v17 = a2 + *(v16 + 36);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(a2 + *(v16 + 44)) = 0;
  outlined destroy of StateOrBinding<SearchFieldState>(a2, type metadata accessor for StateOrBinding<SearchFieldState>);
  outlined init with copy of SearchBoundProperty<AttributedString>(a1, a2, type metadata accessor for Binding<SearchFieldState>);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SearchBoundProperty<AttributedString>(a1, v7, type metadata accessor for Binding<SearchFieldState>);
  v22[1] = swift_getKeyPath();
  v18 = *(v7 + *(v5 + 32)) != 2;
  type metadata accessor for WritableKeyPath<SearchFieldState, Bool>(0);
  lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type WritableKeyPath<SearchFieldState, Bool> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<SearchFieldState, Bool>);
  v19 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  outlined destroy of StateOrBinding<SearchFieldState>(a1, type metadata accessor for SearchFieldConfiguration);

  v20 = *v7;

  outlined destroy of StateOrBinding<SearchFieldState>(v7, type metadata accessor for Binding<SearchFieldState>);
  result = outlined consume of StateOrBinding<Bool>(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 17));
  *v17 = v20;
  *(v17 + 8) = v19;
  *(v17 + 16) = v18;
  *(v17 + 17) = 1;
  return result;
}

void type metadata accessor for StaticSourceWriter<SearchFieldConfiguration.Suggestions, _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>>()
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<SearchFieldConfiguration.Suggestions, _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>>)
  {
    type metadata accessor for _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>();
    lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions();
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>);
    v0 = type metadata accessor for StaticSourceWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticSourceWriter<SearchFieldConfiguration.Suggestions, _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>)
  {
    type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>? and conformance <A> A?, type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?, lazy protocol witness table accessor for type ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>);
    }
  }
}

void type metadata accessor for TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>()
{
  if (!lazy cache variable for type metadata for TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>? and conformance <A> A?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for TextInputSuggestions();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>)
  {
    type metadata accessor for ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>();
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>, &type metadata for SearchSuggestionsPlacement, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>);
    }
  }
}

void type metadata accessor for ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>)
  {
    type metadata accessor for SearchTextTransformModifier(255);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>();
    lazy protocol witness table accessor for type ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>(255);
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?> and conformance TextInputSuggestions<A>, type metadata accessor for TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t SearchFieldState.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchFieldState(0) + 36);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for SearchFieldState.text : SearchFieldState@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchFieldState(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<AttributedString>(a1, v7, type metadata accessor for SearchFieldState);
  v8 = *(v5 + 44);
  v9 = type metadata accessor for AttributedString();
  return (*(*(v9 - 8) + 32))(a2, &v7[v8], v9);
}

uint64_t key path setter for SearchFieldState.text : SearchFieldState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4, v9);
  v13 = *(type metadata accessor for SearchFieldState(0) + 36);
  (v12)(v7, a2 + v13, v4);
  (*(v5 + 24))(a2 + v13, v11, v4);
  SearchFieldState.textDidChange(from:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  return (v14)(v11, v4);
}

uint64_t SearchFieldState.hasSuggestions.setter(uint64_t result)
{
  v1[2] = result;
  if (result == 2)
  {
    v2 = v1[3];
    if (v2 == 2)
    {
      return result;
    }

    if ((v2 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((result & 1) == 0)
  {
LABEL_4:
    if (*v1 == 2)
    {
      return result;
    }

    v3 = 0;
    goto LABEL_9;
  }

  if (*v1 == 2)
  {
    return result;
  }

  v3 = 1;
LABEL_9:
  *v1 = v3;
  return result;
}

uint64_t default argument 0 of SearchField.init(state:isPresented:control:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 1) = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(a1 + 2) = 2;
  *(a1 + 4) = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for SearchFieldState(0);
  result = AttributedString.init()();
  *(a1 + *(v2 + 40)) = 0;
  v4 = *(v2 + 44);
  if (one-time initialization token for empty != -1)
  {
    result = swift_once();
  }

  v5 = a1 + v4;
  v6 = byte_1EAB095CC;
  *v5 = static SearchFocusUpdate.empty;
  *(v5 + 4) = v6;
  return result;
}

uint64_t SearchField.init(state:isPresented:control:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  property wrapper backing initializer of SearchField.state(a1, a5);
  v9 = type metadata accessor for SearchField();
  v10 = a5 + v9[9];
  *v10 = a2 & 1;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  result = (*(*(a4 - 8) + 32))(a5 + v9[10], a3, a4);
  *(a5 + v9[11]) = 0;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SearchTextTransformModifier.TransformModifier@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>, type metadata accessor for SearchTextTransformModifier.Transform, &protocol witness table for SearchTextTransformModifier.Transform, type metadata accessor for SearchEnvironmentTransformModifier);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance SearchTextTransformModifier.TransformModifier@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchBoundProperty<AttributedString>();
  Value = AGGraphGetValue();
  return outlined init with copy of SearchBoundProperty<AttributedString>(Value, a1, type metadata accessor for SearchBoundProperty<AttributedString>);
}

uint64_t protocol witness for SearchEnvironmentTransform.update(properties:) in conformance SearchTextTransformModifier.Transform(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for SearchEnvironmentStorage.AllProperties(0) + 20);
  v3 = *(type metadata accessor for SearchEnvironmentStorage.BoundProperties(0) + 20);
  outlined destroy of StateOrBinding<SearchFieldState>(v2 + v3, type metadata accessor for SearchBoundProperty<AttributedString>?);
  outlined init with copy of SearchBoundProperty<AttributedString>(v1, v2 + v3, type metadata accessor for SearchBoundProperty<AttributedString>);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v5 = *(*(v4 - 8) + 56);

  return v5(v2 + v3, 0, 1, v4);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SearchTextTransformModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SearchTextTransformModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = specialized static SearchTextTransformModifier._makeInputs(modifier:inputs:)();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

void SearchFieldState.isSearching.setter(char a1)
{
  v3 = a1 & 1;
  v4 = type metadata accessor for AttributedString.CharacterView();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = *v1;
  if ((v16 != 2) != v3)
  {
    if ((a1 & 1) == 0)
    {
      *v1 = 2;
      v20 = v13;
      v25 = v13;
      AttributedString.init(stringLiteral:)();
      v26 = type metadata accessor for SearchFieldState(0);
      v21 = *(v26 + 36);
      (*(v9 + 16))(v11, &v1[v21], v20);
      (*(v9 + 24))(&v1[v21], v15, v20);
      AttributedString.characters.getter();
      AttributedString.CharacterView._count.getter();
      v22 = *(v5 + 8);
      v22(v7, v4);
      AttributedString.characters.getter();
      AttributedString.CharacterView._count.getter();
      v22(v7, v4);
      v23 = *(v9 + 8);
      v24 = v25;
      v23(v11, v25);
      v23(v15, v24);
      v19 = 0;
      if ((v1[8] & 1) == 0)
      {
        *(v1 + 1) = 0;
        v1[8] = 1;
      }

      v18 = v26;
      goto LABEL_12;
    }

    if (v16 == 2 || (v16 & 1) == 0)
    {
      v17 = v1[2];
      if (v17 == 2)
      {
        v17 = v1[3];
        if (v17 == 2)
        {
          LOBYTE(v17) = 0;
        }
      }

      *v1 = v17 & 1;
      v18 = type metadata accessor for SearchFieldState(0);
      v19 = 1;
LABEL_12:
      v1[*(v18 + 40)] = v19;
    }
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SearchState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t SearchFieldState.textDidChange(from:)()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString.CharacterView();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  v6 = AttributedString.CharacterView._count.getter();
  v7 = *(v3 + 8);
  v7(v5, v2);
  type metadata accessor for SearchFieldState(0);
  AttributedString.characters.getter();
  v8 = AttributedString.CharacterView._count.getter();
  result = (v7)(v5, v2);
  v10 = v8 - v6;
  if (__OFSUB__(v8, v6))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    v11 = __OFSUB__(0, v10);
    v10 = v6 - v8;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  if (v10 == 1 && v8 >= 1 && *v1 != 2)
  {
    v13 = v1[2];
    if (v13 != 2 || (v13 = v1[3], v13 != 2))
    {
      if (v13)
      {
        *v1 = 1;
      }
    }
  }

  return result;
}

uint64_t SearchField.init<A, B>(text:tokens:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v53 = a8;
  v54 = a7;
  v57 = a4;
  v58 = a6;
  v47 = a5;
  v55 = a2;
  v56 = a3;
  v52 = a1;
  v59 = a9;
  v49 = a11;
  v50 = a10;
  v45 = a17;
  v44 = a16;
  v43 = a15;
  v42 = a14;
  v48 = a12;
  v18 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v51 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Binding();
  v46 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  v60 = a13;
  v61 = a14;
  v62 = a15;
  v63 = a16;
  v64 = a17;
  v65 = a18;
  v24 = type metadata accessor for SearchFieldTokenControl();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v41 - v30;
  v32 = v47;
  (*(v21 + 16))(v23, v47, v20, v29);
  v33 = swift_allocObject();
  v34 = v42;
  v33[2] = a13;
  v33[3] = v34;
  v35 = v44;
  v33[4] = v43;
  v33[5] = v35;
  v33[6] = v45;
  v33[7] = a18;
  v36 = v48;
  v33[8] = v49;
  v33[9] = v36;
  v40.n128_u64[1] = v53;
  v40.n128_u64[0] = v54;
  v37 = SearchFieldTokenControl.init(text:tokens:token:prompt:)(v52, v55, v56, v57, v23, partial apply for closure #1 in SearchField.init<A, B>(text:tokens:prompt:token:), v33, v58, v31, v40, v50);
  (*(v25 + 16))(v27, v31, v24, v37);
  swift_getWitnessTable();
  v38 = v51;
  default argument 0 of SearchField.init(state:isPresented:control:)(v51);
  (*(v21 + 8))(v32, v46);
  (*(v25 + 8))(v31, v24);
  return SearchField.init(state:isPresented:control:)(v38, 0, v27, v24, v59);
}

{
  v44 = a8;
  v45 = a7;
  v47 = a4;
  v48 = a6;
  v46 = a3;
  v41 = a1;
  v42 = a2;
  v49 = a9;
  v43 = a11;
  v38 = a10;
  v37[1] = a17;
  v37[2] = a16;
  v37[3] = a15;
  v37[4] = a14;
  v39 = a12;
  v19 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v40 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v37 - v23;
  v50 = a13;
  v51 = a14;
  v52 = a15;
  v53 = a16;
  v54 = a17;
  v55 = a18;
  v25 = type metadata accessor for SearchFieldTokenControl();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v37 - v31;
  (*(v22 + 16))(v24, a5, v21, v30);
  v36.n128_u64[1] = v44;
  v36.n128_u64[0] = v45;
  v33 = SearchFieldTokenControl.init(text:tokens:token:prompt:)(v41, v42, v46, v47, v24, v43, v39, v48, v32, v36, v38);
  (*(v26 + 16))(v28, v32, v25, v33);
  swift_getWitnessTable();
  v34 = v40;
  default argument 0 of SearchField.init(state:isPresented:control:)(v40);
  (*(v22 + 8))(a5, v21);
  (*(v26 + 8))(v32, v25);
  return SearchField.init(state:isPresented:control:)(v34, 0, v28, v25, v49);
}

uint64_t closure #1 in SearchField.init<A, B>(text:tokens:prompt:token:)(uint64_t a1, void (*a2)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9 - v5;
  v7 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v7);
  a2(v6);
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

__n128 SearchFieldTokenControl.init(text:tokens:token:prompt:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __n128 a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v16 = type metadata accessor for SearchFieldTokenControl();
  v17 = v16[17];
  v18 = type metadata accessor for Binding();
  (*(*(v18 - 8) + 32))(&a9[v17], a5, v18);
  v19 = &a9[v16[18]];
  *v19 = a6;
  *(v19 + 1) = a7;
  v20 = &a9[v16[19]];
  *v20 = a8;
  result = a10;
  *(v20 + 8) = a10;
  *(v20 + 3) = a11;
  return result;
}

uint64_t SearchFieldTokenControl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v39 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(a1 + 24);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v43 = MEMORY[0x1E6981E70];
  v44 = AssociatedTypeWitness;
  v39[4] = AssociatedTypeWitness;
  v39[2] = v10;
  v39[3] = v9;
  v45 = v9;
  v46 = MEMORY[0x1E6981E60];
  v47 = v10;
  v48 = v11;
  v39[1] = v11;
  v12 = type metadata accessor for TokenField();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  v41 = v7;
  SearchFieldTokenControl.attributedText.getter(a1, v7);
  v18 = (v2 + *(a1 + 76));
  v19 = *v18;
  v20 = v18[1];
  v22 = v18[2];
  v21 = v18[3];
  v23 = *v18;
  v24 = v20;
  v25 = v22;
  v26 = v21;
  if (!v21)
  {
    v23 = static Text.System.search.getter();
    v26 = v27;
    v25 = v28;
  }

  v29 = (v3 + *(a1 + 72));
  v30 = v29[1];
  v39[0] = *v29;
  v31 = v23;
  v32 = v19;
  v33 = v24;
  v34 = v21;
  v35 = v26;
  outlined copy of Text?(v32, v20, v22, v34);

  TokenField.init(valueType:text:prompt:token:label:)(v41, v31, v33, v25 & 1, v35, v39[0], v30, v14, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v12, WitnessTable);
  v37 = *(v40 + 8);
  v37(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)(v17, v12, WitnessTable);
  return (v37)(v17, v12);
}

uint64_t SearchFieldTokenControl.attributedText.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = a1[2];
  v4 = type metadata accessor for Binding();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Binding();
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  Binding.projectedValue.getter();
  v24 = TextField.$text.getter();
  v25 = v12;
  v26 = v13;
  v27 = v14;
  Binding.zip<A>(with:)();

  (*(v5 + 8))(v7, v4);
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[7];
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v3, v15, v16, v17);
  v24 = v3;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  type metadata accessor for StringTokensToAttributedStringProjection();
  swift_getWitnessTable();
  v18 = v21;
  Binding.projecting<A>(_:)();
  return (*(v22 + 8))(v11, v18);
}

uint64_t initializeBufferWithCopyOfBuffer for SearchField(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = ((v9 + 9) & ~v9) + *(v7 + 64);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v12 = (v10 & 0xFFFFFFFFFFFFFFF8) + 24;
  v13 = v8 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  if (v11 + (v13 & (v8 + 16)) <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11 + (v13 & (v8 + 16));
  }

  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v17 | v8;
  v19 = (*(v16 + 80) | v8) & 0x100000;
  if ((v17 | v9) > 7 || v19 != 0 || *(*(v15 - 8) + 64) - ((-27 - v17 - (v14 & 0xFFFFFFFFFFFFFFF8)) | v17) > 0x18)
  {
    v22 = *a2;
    *a1 = *a2;
    a1 = v22 + ((v18 & 0xF8 ^ 0x1F8) & (v18 + 16));

    return a1;
  }

  v23 = *(a2 + v14);
  v24 = v23 - 2;
  if (v23 >= 2)
  {
    if (v14 <= 3)
    {
      v25 = v14;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *a2;
        if (v14 < 4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v25 == 3)
        {
          v26 = *a2 | (*(a2 + 2) << 16);
          if (v14 < 4)
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v26 = *a2;
        if (v14 < 4)
        {
LABEL_28:
          v23 = (v26 | (v24 << (8 * v14))) + 2;
          goto LABEL_29;
        }
      }

LABEL_26:
      v23 = v26 + 2;
      goto LABEL_29;
    }

    if (v25)
    {
      v26 = *a2;
      if (v14 < 4)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

LABEL_29:
  v59 = *(*(v6 - 8) + 64);
  v60 = *(*(v15 - 8) + 64);
  v61 = *(v15 - 8);
  v27 = ~v9;
  v58 = v14 + 1;
  if (v23 == 1)
  {
    v28 = a2 + 15;
    v30 = *a2;
    v29 = a2 + 7;
    *a1 = v30;
    v31 = a1 + 7;
    v32 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 &= 0xFFFFFFFFFFFFFFF8;
    *v32 = *v28;
    v33 = (v13 & (v28 + v9 + 8));
    v34 = (v33 + 7);
    *(v32 + 8) = *v33;
    *(v32 + 9) = v33[1];
    *(v32 + 10) = v33[2];
    *(v32 + 11) = v33[3];
    v35 = (v32 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v34 &= 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v32) = *v34;
    *(v35 + 4) = *(v34 + 4);
    *v35 = v32;
    v36 = (v35 + v9 + 5) & v27;
    v37 = (v9 + v34 + 5) & v27;
    v38 = *(v7 + 16);
    v39 = v6;

    v38(v36, v37, v39);
    *(v36 + v59) = *(v37 + v59);
    v40 = (v36 + v59) & 0xFFFFFFFFFFFFFFFCLL;
    v41 = (v37 + v59) & 0xFFFFFFFFFFFFFFFCLL;
    v42 = *(v41 + 4);
    *(v40 + 8) = *(v41 + 8);
    *(v40 + 4) = v42;
    v43 = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = *(a2 + 3);
    v31 = a1 + 7;
    v44 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = a2 + 7;
    v45 = *(v29 & 0xFFFFFFFFFFFFFFFCLL);
    *(v44 + 4) = *((v29 & 0xFFFFFFFFFFFFFFFCLL) + 4);
    *v44 = v45;
    v46 = (v44 + v9 + 5) & v27;
    v47 = ((v29 & 0xFFFFFFFFFFFFFFFCLL) + v9 + 5) & v27;
    (*(v7 + 16))(v46, v47, v6);
    *(v46 + v59) = *(v47 + v59);
    v48 = (v46 + v59) & 0xFFFFFFFFFFFFFFFCLL;
    v49 = (v47 + v59) & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *(v49 + 4);
    *(v48 + 8) = *(v49 + 8);
    *(v48 + 4) = v50;
    *((a1 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v11) & 0xFFFFFFFFFFFFFFF8);

    v43 = 0;
  }

  *(a1 + v14) = v43;
  v51 = (v31 + v58) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v29 + v58) & 0xFFFFFFFFFFFFFFF8;
  v53 = *(v52 + 17);
  if (v53 >= 2)
  {
    v53 = *v52 + 2;
  }

  v54 = ~v17;
  if (v53 == 1)
  {
    *v51 = *v52;
    *(v51 + 8) = *(v52 + 8);
    *(v51 + 16) = *(v52 + 16);

    v55 = 1;
  }

  else
  {
    v55 = 0;
    *v51 = *v52;
    *(v51 + 8) = *(v52 + 8);
  }

  *(v51 + 17) = v55;
  v56 = (v17 + 18 + v52) & v54;
  (*(v61 + 16))((v17 + 18 + v51) & v54, v56, v15);
  *(((v17 + 18 + v51) & v54) + v60) = *(v56 + v60);
  return a1;
}

uint64_t initializeWithTake for SearchField(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = ((v8 + 9) & ~v8) + v9;
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v12 = (v10 & 0xFFFFFFFFFFFFFFF8) + 24;
  v13 = v8 | 3;
  if (v11 + ((v8 + 16) & ~(v8 | 3)) <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11 + ((v8 + 16) & ~(v8 | 3));
  }

  v15 = a2[v14];
  v16 = v15 - 2;
  if (v15 < 2)
  {
    goto LABEL_20;
  }

  if (v14 <= 3)
  {
    v17 = v14;
  }

  else
  {
    v17 = 4;
  }

  if (v17 <= 1)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = *a2;
    if (v14 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v17 == 2)
  {
    v18 = *a2;
    if (v14 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v14 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v15 = v18 + 2;
      goto LABEL_20;
    }

    v18 = *a2;
    if (v14 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v15 = (v18 | (v16 << (8 * v14))) + 2;
LABEL_20:
  v19 = ~v8;
  if (v15 == 1)
  {
    *a1 = *a2;
    v20 = ~v13;
    v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = v21 + v13;
    v24 = v22 + v13;
    v25 = ((v23 + 8) & v20);
    v26 = ((v24 + 8) & v20);
    v27 = (v26 + 7);
    *v25 = *v26;
    v25[1] = v26[1];
    v25[2] = v26[2];
    v25[3] = v26[3];
    v28 = (v25 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v27) = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
    *(v28 + 4) = *(v29 + 4);
    *v28 = v27;
    v30 = v8 + 5;
    v31 = (v30 + v28) & v19;
    v32 = (v30 + v29) & v19;
    (*(v7 + 32))(v31, v32, v6);
    *(v31 + v9) = *(v32 + v9);
    v33 = (v31 + v9) & 0xFFFFFFFFFFFFFFFCLL;
    v34 = (v32 + v9) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *(v34 + 4);
    *(v33 + 8) = *(v34 + 8);
    *(v33 + 4) = v35;
    v36 = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = a2[3];
    v37 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = *v38;
    *(v37 + 4) = *(v38 + 4);
    *v37 = v39;
    v40 = (v37 + v8 + 5) & v19;
    v41 = (v38 + v8 + 5) & v19;
    (*(v7 + 32))(v40, v41, v6);
    v36 = 0;
    *(v40 + v9) = *(v41 + v9);
    v42 = (v40 + v9) & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (v41 + v9) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = *(v43 + 4);
    *(v42 + 8) = *(v43 + 8);
    *(v42 + 4) = v44;
    *((a1 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
  }

  *(a1 + v14) = v36;
  v45 = (v14 + 8 + a1) & 0xFFFFFFFFFFFFFFF8;
  v46 = &a2[v14 + 8] & 0xFFFFFFFFFFFFFFF8;
  v47 = *(v46 + 17);
  if (v47 >= 2)
  {
    v47 = *v46 + 2;
  }

  if (v47 == 1)
  {
    v48 = *v46;
    *(v45 + 16) = *(v46 + 16);
    *v45 = v48;
    v49 = 1;
  }

  else
  {
    v49 = 0;
    *v45 = *v46;
  }

  *(v45 + 17) = v49;
  v50 = *(*(a3 + 16) - 8);
  v51 = v50 + 32;
  v52 = *(v50 + 80);
  v53 = (v45 + v52 + 18) & ~v52;
  v54 = (v46 + v52 + 18) & ~v52;
  (*(v50 + 32))(v53, v54);
  *(v53 + *(v51 + 32)) = *(v54 + *(v51 + 32));
  return a1;
}

unsigned __int8 *assignWithTake for SearchField(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v65 = type metadata accessor for AttributedString();
    v6 = *(v65 - 8);
    v7 = *(v6 + 80);
    v8 = *(v6 + 64);
    v9 = ((v7 + 9) & ~v7) + v8;
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + 9;
    v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 24;
    v12 = v7 | 3;
    v64 = v10;
    if (v10 + ((v7 + 16) & ~(v7 | 3)) <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10 + ((v7 + 16) & ~(v7 | 3));
    }

    v14 = a1[v13];
    v15 = v14 - 2;
    if (v14 < 2)
    {
LABEL_21:
      v18 = ~v7;
      v19 = ~v12;
      if (v14 == 1)
      {

        (*(v6 + 8))((v7 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & v19) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v18, v65);
      }

      else
      {
        (*(v6 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 5) & v18, v65);
      }

      v20 = a2[v13];
      v21 = v20 - 2;
      if (v20 >= 2)
      {
        if (v13 <= 3)
        {
          v22 = v13;
        }

        else
        {
          v22 = 4;
        }

        if (v22 <= 1)
        {
          if (!v22)
          {
            goto LABEL_38;
          }

          v23 = *a2;
          if (v13 < 4)
          {
LABEL_41:
            if ((v23 | (v21 << (8 * v13))) != 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

            goto LABEL_39;
          }
        }

        else if (v22 == 2)
        {
          v23 = *a2;
          if (v13 < 4)
          {
            goto LABEL_41;
          }
        }

        else if (v22 == 3)
        {
          v23 = *a2 | (a2[2] << 16);
          if (v13 < 4)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v23 = *a2;
          if (v13 < 4)
          {
            goto LABEL_41;
          }
        }

        v20 = v23 + 2;
      }

LABEL_38:
      if (v20 != 1)
      {
LABEL_42:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        v37 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v38 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v39 = *v38;
        *(v37 + 4) = *(v38 + 4);
        *v37 = v39;
        v40 = v38 + v7;
        v41 = (v37 + v7 + 5) & v18;
        v42 = (v40 + 5) & v18;
        (*(v6 + 32))(v41, v42, v65);
        *(v41 + v8) = *(v42 + v8);
        v43 = (v41 + v8) & 0xFFFFFFFFFFFFFFFCLL;
        v44 = (v42 + v8) & 0xFFFFFFFFFFFFFFFCLL;
        v45 = *(v44 + 4);
        *(v43 + 8) = *(v44 + 8);
        *(v43 + 4) = v45;
        *(&a1[v64 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v64 + 7] & 0xFFFFFFFFFFFFFFF8);
        a1[v13] = 0;
        goto LABEL_43;
      }

LABEL_39:
      *a1 = *a2;
      v24 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v25 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v24 = *v25;
      v26 = ((v24 + v12 + 8) & v19);
      v27 = ((v25 + v12 + 8) & v19);
      v28 = (v27 + 7);
      *v26 = *v27;
      v26[1] = v27[1];
      v26[2] = v27[2];
      v26[3] = v27[3];
      v29 = (v26 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
      LODWORD(v28) = *(v28 & 0xFFFFFFFFFFFFFFFCLL);
      *(v29 + 4) = *(v30 + 4);
      *v29 = v28;
      v31 = v7 + 5;
      v32 = (v7 + 5 + v29) & v18;
      v33 = (v31 + v30) & v18;
      (*(v6 + 32))(v32, v33, v65);
      *(v32 + v8) = *(v33 + v8);
      v34 = (v32 + v8) & 0xFFFFFFFFFFFFFFFCLL;
      v35 = (v33 + v8) & 0xFFFFFFFFFFFFFFFCLL;
      v36 = *(v35 + 4);
      *(v34 + 8) = *(v35 + 8);
      *(v34 + 4) = v36;
      a1[v13] = 1;
      goto LABEL_43;
    }

    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = *a1 | (a1[2] << 16);
          if (v13 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v14 = v17 + 2;
          goto LABEL_21;
        }

        v17 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v14 = (v17 | (v15 << (8 * v13))) + 2;
      goto LABEL_21;
    }

    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = *a1;
    if (v13 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_43:
  v46 = *(type metadata accessor for AttributedString() - 8);
  v47 = ((*(v46 + 80) + 9) & ~*(v46 + 80)) + *(v46 + 64);
  v48 = v47 & 0xFFFFFFFFFFFFFFFCLL;
  v49 = (v47 & 0xFFFFFFFFFFFFFFF8) + 24;
  v50 = ((*(v46 + 80) & 0xFC ^ 0x1FCu) & (*(v46 + 80) + 16)) + v48 + 9;
  if (v50 <= v49)
  {
    v50 = v49;
  }

  v51 = v50 + 8;
  v52 = &a1[v51] & 0xFFFFFFFFFFFFFFF8;
  v53 = &a2[v51] & 0xFFFFFFFFFFFFFFF8;
  if (v52 != v53)
  {
    v54 = *(v52 + 17);
    if (v54 >= 2)
    {
      v54 = *v52 + 2;
    }

    if (v54 == 1)
    {
    }

    v55 = *(v53 + 17);
    if (v55 >= 2)
    {
      v55 = *v53 + 2;
    }

    if (v55 == 1)
    {
      v56 = *v53;
      *(v52 + 16) = *(v53 + 16);
      *v52 = v56;
      v57 = 1;
    }

    else
    {
      v57 = 0;
      *v52 = *v53;
    }

    *(v52 + 17) = v57;
  }

  v58 = *(*(a3 + 16) - 8);
  v59 = v58 + 40;
  v60 = *(v58 + 80);
  v61 = (v52 + v60 + 18) & ~v60;
  v62 = (v53 + v60 + 18) & ~v60;
  (*(v58 + 40))(v61, v62);
  *(v61 + *(v59 + 24)) = *(v62 + *(v59 + 24));
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchField(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AttributedString() - 8);
  v7 = ((*(v6 + 80) + 9) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = (v7 & 0xFFFFFFFFFFFFFFF8) + 24;
  v10 = ((*(v6 + 80) & 0xFC ^ 0x1FCu) & (*(v6 + 80) + 16)) + v8 + 9;
  v11 = *(*(a3 + 16) - 8);
  if (v10 <= v9)
  {
    v10 = v9;
  }

  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  v14 = *(v11 + 64);
  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v15)
  {
    goto LABEL_30;
  }

  v16 = v14 + ((v13 + (v10 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v13) + 1;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 < 2)
    {
LABEL_30:
      if (v12 > 0xFE)
      {
        v25 = *(*(*(a3 + 16) - 8) + 48);

        return v25((v13 + ((a1 + v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v13);
      }

      else
      {
        v24 = *(a1 + v10);
        if (v24 >= 2)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v15 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for SearchField(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for AttributedString() - 8);
  v9 = ((*(v8 + 80) + 9) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = ((*(v8 + 80) & 0xFC ^ 0x1FCu) & (*(v8 + 80) + 16)) + v10 + 9;
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  if (v15 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  v18 = *(v14 + 64) + ((v16 + (v13 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v16) + 1;
  if (a3 <= v17)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v17 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v17 < a2)
  {
    v20 = ~v17 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (*(v14 + 64) + ((v16 + (v13 & 0xFFFFFFF8) + 26) & ~v16) != -1)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_58:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v18] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v19)
  {
    goto LABEL_33;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v25 = v13 + 1;
  if (v15 > 0xFE)
  {
    v26 = *(v14 + 56);

    v26((v16 + (&a1[v25 + 7] & 0xFFFFFFFFFFFFFFF8) + 18) & ~v16, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v25 <= 3)
    {
      v27 = ~(-1 << (8 * v25));
    }

    else
    {
      v27 = -1;
    }

    if (v13 != -1)
    {
      v28 = v27 & (a2 - 255);
      if (v25 <= 3)
      {
        v29 = v13 + 1;
      }

      else
      {
        v29 = 4;
      }

      bzero(a1, v25);
      if (v29 > 2)
      {
        if (v29 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else
        {
          *a1 = v28;
        }
      }

      else if (v29 == 1)
      {
        *a1 = v28;
      }

      else
      {
        *a1 = v28;
      }
    }
  }

  else
  {
    a1[v13] = -a2;
  }
}

uint64_t type metadata completion function for SearchFieldTokenControl()
{
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SearchFieldTokenControl(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = v6 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v9 = ((v7 + 16) & ~v7) + *(v5 + 64);
  v10 = v6 & 0x100000;
  v11 = *a2;
  *a1 = *a2;
  if (v7 > 7 || v10 != 0 || ((((v9 + (v8 & (v7 + 32)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    a1 = (v11 + (v8 & (v7 + 16)));
  }

  else
  {
    v14 = a2[2];
    a1[1] = a2[1];
    a1[2] = v14;
    a1[3] = a2[3];
    v15 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
    v32 = a2 + 39;
    v16 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    v16 += 15;
    *v15 = v17;
    v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = (v16 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v18 = *(v16 & 0xFFFFFFFFFFFFFFF8);
    v20 = *(v5 + 16);

    v20(v18 + 1, v19, v4);
    v21 = ((((a1 + 39) | 7) + v9) & 0xFFFFFFFFFFFFFFF8);
    v22 = (((v32 | 7) + v9) & 0xFFFFFFFFFFFFFFF8);
    v23 = v22[1];
    *v21 = *v22;
    v21[1] = v23;
    v24 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = *(v25 + 24);

    if (v26 < 0xFFFFFFFF)
    {
      v30 = *(v25 + 16);
      *v24 = *v25;
      *(v24 + 16) = v30;
    }

    else
    {
      v27 = *v25;
      v28 = *(v25 + 8);
      v29 = *(v25 + 16);
      outlined copy of Text.Storage(*v25, v28, v29);
      *v24 = v27;
      *(v24 + 8) = v28;
      *(v24 + 16) = v29;
      *(v24 + 24) = *(v25 + 24);
    }
  }

  return a1;
}

uint64_t destroy for SearchFieldTokenControl(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (a1 + (v6 | 7) + 32) & ~(v6 | 7);

  (*(v5 + 8))((v6 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6, v4);
  v8 = (((v6 + 16) & ~v6) + *(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v10, *(v10 + 8), *(v10 + 16));
  }

  return result;
}

void *initializeWithCopy for SearchFieldTokenControl(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v29 = *(a3 + 16);
  v6 = *(v29 - 8);
  v28 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 32;
  v11 = ((a2 + v9) & ~(v8 | 7));
  v10 = ((a1 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = v12 + v8 + 8;
  v27 = v13 + v8 + 8;

  v28(v14 & ~v8, v27 & ~v8, v29);
  v15 = *(v7 + 48) + ((v8 + 16) & ~v8) + 7;
  v16 = ((v10 + v15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v11 + v15) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;
  v19 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 24);

  if (v21 < 0xFFFFFFFF)
  {
    v25 = *(v20 + 16);
    *v19 = *v20;
    *(v19 + 16) = v25;
  }

  else
  {
    v22 = *v20;
    v23 = *(v20 + 8);
    v24 = *(v20 + 16);
    outlined copy of Text.Storage(*v20, v23, v24);
    *v19 = v22;
    *(v19 + 8) = v23;
    *(v19 + 16) = v24;
    *(v19 + 24) = *(v20 + 24);
  }

  return a1;
}

void *assignWithCopy for SearchFieldTokenControl(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 32;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  (*(v7 + 24))((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v6);
  v14 = *(v7 + 64) + ((v8 + 16) & ~v8) + 7;
  v15 = ((v10 + v14) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v11 + v14) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  v18 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 24);
  if (*(v18 + 24) < 0xFFFFFFFFuLL)
  {
    if (v20 >= 0xFFFFFFFF)
    {
      v27 = *v19;
      v28 = *(v19 + 8);
      v29 = *(v19 + 16);
      outlined copy of Text.Storage(*v19, v28, v29);
      *v18 = v27;
      *(v18 + 8) = v28;
      *(v18 + 16) = v29;
      *(v18 + 24) = *(v19 + 24);

      return a1;
    }

LABEL_7:
    v30 = *(v19 + 16);
    *v18 = *v19;
    *(v18 + 16) = v30;
    return a1;
  }

  if (v20 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*v18, *(v18 + 8), *(v18 + 16));

    goto LABEL_7;
  }

  v21 = *v19;
  v22 = *(v19 + 8);
  v23 = *(v19 + 16);
  outlined copy of Text.Storage(*v19, v22, v23);
  v24 = *v18;
  v25 = *(v18 + 8);
  v26 = *(v18 + 16);
  *v18 = v21;
  *(v18 + 8) = v22;
  *(v18 + 16) = v23;
  outlined consume of Text.Storage(v24, v25, v26);
  *(v18 + 24) = *(v19 + 24);

  return a1;
}

_OWORD *initializeWithTake for SearchFieldTokenControl(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v8 = *(v5 + 80);
  v9 = (v8 | 7) + 32;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v6((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8);
  v14 = *(v7 + 32) + ((v8 + 16) & ~v8) + 7;
  v15 = ((v10 + v14) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v11 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v17;
  v18 = v17[1];
  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v19;
  v20[1] = v18;
  return a1;
}

void *assignWithTake for SearchFieldTokenControl(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + 32;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((a2 + v10) & ~(v9 | 7));
  *v11 = *v12;

  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;

  (*(v8 + 40))((v13 + v9 + 8) & ~v9, (v14 + v9 + 8) & ~v9, v7);
  v15 = *(v8 + 64) + ((v9 + 16) & ~v9) + 7;
  v16 = ((v11 + v15) & 0xFFFFFFFFFFFFFFF8);
  v17 = v12 + v15;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v16 = *(v17 & 0xFFFFFFFFFFFFFFF8);

  v19 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  if (*(v19 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v20 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v19, *(v19 + 8), *(v19 + 16));

LABEL_5:
    v25 = *(v20 + 16);
    *v19 = *v20;
    *(v19 + 16) = v25;
    return a1;
  }

  v21 = *(v20 + 16);
  v22 = *v19;
  v23 = *(v19 + 8);
  v24 = *(v19 + 16);
  *v19 = *v20;
  *(v19 + 16) = v21;
  outlined consume of Text.Storage(v22, v23, v24);
  *(v19 + 24) = *(v20 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for SearchFieldTokenControl(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-33 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v9 + 32) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v19 = *(a1 + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void *storeEnumTagSinglePayload for SearchFieldTokenControl(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          result[2] = 0;
          result[3] = 0;
          *result = a2 & 0x7FFFFFFF;
          result[1] = 0;
        }

        else
        {
          result[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);
        v19 = (v8 + ((((result + (v8 | 7) + 32) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v18(v19);
      }

      return result;
    }
  }

  if (((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SearchTextTransformModifier(char *a1, char *a2)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
    v7 = *(v4 + 32);
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
  }

  return a1;
}

uint64_t destroy for SearchTextTransformModifier(uint64_t a1)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

char *initializeWithCopy for SearchTextTransformModifier(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *assignWithCopy for SearchTextTransformModifier(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *initializeWithTake for SearchTextTransformModifier(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *assignWithTake for SearchTextTransformModifier(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

void type metadata completion function for SearchTextTransformModifier()
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(319, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeBufferWithCopyOfBuffer for SearchFieldState(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = *(a2 + 1);
    *(a1 + 4) = *(a2 + 1);
    *(a1 + 8) = *(a2 + 8);
    v5 = a3[9];
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 16))(&v3[v5], a2 + v5, v8);
    v9 = a3[11];
    v3[a3[10]] = *(a2 + a3[10]);
    v10 = &v3[v9];
    v11 = a2 + v9;
    *v10 = *v11;
    v10[4] = *(v11 + 4);
  }

  return v3;
}

uint64_t initializeWithTake for SearchFieldState(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[9];
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *v10;
  *(v9 + 4) = *(v10 + 4);
  return a1;
}

uint64_t specialized static SearchTextTransformModifier._makeInputs(modifier:inputs:)()
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  AGGraphCreateOffsetAttribute2();
  type metadata accessor for SearchBoundProperty<AttributedString>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>.Metadata, type metadata accessor for SearchBoundProperty.Metadata);
  v0 = swift_allocObject();
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + *(*v0 + 104)) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchBoundProperty<AttributedString>();
  type metadata accessor for SearchBoundProperty<AttributedString>.MakeProperty();
  lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type SearchBoundProperty<AttributedString>.MakeProperty and conformance SearchBoundProperty<A>.MakeProperty, type metadata accessor for SearchBoundProperty<AttributedString>.MakeProperty);
  Attribute.init<A>(body:value:flags:update:)();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>, type metadata accessor for SearchTextTransformModifier.Transform, &protocol witness table for SearchTextTransformModifier.Transform, type metadata accessor for SearchEnvironmentTransformModifier);
  lazy protocol witness table accessor for type SearchTextTransformModifier.TransformModifier and conformance SearchTextTransformModifier.TransformModifier();
  Attribute.init<A>(body:value:flags:update:)();
  return _s7SwiftUI34SearchEnvironmentTransformModifierV11_makeInputs8modifier6inputsyAA11_GraphValueVyACyxGG_AA01_kH0VztFZAA0c4TexteF033_E1458373A4858EAD6466FEBDCBAECB56LLV0E0V_Tt1B5();
}

void type metadata accessor for SearchBoundProperty<AttributedString>.Metadata(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString();
    updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
    v8 = a3(a1, v6, updated);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SearchTextTransformModifier.TransformModifier and conformance SearchTextTransformModifier.TransformModifier()
{
  result = lazy protocol witness table cache variable for type SearchTextTransformModifier.TransformModifier and conformance SearchTextTransformModifier.TransformModifier;
  if (!lazy protocol witness table cache variable for type SearchTextTransformModifier.TransformModifier and conformance SearchTextTransformModifier.TransformModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchTextTransformModifier.TransformModifier and conformance SearchTextTransformModifier.TransformModifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>? and conformance <A> A?(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SearchBoundProperty<AttributedString>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for WritableKeyPath<SearchFieldState, AttributedString>()
{
  if (!lazy cache variable for type metadata for WritableKeyPath<SearchFieldState, AttributedString>)
  {
    type metadata accessor for SearchFieldState(255);
    type metadata accessor for AttributedString();
    v0 = type metadata accessor for WritableKeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WritableKeyPath<SearchFieldState, AttributedString>);
    }
  }
}

void type metadata accessor for WritableKeyPath<SearchFieldState, Bool?>()
{
  if (!lazy cache variable for type metadata for WritableKeyPath<SearchFieldState, Bool?>)
  {
    type metadata accessor for SearchFieldState(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(255, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for WritableKeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WritableKeyPath<SearchFieldState, Bool?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SearchTextTransformModifier.Transform(char *a1, char *a2)
{
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v5 = v4;
  v6 = *(*(v4 - 8) + 80);
  v7 = *a2;
  *a1 = *a2;
  if ((v6 & 0x20000) != 0)
  {
    a1 = (v7 + ((v6 + 16) & ~v6));
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v9 = *(v8 + 32);
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 16);

    v11(&a1[v9], &a2[v9], v10);
    *&a1[*(v5 + 36)] = *&a2[*(v5 + 36)];
    *&a1[*(v5 + 40)] = *&a2[*(v5 + 40)];
  }

  return a1;
}

uint64_t destroy for SearchTextTransformModifier.Transform(uint64_t a1)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  type metadata accessor for SearchBoundProperty<AttributedString>();
}

char *initializeWithCopy for SearchTextTransformModifier.Transform(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  *&a1[*(v9 + 36)] = *&a2[*(v9 + 36)];
  *&a1[*(v9 + 40)] = *&a2[*(v9 + 40)];

  return a1;
}

char *assignWithCopy for SearchTextTransformModifier.Transform(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v8 = v7;
  *&a1[*(v7 + 36)] = *&a2[*(v7 + 36)];

  *&a1[*(v8 + 40)] = *&a2[*(v8 + 40)];
  return a1;
}

char *initializeWithTake for SearchTextTransformModifier.Transform(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  *&a1[*(v8 + 36)] = *&a2[*(v8 + 36)];
  *&a1[*(v8 + 40)] = *&a2[*(v8 + 40)];
  return a1;
}

char *assignWithTake for SearchTextTransformModifier.Transform(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v8 = v7;
  *&a1[*(v7 + 36)] = *&a2[*(v7 + 36)];

  *&a1[*(v8 + 40)] = *&a2[*(v8 + 40)];
  return a1;
}

void type metadata completion function for SearchTextTransformModifier.Transform()
{
  type metadata accessor for SearchBoundProperty<AttributedString>();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for SearchField<SearchFieldConfiguration.Control>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v14 = a3;
    v15 = result;
    v17 = a2;
    result = outlined copy of [A : B].Index._Variant<A, B>(result, a2, a3 & 1);
    if (!a4)
    {
LABEL_22:
      *a9 = v15;
      *(a9 + 8) = v17;
      *(a9 + 16) = v14 & 1;
      return result;
    }

    v37 = a9;
    v18 = 0;
    v19 = a8 + 64;
    v20 = a4 - 1;
    v21 = a6;
    v22 = v14 | a7;
    v23 = v17;
    v38 = v20;
    while ((v22 & 1) == 0)
    {
      if (v23 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v15 == a5)
      {
        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(a5, v23, 0);
        *v37 = 0;
        *(v37 + 8) = 0;
        *(v37 + 16) = -1;
        return result;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v25 = 1 << *(a8 + 32);
      if (v15 >= v25)
      {
        goto LABEL_24;
      }

      v26 = v15 >> 6;
      v27 = *(v19 + 8 * (v15 >> 6));
      if (((v27 >> v15) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v15, v23, 0);
        v15 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v19;
        v30 = a7;
        v31 = a5;
        v32 = v26 << 6;
        v33 = v26 + 1;
        v34 = (a8 + 72 + 8 * v26);
        while (v33 < (v25 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v15, v23, 0);
            v15 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v15, v23, 0);
        v15 = v25;
LABEL_19:
        a5 = v31;
        a7 = v30;
        v19 = v29;
        v21 = a6;
      }

      v23 = v21;
      v22 = a7;
      if (v18++ == v38)
      {
        v14 = 0;
        v17 = v21;
        a9 = v37;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized RangeReplaceableCollection.removeFirst(_:)(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  result = __CocoaSet.count.getter();
LABEL_5:
  if (result <= v2 - 1)
  {
    __break(1u);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return specialized Array.replaceSubrange<A>(_:with:)(0, v2, v3);
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (*(*v1 + 16) > (result - 1))
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, result);
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[0] = MEMORY[0x1E69E7CC0];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(a3, &v20, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
  outlined init with take of Decodable & Encodable & Hashable(&v20, v15);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  i = 0;
  outlined assign with take of Hashable?(v15, &v24, &lazy cache variable for type metadata for (Decodable & Encodable & Hashable)?, type metadata accessor for Decodable & Encodable & Hashable);
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v23 = i;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  for (i = 0; *(&v21 + 1); i = 0)
  {
    outlined init with take of Decodable & Encodable & Hashable(&v20, v15);
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = MEMORY[0x1E69E6BC0];
    type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
    v10 = v9;
    v11 = lazy protocol witness table accessor for type Repeated<Decodable & Encodable & Hashable> and conformance Repeated<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Decodable & Encodable & Hashable> and conformance CollectionOfOne<A>, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, v8);
    specialized append #1 <A><A1>(_:) in NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(v7, v28, v10, v3, v11, v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v20 = v24;
    v21 = v25;
    v22 = v26;
    v23 = i;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
  }

  outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(&v24, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>.Iterator, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BB0]);
  swift_beginAccess();
  specialized Array.replaceSubrange<A>(_:with:)(a1, a2, v28[0]);
}

_OWORD *specialized RangeReplaceableCollection.append<A>(contentsOf:)(_OWORD *result)
{
  v2 = result[1];
  v36[0] = *result;
  v36[1] = v2;
  v3 = result[3];
  v36[2] = result[2];
  v36[3] = v3;
  v37 = 0;
  v4 = *&v36[0];
  if (!*&v36[0])
  {
    return outlined destroy of IndexingIterator<Repeated<Decodable & Encodable & Hashable>>(v36, type metadata accessor for IndexingIterator<Repeated<Decodable & Encodable & Hashable>>);
  }

  if (*&v36[0] >= 1)
  {
    v5 = 0;
    v18 = *&v36[0];
    v19 = v1;
    while (v5 != v4)
    {
      v20 = v5;
      if (*v1 >> 62)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      outlined init with copy of Decodable & Encodable & Hashable(v36 + 8, v35);
      v34 = MEMORY[0x1E69E7CC0];
      _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(v35, &v26, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
      outlined init with take of Decodable & Encodable & Hashable(&v26, v21);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
      outlined assign with take of Hashable?(v21, &v30, &lazy cache variable for type metadata for (Decodable & Encodable & Hashable)?, type metadata accessor for Decodable & Encodable & Hashable);
      while (1)
      {
        v26 = v30;
        v27 = v31;
        v28 = v32;
        v29 = v33;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0;
        if (!*(&v27 + 1))
        {
          break;
        }

        outlined init with take of Decodable & Encodable & Hashable(&v26, v21);
        v9 = v22;
        v10 = v23;
        v11 = v24;
        v12 = v25;
        v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
        v14 = MEMORY[0x1E69E6BC0];
        type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
        v16 = v15;
        v17 = lazy protocol witness table accessor for type Repeated<Decodable & Encodable & Hashable> and conformance Repeated<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Decodable & Encodable & Hashable> and conformance CollectionOfOne<A>, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, v14);
        specialized append #1 <A><A1>(_:) in NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(v13, &v34, v16, v9, v17, v10, v11, v12);
        __swift_destroy_boxed_opaque_existential_1(v21);
      }

      v5 = v20 + 1;
      outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(&v30, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>.Iterator, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BB0]);
      swift_beginAccess();
      v6 = v8;
      v7 = v8;
      v1 = v19;
      specialized Array.replaceSubrange<A>(_:with:)(v6, v7, v34);

      result = outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(v35, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
      v4 = v18;
      if (v20 + 1 == v18)
      {
        v37 = v18;
        return outlined destroy of IndexingIterator<Repeated<Decodable & Encodable & Hashable>>(v36, type metadata accessor for IndexingIterator<Repeated<Decodable & Encodable & Hashable>>);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = result[1];
  v22[0] = *result;
  v22[1] = v2;
  v22[2] = result[2];
  v23 = 0;
  v3 = *&v22[0];
  if (!*&v22[0])
  {
    return outlined destroy of IndexingIterator<Repeated<Decodable & Encodable & Hashable>>(v22, type metadata accessor for IndexingIterator<Repeated<Hashable>>);
  }

  if (*&v22[0] >= 1)
  {
    v4 = 0;
    v11 = *&v22[0];
    while (v4 != v3)
    {
      if (*v1 >> 62)
      {
        v5 = __CocoaSet.count.getter();
      }

      else
      {
        v5 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      outlined init with copy of _Benchmark(v22 + 8, v21);
      v20 = MEMORY[0x1E69E7CC0];
      _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(v21, &v14, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E6BC0]);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v14, v12);
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
      outlined assign with take of Hashable?(v12, &v17, &lazy cache variable for type metadata for Hashable?, type metadata accessor for Hashable);
      while (1)
      {
        v14 = v17;
        v15 = v18;
        v16 = v19;
        v17 = 0u;
        v18 = 0u;
        v19 = 0;
        if (!*(&v15 + 1))
        {
          break;
        }

        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v14, v12);
        v6 = v13;
        v7 = __swift_project_boxed_opaque_existential_1(v12, v13);
        v8 = MEMORY[0x1E69E6BC0];
        type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E6BC0]);
        v10 = v9;
        lazy protocol witness table accessor for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, v8);
        specialized append #1 <A><A1>(_:) in NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(v7, &v20, v10, v6);
        __swift_destroy_boxed_opaque_existential_1(v12);
      }

      ++v4;
      outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(&v17, &lazy cache variable for type metadata for CollectionOfOne<Hashable>.Iterator, type metadata accessor for Hashable, MEMORY[0x1E69E6BB0]);
      swift_beginAccess();
      specialized Array.replaceSubrange<A>(_:with:)(v5, v5, v20);

      result = outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(v21, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E6BC0]);
      v3 = v11;
      if (v4 == v11)
      {
        v23 = v11;
        return outlined destroy of IndexingIterator<Repeated<Decodable & Encodable & Hashable>>(v22, type metadata accessor for IndexingIterator<Repeated<Hashable>>);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection.append<A>(contentsOf:)(uint64_t a1)
{
  result = outlined init with take of Repeated<FocusStoreList.Item>(a1, &v10);
  v12 = 0;
  v3 = v10;
  if (!v10)
  {
    return outlined destroy of IndexingIterator<Repeated<Decodable & Encodable & Hashable>>(&v10, type metadata accessor for IndexingIterator<Repeated<FocusStoreList.Item>>);
  }

  if (v10 >= 1)
  {
    v4 = *v1;
    v5 = v10;
    do
    {
      v6 = v4[2];
      outlined init with copy of FocusStoreList.Item(&v11, v9);
      outlined init with copy of CollectionOfOne<FocusStoreList.Item>(v9, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v6 >= v4[3] >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6 + 1, 1, v4);
      }

      swift_arrayDestroy();
      if ((v4[2] - v6) <= 1)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        swift_arrayInitWithTakeBackToFront();
      }

      ++v4[2];
      outlined init with copy of FocusStoreList.Item(v8, &v4[9 * v6 + 4]);
      outlined destroy of CollectionOfOne<FocusStoreList.Item>(v8);
      outlined destroy of CollectionOfOne<FocusStoreList.Item>(v9);
      --v5;
    }

    while (v5);
    *v1 = v4;
    v12 = v3;
    return outlined destroy of IndexingIterator<Repeated<Decodable & Encodable & Hashable>>(&v10, type metadata accessor for IndexingIterator<Repeated<FocusStoreList.Item>>);
  }

  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(void), unint64_t *a2)
{
  v4 = v3;
  v7 = *v2;
  v52 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
LABEL_26:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v25 = v2;
    v26 = v7;
    v10 = 0;
    v32 = v7 & 0xFFFFFFFFFFFFFF8;
    v33 = v7 & 0xC000000000000001;
    v7 += 32;
    v28 = v8;
    v29 = a1;
    v27 = v7;
    v30 = a2;
    while (1)
    {
      if (v33)
      {
        v11 = MEMORY[0x18D00E9C0](v10, v26);
        v2 = v11;
      }

      else
      {
        if (v10 >= *(v32 + 16))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v2 = *(v7 + 8 * v10);
      }

      (*(*v2 + 120))(&v49, v11);

      if (!v50)
      {
        break;
      }

      outlined init with take of Decodable & Encodable & Hashable(&v49, v51);
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_25;
      }

      outlined init with take of Decodable & Encodable & Hashable(v51, &v49);
      v2 = a2;
      v14 = v4;
      v15 = a1(&v49);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1(&v49);
      }

      if (v15)
      {
        __swift_destroy_boxed_opaque_existential_1(&v49);
      }

      else
      {
        if (v52 >> 62)
        {
          v31 = __CocoaSet.count.getter();
        }

        else
        {
          v31 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        outlined init with take of Decodable & Encodable & Hashable(&v49, v48);
        v47 = v9;
        _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(v48, &v39, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
        outlined init with take of Decodable & Encodable & Hashable(&v39, v34);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        i = 0;
        outlined assign with take of Hashable?(v34, &v43, &lazy cache variable for type metadata for (Decodable & Encodable & Hashable)?, type metadata accessor for Decodable & Encodable & Hashable);
        v39 = v43;
        v40 = v44;
        v41 = v45;
        v42 = i;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        for (i = 0; *(&v40 + 1); i = 0)
        {
          outlined init with take of Decodable & Encodable & Hashable(&v39, v34);
          v16 = v35;
          v17 = v36;
          v18 = v37;
          v19 = v38;
          v20 = __swift_project_boxed_opaque_existential_1(v34, v35);
          v21 = MEMORY[0x1E69E6BC0];
          type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
          v23 = v22;
          v24 = lazy protocol witness table accessor for type Repeated<Decodable & Encodable & Hashable> and conformance Repeated<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Decodable & Encodable & Hashable> and conformance CollectionOfOne<A>, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, v21);
          specialized append #1 <A><A1>(_:) in NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(v20, &v47, v23, v16, v24, v17, v18, v19);
          __swift_destroy_boxed_opaque_existential_1(v34);
          v39 = v43;
          v40 = v44;
          v41 = v45;
          v42 = i;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
        }

        outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(&v43, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>.Iterator, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BB0]);
        swift_beginAccess();
        v2 = &v52;
        specialized Array.replaceSubrange<A>(_:with:)(v31, v31, v47);

        outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(v48, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
        v4 = v14;
        a1 = v29;
        a2 = v30;
        v9 = MEMORY[0x1E69E7CC0];
        v7 = v27;
        v8 = v28;
      }

      if (v10 == v8)
      {
        v9 = v52;
        v2 = v25;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v9;
  }

  return result;
}

{
  v4 = v3;
  v7 = *v2;
  v40 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    v9 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v20 = v2;
    v21 = v7;
    v10 = 0;
    v26 = v7 & 0xFFFFFFFFFFFFFF8;
    v27 = v7 & 0xC000000000000001;
    v25 = v7 + 32;
    v22 = a1;
    v23 = a2;
    v7 = i;
    while (1)
    {
      if (v27)
      {
        v11 = MEMORY[0x18D00E9C0](v10, v21);
        v2 = v11;
      }

      else
      {
        if (v10 >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        v2 = *(v25 + 8 * v10);
      }

      (*(*v2 + 112))(v39, v11);

      if (__OFADD__(v10++, 1))
      {
        break;
      }

      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v39, v38);
      v2 = a2;
      v13 = a1(v38);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1(v38);
      }

      if (v13)
      {
        __swift_destroy_boxed_opaque_existential_1(v38);
      }

      else
      {
        if (v40 >> 62)
        {
          v24 = __CocoaSet.count.getter();
        }

        else
        {
          v24 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v38, v37);
        v36 = v9;
        _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(v37, &v30, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E6BC0]);
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, v28);
        v33 = 0u;
        v34 = 0u;
        v35 = 0;
        outlined assign with take of Hashable?(v28, &v33, &lazy cache variable for type metadata for Hashable?, type metadata accessor for Hashable);
        while (1)
        {
          v30 = v33;
          v31 = v34;
          v32 = v35;
          v33 = 0u;
          v34 = 0u;
          v35 = 0;
          if (!*(&v31 + 1))
          {
            break;
          }

          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, v28);
          v14 = v29;
          v15 = __swift_project_boxed_opaque_existential_1(v28, v29);
          v16 = MEMORY[0x1E69E6BC0];
          type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E6BC0]);
          v18 = v17;
          lazy protocol witness table accessor for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, v16);
          specialized append #1 <A><A1>(_:) in NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(v15, &v36, v18, v14);
          __swift_destroy_boxed_opaque_existential_1(v28);
        }

        outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(&v33, &lazy cache variable for type metadata for CollectionOfOne<Hashable>.Iterator, type metadata accessor for Hashable, MEMORY[0x1E69E6BB0]);
        swift_beginAccess();
        v2 = &v40;
        specialized Array.replaceSubrange<A>(_:with:)(v24, v24, v36);

        outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(v37, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E6BC0]);
        a1 = v22;
        a2 = v23;
        v9 = MEMORY[0x1E69E7CC0];
        v7 = i;
      }

      if (v10 == v7)
      {
        v9 = v40;
        v2 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_23:

  *v2 = v9;
  return result;
}

uint64_t specialized RangeReplaceableCollection.removeAll(where:)(uint64_t result)
{
  v3 = v1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = v4 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = v9;
      v10 = v8 + 72 * v7;
      v11 = v7;
      while (1)
      {
        if (v11 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        outlined init with copy of FocusStoreList.Item(v10, v22);
        v12 = v6(v22);
        if (v2)
        {
          outlined destroy of FocusStoreList.Item(v22);
        }

        if ((v12 & 1) == 0)
        {
          break;
        }

        ++v11;
        result = outlined destroy of FocusStoreList.Item(v22);
        v10 += 72;
        if (v5 == v11)
        {
          v3 = v1;
          v9 = v23;
          goto LABEL_20;
        }
      }

      v13 = v23;
      v14 = v23[2];
      outlined init with take of FocusStoreList.Item(v22, v21);
      outlined init with copy of CollectionOfOne<FocusStoreList.Item>(v21, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v14 >= v13[3] >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14 + 1, 1, v13);
      }

      swift_arrayDestroy();
      v23 = v13;
      if ((v13[2] - v14) <= 1)
      {
        v16 = &v13[9 * v14];
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v16 = &v13[9 * v14];
        swift_arrayInitWithTakeBackToFront();
      }

      v7 = v11 + 1;
      v17 = v23;
      ++v23[2];
      v18 = (v16 + 4);
      v9 = v17;
      outlined init with copy of FocusStoreList.Item(v20, v18);
      outlined destroy of CollectionOfOne<FocusStoreList.Item>(v20);
      result = outlined destroy of CollectionOfOne<FocusStoreList.Item>(v21);
      v8 = v4 + 32;
      v19 = v5 - 1 == v11;
      v3 = v1;
    }

    while (!v19);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:

  *v3 = v9;
  return result;
}

uint64_t specialized NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(a3, &v13, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E6BC0]);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, v11);
  v16 = 0u;
  v17 = 0u;
  i = 0;
  outlined assign with take of Hashable?(v11, &v16, &lazy cache variable for type metadata for Hashable?, type metadata accessor for Hashable);
  v13 = v16;
  v14 = v17;
  v15 = i;
  v16 = 0u;
  v17 = 0u;
  for (i = 0; *(&v14 + 1); i = 0)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, v11);
    v5 = v12;
    v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v7 = MEMORY[0x1E69E6BC0];
    type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E6BC0]);
    v9 = v8;
    lazy protocol witness table accessor for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>, &lazy cache variable for type metadata for CollectionOfOne<Hashable>, v7);
    specialized append #1 <A><A1>(_:) in NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(v6, &v19, v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v13 = v16;
    v14 = v17;
    v15 = i;
    v16 = 0u;
    v17 = 0u;
  }

  outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(&v16, &lazy cache variable for type metadata for CollectionOfOne<Hashable>.Iterator, type metadata accessor for Hashable, MEMORY[0x1E69E6BB0]);
  swift_beginAccess();
  specialized Array.replaceSubrange<A>(_:with:)(a1, a2, v19);
}

uint64_t FocusStoreList.replaceSubrange<A>(_:with:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v5, v1);
  type metadata accessor for CollectionOfOne<FocusStoreList.Item>(0, &lazy cache variable for type metadata for [FocusStoreList.Item], MEMORY[0x1E69E62F8]);
  return Array.replaceSubrange<A>(_:with:)();
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance FocusStoreList(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  FocusStoreList.replaceSubrange<A>(_:with:)(*a1);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance FocusStoreList@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    result = outlined destroy of FocusStoreList.Item(result);
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = a2;
    outlined init with take of FocusStoreList.Item(result, &v6);
    result = specialized RangeReplaceableCollection.append<A>(contentsOf:)(&v5);
    v4 = v7;
LABEL_5:
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance FocusStoreList(uint64_t a1)
{
  v2 = *(*v1 + 16);
  outlined init with take of FocusStoreList.Item(a1, v5);
  outlined init with copy of CollectionOfOne<FocusStoreList.Item>(v5, v4);
  specialized Array.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of CollectionOfOne<FocusStoreList.Item>(v5);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance FocusStoreList(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  outlined init with take of FocusStoreList.Item(a1, v5);
  outlined init with copy of CollectionOfOne<FocusStoreList.Item>(v5, v4);
  specialized Array.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of CollectionOfOne<FocusStoreList.Item>(v5);
}

unint64_t *protocol witness for RangeReplaceableCollection.remove(at:) in conformance FocusStoreList@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*v2 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= v3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  outlined init with copy of FocusStoreList.Item(*v2 + 72 * v4 + 32, a2);

  return specialized Array.replaceSubrange<A>(_:with:)(v4, v4 + 1);
}

double protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance FocusStoreList@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeAll(keepingCapacity:) in conformance FocusStoreList(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    return specialized Array.replaceSubrange<A>(_:with:)(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance FocusStoreList(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x41uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    outlined init with copy of FocusStoreList.Item(*v2 + 72 * v6 + 32, result);
    return protocol witness for Collection.subscript.read in conformance FocusStoreList;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance FocusStoreList(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of FocusStoreList.Item(*a1);

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance FocusStoreList@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance FocusStoreList@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance FocusStoreList@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance FocusStoreList()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

unint64_t lazy protocol witness table accessor for type FocusStoreList and conformance FocusStoreList()
{
  result = lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList;
  if (!lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList;
  if (!lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList;
  if (!lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<FocusStoreList> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<FocusStoreList>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<FocusStoreList>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type FocusStoreList and conformance FocusStoreList();
    v7 = a3(a1, &type metadata for FocusStoreList, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Slice<FocusStoreList> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<FocusStoreList> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<FocusStoreList> and conformance <> Slice<A>)
  {
    type metadata accessor for IndexingIterator<FocusStoreList>(255, &lazy cache variable for type metadata for Slice<FocusStoreList>, MEMORY[0x1E69E74D0]);
    lazy protocol witness table accessor for type FocusStoreList and conformance FocusStoreList();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<FocusStoreList> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t outlined init with take of Repeated<FocusStoreList.Item>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CollectionOfOne<FocusStoreList.Item>(0, &lazy cache variable for type metadata for Repeated<FocusStoreList.Item>, MEMORY[0x1E69E7BF8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for IndexingIterator<Repeated<FocusStoreList.Item>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Repeated<FocusStoreList.Item>>)
  {
    type metadata accessor for CollectionOfOne<FocusStoreList.Item>(255, &lazy cache variable for type metadata for Repeated<FocusStoreList.Item>, MEMORY[0x1E69E7BF8]);
    lazy protocol witness table accessor for type Repeated<FocusStoreList.Item> and conformance Repeated<A>();
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Repeated<FocusStoreList.Item>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Repeated<FocusStoreList.Item> and conformance Repeated<A>()
{
  result = lazy protocol witness table cache variable for type Repeated<FocusStoreList.Item> and conformance Repeated<A>;
  if (!lazy protocol witness table cache variable for type Repeated<FocusStoreList.Item> and conformance Repeated<A>)
  {
    type metadata accessor for CollectionOfOne<FocusStoreList.Item>(255, &lazy cache variable for type metadata for Repeated<FocusStoreList.Item>, MEMORY[0x1E69E7BF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Repeated<FocusStoreList.Item> and conformance Repeated<A>);
  }

  return result;
}

unint64_t type metadata accessor for Hashable()
{
  result = lazy cache variable for type metadata for Hashable;
  if (!lazy cache variable for type metadata for Hashable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Hashable);
  }

  return result;
}

uint64_t outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for CollectionOfOne<Hashable>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of IndexingIterator<Repeated<Decodable & Encodable & Hashable>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for IndexingIterator<Repeated<Hashable>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Repeated<Hashable>>)
  {
    v0 = MEMORY[0x1E69E7BF8];
    type metadata accessor for CollectionOfOne<Hashable>(255, &lazy cache variable for type metadata for Repeated<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E7BF8]);
    lazy protocol witness table accessor for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>(&lazy protocol witness table cache variable for type Repeated<Hashable> and conformance Repeated<A>, &lazy cache variable for type metadata for Repeated<Hashable>, v0);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Repeated<Hashable>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionOfOne<Hashable>(255, a2, type metadata accessor for Hashable, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of Hashable?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for CollectionOfOne<Hashable>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Repeated<Decodable & Encodable & Hashable> and conformance Repeated<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionOfOne<Hashable>(255, a2, type metadata accessor for Decodable & Encodable & Hashable, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Decodable & Encodable & Hashable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for IndexingIterator<Repeated<Decodable & Encodable & Hashable>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Repeated<Decodable & Encodable & Hashable>>)
  {
    v0 = MEMORY[0x1E69E7BF8];
    type metadata accessor for CollectionOfOne<Hashable>(255, &lazy cache variable for type metadata for Repeated<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E7BF8]);
    lazy protocol witness table accessor for type Repeated<Decodable & Encodable & Hashable> and conformance Repeated<A>(&lazy protocol witness table cache variable for type Repeated<Decodable & Encodable & Hashable> and conformance Repeated<A>, &lazy cache variable for type metadata for Repeated<Decodable & Encodable & Hashable>, v0);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Repeated<Decodable & Encodable & Hashable>>);
    }
  }
}

uint64_t partial apply for closure #1 in FocusStateBindingUpdateAction.init<A>(binding:value:)()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for FocusState.Binding();
  v3 = *(*(v2 - 8) + 80);
  return specialized FocusState.Binding.binding.setter(v0 + ((((v3 + 32) & ~v3) + *(*(v2 - 8) + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v2);
}

uint64_t assignWithCopy for FocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v5)
    {
      v7 = *(a2 + 40);
      *(a1 + 32) = v5;
      *(a1 + 40) = v7;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

LABEL_8:
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for FocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  v5 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v5)
    {
      v7 = *(a2 + 40);
      *(a1 + 32) = v5;
      *(a1 + 40) = v7;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

LABEL_8:
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusStoreList.Item(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FocusStoreList.Item(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static View.makeMapKitView(inputs:_:)(__int128 *a1, void (*a2)(__int128 *, _OWORD *))
{
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v12 = a1[2];
  outlined init with copy of _GraphInputs(&v10, v13);
  _ViewInputs.init(withoutGeometry:)();
  v7 = v10;
  v8 = v11;
  v9 = v12;
  v5[2] = v13[2];
  v5[3] = v13[3];
  v5[4] = v13[4];
  v6 = v14;
  v5[0] = v13[0];
  v5[1] = v13[1];
  outlined init with copy of _GraphInputs(&v10, v15);
  a2(&v7, v5);
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v9;
  outlined destroy of MapKitGraphInputs(v15);
  return outlined destroy of _ViewInputs(v13);
}

uint64_t MapKitViewTraitCollection.updateTraitKeysWithForEach<A>(contentID:id:offset:isConstant:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ViewTraitCollection.subscript.setter();
  ViewTraitCollection.subscript.setter();
  if ((a4 & 1) == 0)
  {
    return ViewTraitCollection.setTag<A>(for:value:)();
  }

  type metadata accessor for TagValueTraitKey<Int>();
  lazy protocol witness table accessor for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>();
  return ViewTraitCollection.subscript.setter();
}

void type metadata accessor for TagValueTraitKey<Int>()
{
  if (!lazy cache variable for type metadata for TagValueTraitKey<Int>)
  {
    v0 = type metadata accessor for TagValueTraitKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TagValueTraitKey<Int>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>()
{
  result = lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>;
  if (!lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>)
  {
    type metadata accessor for TagValueTraitKey<Int>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>);
  }

  return result;
}

uint64_t CGSize.withinRange(axes:rangeCosine:)(unsigned __int8 *a1, CGFloat a2)
{
  v2 = *a1;
  if (v2 == 15)
  {
    return 1;
  }

  v4 = CGSize.normalized()();
  if ((v2 & 1) != 0 && -v4.width > a2)
  {
    return 1;
  }

  if ((v2 & 2) != 0 && v4.width > a2 || (v2 & 4) != 0 && -v4.height > a2)
  {
    return 1;
  }

  else
  {
    return (v4.height > a2) & (v2 >> 3);
  }
}

unint64_t lazy protocol witness table accessor for type _EventDirections and conformance _EventDirections()
{
  result = lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections;
  if (!lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections;
  if (!lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections;
  if (!lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections;
  if (!lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagnifyEvent and conformance MagnifyEvent()
{
  result = lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent;
  if (!lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent;
  if (!lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent);
  }

  return result;
}

__n128 (*protocol witness for SpatialEventType.location.modify in conformance MagnifyEvent(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 24);
  return protocol witness for SpatialEventType.location.modify in conformance MagnifyEvent;
}

__n128 protocol witness for SpatialEventType.location.modify in conformance MagnifyEvent(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 24) = *a1;
  return result;
}

uint64_t protocol witness for EventType.init(_:) in conformance MagnifyEvent@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for EventType();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v7;
    v4 = v9;
    v5 = v10;
    v6 = v11;
    *(a1 + 8) = v8;
  }

  else
  {
    result = outlined consume of WheelEvent?(0, 0, 1);
    v5 = 0uLL;
    v3 = 0;
    v6 = 0;
    *(a1 + 8) = 0;
    v4 = xmmword_18CD6A6D0;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t protocol witness for HitTestableEventType.hitTestLocation.getter in conformance MagnifyEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MagnifyEvent and conformance MagnifyEvent();

  return MEMORY[0x1EEDE1378](a1, a2, v4);
}

uint64_t protocol witness for HitTestableEventType.hitTestRadius.getter in conformance MagnifyEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MagnifyEvent and conformance MagnifyEvent();

  return MEMORY[0x1EEDE1370](a1, a2, v4);
}

uint64_t initializeWithCopy for MagnifyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for MagnifyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for MagnifyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for MagnifyEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MagnifyEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL specialized static MagnifyEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (!v5)
  {
    if (!v9)
    {
      if (v7 != v11 || v6 != v10 || v8 != v12)
      {
        return 0;
      }

      return *(a1 + 48) == *(a2 + 48);
    }

LABEL_18:

    return 0;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  if (v5 != v9)
  {
    return 0;
  }

  v14 = v7 == v11 && v6 == v10 && v8 == v12;
  result = 0;
  if (v14)
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

uint64_t type metadata completion function for OptionButton()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for OptionButton(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 & 0xFFFFFFFFFFFFFFF8) != 0 && (v5 & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFE8)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 16);
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = v12;
  }

  return v3;
}

uint64_t destroy for OptionButton(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for OptionButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = v9;

  return a1;
}

uint64_t assignWithCopy for OptionButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = v9;

  return a1;
}

uint64_t initializeWithTake for OptionButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t assignWithTake for OptionButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for OptionButton(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}