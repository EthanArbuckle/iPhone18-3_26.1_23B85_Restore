uint64_t assignWithCopy for FileExportOperation(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.Mode);
    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v17 = *a2;
        v18 = *(a2 + 8);
        v19 = *(a2 + 16);
        v20 = *(a2 + 24);
        v21 = *(a2 + 32);
        v22 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v18, v19, v20, v21, v22);
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 24) = v20;
        *(a1 + 32) = v21;
        *(a1 + 40) = v22;
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        v23 = *(a2 + 80);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v23;
        v24 = *(a2 + 96);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v24;
      }

      else
      {
        v27 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v27;
        *(a1 + 16) = *(a2 + 16);
        v28 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v28;
        v29 = *(a2 + 48);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v29;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v7 = type metadata accessor for URL();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = type metadata accessor for FileExportOperation.Move(0);
        v9 = *(v8 + 20);
        v10 = (a1 + v9);
        v11 = (a2 + v9);
        v12 = v11[1];
        *v10 = *v11;
        v10[1] = v12;
        v13 = *(v8 + 24);
        v14 = (a1 + v13);
        v15 = (a2 + v13);
        v16 = v15[1];
        *v14 = *v15;
        v14[1] = v16;
LABEL_11:

        swift_storeEnumTagMultiPayload();
        goto LABEL_12;
      }

      *a1 = *a2;
      v25 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v25;
      v26 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v26;
    }

    goto LABEL_11;
  }

LABEL_12:
  v30 = a3[5];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  *v31 = *v32;
  v31[1] = v32[1];

  v33 = a3[6];
  v34 = type metadata accessor for URL();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(a1 + v33, 1, v34);
  v38 = v36(a2 + v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      (*(v35 + 16))(a1 + v33, a2 + v33, v34);
      (*(v35 + 56))(a1 + v33, 0, 1, v34);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v38)
  {
    (*(v35 + 8))(a1 + v33, v34);
LABEL_17:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy((a1 + v33), (a2 + v33), *(*(v39 - 8) + 64));
    goto LABEL_18;
  }

  (*(v35 + 24))(a1 + v33, a2 + v33, v34);
LABEL_18:
  v40 = a3[7];
  v41 = a1 + v40;
  v42 = a2 + v40;
  v43 = *(a1 + v40 + 24);
  v44 = *(a2 + v40 + 24);
  if (v43)
  {
    if (v44)
    {
      v45 = *v42;
      v46 = *(v42 + 8);
      v47 = *(v42 + 16);
      outlined copy of Text.Storage(*v42, v46, v47);
      v48 = *v41;
      v49 = *(v41 + 8);
      v50 = *(v41 + 16);
      *v41 = v45;
      *(v41 + 8) = v46;
      *(v41 + 16) = v47;
      outlined consume of Text.Storage(v48, v49, v50);
      *(v41 + 24) = *(v42 + 24);
    }

    else
    {
      outlined destroy of Text(v41);
      v54 = *(v42 + 16);
      *v41 = *v42;
      *(v41 + 16) = v54;
    }
  }

  else if (v44)
  {
    v51 = *v42;
    v52 = *(v42 + 8);
    v53 = *(v42 + 16);
    outlined copy of Text.Storage(*v42, v52, v53);
    *v41 = v51;
    *(v41 + 8) = v52;
    *(v41 + 16) = v53;
    *(v41 + 24) = *(v42 + 24);
  }

  else
  {
    v55 = *(v42 + 16);
    *v41 = *v42;
    *(v41 + 16) = v55;
  }

  v56 = a3[8];
  v57 = a1 + v56;
  v58 = a2 + v56;
  v59 = *(a1 + v56 + 24);
  v60 = *(a2 + v56 + 24);
  if (v59)
  {
    if (v60)
    {
      v61 = *v58;
      v62 = *(v58 + 8);
      v63 = *(v58 + 16);
      outlined copy of Text.Storage(*v58, v62, v63);
      v64 = *v57;
      v65 = *(v57 + 8);
      v66 = *(v57 + 16);
      *v57 = v61;
      *(v57 + 8) = v62;
      *(v57 + 16) = v63;
      outlined consume of Text.Storage(v64, v65, v66);
      *(v57 + 24) = *(v58 + 24);
    }

    else
    {
      outlined destroy of Text(v57);
      v70 = *(v58 + 16);
      *v57 = *v58;
      *(v57 + 16) = v70;
    }
  }

  else if (v60)
  {
    v67 = *v58;
    v68 = *(v58 + 8);
    v69 = *(v58 + 16);
    outlined copy of Text.Storage(*v58, v68, v69);
    *v57 = v67;
    *(v57 + 8) = v68;
    *(v57 + 16) = v69;
    *(v57 + 24) = *(v58 + 24);
  }

  else
  {
    v71 = *(v58 + 16);
    *v57 = *v58;
    *(v57 + 16) = v71;
  }

  v72 = a3[9];
  v73 = a1 + v72;
  v74 = a2 + v72;
  v75 = *(a1 + v72 + 24);
  v76 = *(a2 + v72 + 24);
  if (v75)
  {
    if (v76)
    {
      v77 = *v74;
      v78 = *(v74 + 8);
      v79 = *(v74 + 16);
      outlined copy of Text.Storage(*v74, v78, v79);
      v80 = *v73;
      v81 = *(v73 + 8);
      v82 = *(v73 + 16);
      *v73 = v77;
      *(v73 + 8) = v78;
      *(v73 + 16) = v79;
      outlined consume of Text.Storage(v80, v81, v82);
      *(v73 + 24) = *(v74 + 24);
    }

    else
    {
      outlined destroy of Text(v73);
      v86 = *(v74 + 16);
      *v73 = *v74;
      *(v73 + 16) = v86;
    }
  }

  else if (v76)
  {
    v83 = *v74;
    v84 = *(v74 + 8);
    v85 = *(v74 + 16);
    outlined copy of Text.Storage(*v74, v84, v85);
    *v73 = v83;
    *(v73 + 8) = v84;
    *(v73 + 16) = v85;
    *(v73 + 24) = *(v74 + 24);
  }

  else
  {
    v87 = *(v74 + 16);
    *v73 = *v74;
    *(v73 + 16) = v87;
  }

  v88 = a3[10];
  type metadata accessor for Predicate<Pack{URL}>();
  v90 = v89;
  v91 = *(v89 - 8);
  v92 = *(v91 + 48);
  v93 = v92(a1 + v88, 1, v89);
  v94 = v92(a2 + v88, 1, v90);
  if (!v93)
  {
    if (!v94)
    {
      (*(v91 + 24))(a1 + v88, a2 + v88, v90);
      goto LABEL_46;
    }

    (*(v91 + 8))(a1 + v88, v90);
    goto LABEL_45;
  }

  if (v94)
  {
LABEL_45:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy((a1 + v88), (a2 + v88), *(*(v95 - 8) + 64));
    goto LABEL_46;
  }

  (*(v91 + 16))(a1 + v88, a2 + v88, v90);
  (*(v91 + 56))(a1 + v88, 0, 1, v90);
LABEL_46:
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v96 = a3[12];
  v97 = a1 + v96;
  v98 = (a2 + v96);
  v99 = *v98;
  *(v97 + 8) = *(v98 + 8);
  *v97 = v99;
  return a1;
}

char *initializeWithTake for FileExportOperation(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for FileExportOperation.Mode(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for FileExportOperation.Move(0);
    *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
    *&a1[*(v8 + 24)] = *&a2[*(v8 + 24)];
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  v13 = a3[7];
  v14 = a3[8];
  v15 = &a1[v13];
  v16 = &a2[v13];
  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;
  v18 = &a1[v14];
  v19 = &a2[v14];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  v21 = a3[9];
  v22 = a3[10];
  v23 = *&a2[v21];
  v24 = *&a2[v21 + 16];
  v25 = &a1[v21];
  *v25 = v23;
  *(v25 + 1) = v24;
  type metadata accessor for Predicate<Pack{URL}>();
  v27 = v26;
  v28 = *(v26 - 8);
  if ((*(v28 + 48))(&a2[v22], 1, v26))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy(&a1[v22], &a2[v22], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v28 + 32))(&a1[v22], &a2[v22], v27);
    (*(v28 + 56))(&a1[v22], 0, 1, v27);
  }

  v30 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v31 = &a1[v30];
  v32 = &a2[v30];
  *v31 = *v32;
  v31[8] = v32[8];
  return a1;
}

char *assignWithTake for FileExportOperation(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.Mode);
    v6 = type metadata accessor for FileExportOperation.Mode(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = type metadata accessor for FileExportOperation.Move(0);
      *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
      *&a1[*(v8 + 24)] = *&a2[*(v8 + 24)];
      swift_storeEnumTagMultiPayload();
    }
  }

  v9 = a3[5];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v13 = *v11;
  v12 = *(v11 + 1);
  *v10 = v13;
  *(v10 + 1) = v12;

  v14 = a3[6];
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(&a1[v14], 1, v15);
  v19 = v17(&a2[v14], 1, v15);
  if (v18)
  {
    if (!v19)
    {
      (*(v16 + 32))(&a1[v14], &a2[v14], v15);
      (*(v16 + 56))(&a1[v14], 0, 1, v15);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v19)
  {
    (*(v16 + 8))(&a1[v14], v15);
LABEL_10:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_11;
  }

  (*(v16 + 40))(&a1[v14], &a2[v14], v15);
LABEL_11:
  v21 = a3[7];
  v22 = &a1[v21];
  v23 = &a2[v21];
  if (*&a1[v21 + 24])
  {
    if (*(v23 + 3))
    {
      v24 = v23[16];
      v25 = *v22;
      v26 = *(v22 + 8);
      v27 = *(v22 + 16);
      *v22 = *v23;
      *(v22 + 16) = v24;
      outlined consume of Text.Storage(v25, v26, v27);
      *(v22 + 24) = *(v23 + 3);

      goto LABEL_16;
    }

    outlined destroy of Text(v22);
  }

  v28 = *(v23 + 1);
  *v22 = *v23;
  *(v22 + 16) = v28;
LABEL_16:
  v29 = a3[8];
  v30 = &a1[v29];
  v31 = &a2[v29];
  if (*&a1[v29 + 24])
  {
    if (*(v31 + 3))
    {
      v32 = v31[16];
      v33 = *v30;
      v34 = *(v30 + 8);
      v35 = *(v30 + 16);
      *v30 = *v31;
      *(v30 + 16) = v32;
      outlined consume of Text.Storage(v33, v34, v35);
      *(v30 + 24) = *(v31 + 3);

      goto LABEL_21;
    }

    outlined destroy of Text(v30);
  }

  v36 = *(v31 + 1);
  *v30 = *v31;
  *(v30 + 16) = v36;
LABEL_21:
  v37 = a3[9];
  v38 = &a1[v37];
  v39 = &a2[v37];
  if (*&a1[v37 + 24])
  {
    if (*(v39 + 3))
    {
      v40 = v39[16];
      v41 = *v38;
      v42 = *(v38 + 8);
      v43 = *(v38 + 16);
      *v38 = *v39;
      *(v38 + 16) = v40;
      outlined consume of Text.Storage(v41, v42, v43);
      *(v38 + 24) = *(v39 + 3);

      goto LABEL_26;
    }

    outlined destroy of Text(v38);
  }

  v44 = *(v39 + 1);
  *v38 = *v39;
  *(v38 + 16) = v44;
LABEL_26:
  v45 = a3[10];
  type metadata accessor for Predicate<Pack{URL}>();
  v47 = v46;
  v48 = *(v46 - 8);
  v49 = *(v48 + 48);
  v50 = v49(&a1[v45], 1, v46);
  v51 = v49(&a2[v45], 1, v47);
  if (!v50)
  {
    if (!v51)
    {
      (*(v48 + 40))(&a1[v45], &a2[v45], v47);
      goto LABEL_32;
    }

    (*(v48 + 8))(&a1[v45], v47);
    goto LABEL_31;
  }

  if (v51)
  {
LABEL_31:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy(&a1[v45], &a2[v45], *(*(v52 - 8) + 64));
    goto LABEL_32;
  }

  (*(v48 + 32))(&a1[v45], &a2[v45], v47);
  (*(v48 + 56))(&a1[v45], 0, 1, v47);
LABEL_32:
  v53 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v54 = &a1[v53];
  v55 = &a2[v53];
  *v54 = *v55;
  v54[8] = v55[8];
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for FileExportOperation.Move(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = (v4 + v8);
    v11 = (a2 + v8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (v4 + v9);
    v14 = (a2 + v9);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
  }

  return v4;
}

uint64_t destroy for FileExportOperation.Move(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t initializeWithCopy for FileExportOperation.Move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t assignWithCopy for FileExportOperation.Move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  v11 = *(a3 + 24);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t initializeWithTake for FileExportOperation.Move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t assignWithTake for FileExportOperation.Move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for FileExportOperation.Mode(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = v18 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = *a2;
        v20 = *(a2 + 8);
        v21 = *(a2 + 16);
        v22 = *(a2 + 24);
        v23 = *(a2 + 32);
        v24 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v20, v21, v22, v23, v24);
        *a1 = v19;
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        *(a1 + 24) = v22;
        *(a1 + 32) = v23;
        *(a1 + 40) = v24;
        v25 = *(a2 + 56);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v25;
        v26 = *(a2 + 96);
        v32 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v32;
        *(a1 + 96) = v26;
      }

      else
      {
        v29 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v29;
        v30 = *(a2 + 48);
        v33 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v33;
        *(a1 + 48) = v30;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v27 = *(a2 + 32);
        v28 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v28;
        *(a1 + 32) = v27;
      }

      else
      {
        v7 = type metadata accessor for URL();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = type metadata accessor for FileExportOperation.Move(0);
        v9 = *(v8 + 20);
        v10 = (a1 + v9);
        v11 = (a2 + v9);
        v13 = *v11;
        v12 = v11[1];
        *v10 = v13;
        v10[1] = v12;
        v14 = *(v8 + 24);
        v15 = (a1 + v14);
        v16 = (a2 + v14);
        v17 = v16[1];
        *v15 = *v16;
        v15[1] = v17;
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for FileExportOperation.Mode(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      outlined consume of FileExportOperation.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
    }

    else
    {
      if (result != 3)
      {
        return result;
      }
    }
  }

  else if (result)
  {
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    v3 = type metadata accessor for URL();
    (*(*(v3 - 8) + 8))(a1, v3);
    type metadata accessor for FileExportOperation.Move(0);
  }
}

uint64_t initializeWithCopy for FileExportOperation.Mode(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *a2;
      v17 = *(a2 + 8);
      v18 = *(a2 + 16);
      v19 = *(a2 + 24);
      v20 = *(a2 + 32);
      v21 = *(a2 + 40);
      outlined copy of FileExportOperation.Storage(*a2, v17, v18, v19, v20, v21);
      *a1 = v16;
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      *(a1 + 24) = v19;
      *(a1 + 32) = v20;
      *(a1 + 40) = v21;
      v22 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v22;
      v23 = *(a2 + 96);
      v29 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v29;
      *(a1 + 96) = v23;
    }

    else
    {
      v26 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v26;
      v27 = *(a2 + 48);
      v30 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v30;
      *(a1 + 48) = v27;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v24 = *(a2 + 32);
      v25 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v25;
      *(a1 + 32) = v24;
    }

    else
    {
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v6 = type metadata accessor for FileExportOperation.Move(0);
      v7 = *(v6 + 20);
      v8 = (a1 + v7);
      v9 = (a2 + v7);
      v11 = *v9;
      v10 = v9[1];
      *v8 = v11;
      v8[1] = v10;
      v12 = *(v6 + 24);
      v13 = (a1 + v12);
      v14 = (a2 + v12);
      v15 = v14[1];
      *v13 = *v14;
      v13[1] = v15;
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for FileExportOperation.Mode(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v15 = *a2;
        v16 = *(a2 + 8);
        v17 = *(a2 + 16);
        v18 = *(a2 + 24);
        v19 = *(a2 + 32);
        v20 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v16, v17, v18, v19, v20);
        *a1 = v15;
        *(a1 + 8) = v16;
        *(a1 + 16) = v17;
        *(a1 + 24) = v18;
        *(a1 + 32) = v19;
        *(a1 + 40) = v20;
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        v21 = *(a2 + 80);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v21;
        v22 = *(a2 + 88);
        v23 = *(a2 + 96);
        *(a1 + 88) = v22;
        *(a1 + 96) = v23;
      }

      else
      {
        v27 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v27;
        *(a1 + 16) = *(a2 + 16);
        v28 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v28;
        v29 = *(a2 + 40);
        v30 = *(a2 + 48);
        *(a1 + 40) = v29;
        *(a1 + 48) = v30;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v5 = type metadata accessor for URL();
        (*(*(v5 - 8) + 16))(a1, a2, v5);
        v6 = type metadata accessor for FileExportOperation.Move(0);
        v7 = *(v6 + 20);
        v8 = (a1 + v7);
        v9 = (a2 + v7);
        v10 = v9[1];
        *v8 = *v9;
        v8[1] = v10;
        v11 = *(v6 + 24);
        v12 = (a1 + v11);
        v13 = (a2 + v11);
        v14 = v13[1];
        *v12 = *v13;
        v12[1] = v14;
LABEL_11:

        swift_storeEnumTagMultiPayload();
        return a1;
      }

      *a1 = *a2;
      v24 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v24;
      v25 = *(a2 + 24);
      v26 = *(a2 + 32);
      *(a1 + 24) = v25;
      *(a1 + 32) = v26;
    }

    goto LABEL_11;
  }

  return a1;
}

char *initializeWithTake for FileExportOperation.Mode(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for FileExportOperation.Move(0);
    *&a1[*(v9 + 20)] = *&a2[*(v9 + 20)];
    *&a1[*(v9 + 24)] = *&a2[*(v9 + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for FileExportOperation.Mode(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.Mode);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for FileExportOperation.Move(0);
    *&a1[*(v9 + 20)] = *&a2[*(v9 + 20)];
    *&a1[*(v9 + 24)] = *&a2[*(v9 + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t FileExportOperation.Resolved.init(base:environment:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  outlined init with copy of FileExportOperation.Mode(a1, a3, type metadata accessor for FileExportOperation);
  v7 = type metadata accessor for FileExportOperation(0);
  if (*(a1 + v7[7] + 24))
  {
    v24 = v6;
    v25 = v5;
    v22 = 0;
    v23 = 0;
    MEMORY[0x18D009CB0](&v21);
    v8 = Text.resolveString(in:with:idiom:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = type metadata accessor for FileExportOperation.Resolved(0);
  v12 = (a3 + v11[5]);
  *v12 = v8;
  v12[1] = v10;
  if (*(a1 + v7[8] + 24))
  {
    v24 = v6;
    v25 = v5;
    v22 = 0;
    v23 = 0;
    MEMORY[0x18D009CB0](&v21);
    v13 = Text.resolveString(in:with:idiom:)();
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = (a3 + v11[6]);
  *v15 = v13;
  v15[1] = v14;
  v16 = *(a1 + v7[9] + 24);
  if (v16)
  {
    v24 = v6;
    v25 = v5;
    v22 = 0;
    v23 = 0;
    MEMORY[0x18D009CB0](&v21);
    v16 = Text.resolveString(in:with:idiom:)();
    v18 = v17;
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation);
  }

  else
  {

    result = outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation);
    v18 = 0;
  }

  v20 = (a3 + v11[7]);
  *v20 = v16;
  v20[1] = v18;
  return result;
}

uint64_t FileExportOperation.allowedContentTypes.getter()
{
  v1 = type metadata accessor for FileExportOperation.Mode(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of FileExportOperation.Mode(v0, v3, type metadata accessor for FileExportOperation.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = *v3;
      v6 = *(v3 + 1);
      v8 = *(v3 + 2);
      v9 = *(v3 + 3);
      v10 = *(v3 + 4);
      v5 = *(v3 + 6);
      if (v3[40])
      {
        if (v7)
        {
          v11 = *(v5 + 16);
          outlined copy of FileExportOperation.Storage(v7, v6, v8, v9, v10, 1);
          if (!v11)
          {

            outlined consume of FileExportOperation.Storage(v7, v6, v8, v9, v10, 1);

            return v10;
          }

          v12 = v7;
        }

        else
        {

          v12 = 0;
        }

        v14 = v6;
        v15 = v8;
        v16 = v9;
        v17 = v10;
        v18 = 1;
      }

      else
      {
        v13 = *(v5 + 16);
        outlined copy of FileExportOperation.Storage(v7, v6, v8, v9, v10, 0);
        if (!v13)
        {

          outlined consume of FileExportOperation.Storage(v7, v6, v8, v9, v10, 0);

          return v8;
        }

        v12 = v7;
        v14 = v6;
        v15 = v8;
        v16 = v9;
        v17 = v10;
        v18 = 0;
      }

      outlined consume of FileExportOperation.Storage(v12, v14, v15, v16, v17, v18);
    }

    else
    {
      v5 = specialized FileExportOperation.BatchExport.allowedContentTypes.getter(*v3, v3[8], *(v3 + 2));
    }
  }

  else
  {
    outlined destroy of FileExportOperation.Mode(v3, type metadata accessor for FileExportOperation.Mode);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t FileExportOperation.File.preferredFilename.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FileExportOperation.File.Storage(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (v0 + *(type metadata accessor for FileExportOperation.File(0) + 20));
  if (v8[1])
  {
    v9 = *v8;
  }

  else
  {
    outlined init with copy of FileExportOperation.Mode(v0, v7, type metadata accessor for FileExportOperation.File.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *v7;
      v11 = [*v7 filename];
      if (v11 || (v11 = [v10 preferredFilename]) != 0)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = MEMORY[0x18D00C850](v13, v15);

        isa = UTType._bridgeToObjectiveC()().super.isa;
        v18 = [v16 stringByAppendingPathExtensionForType_];

        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {

        v9 = 0;
      }
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
      v9 = URL.lastPathComponent.getter();
      (*(v2 + 8))(v4, v1);
    }
  }

  return v9;
}

uint64_t FileExportOperation.defaultName(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FileExportOperation.Mode(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  outlined init with copy of FileExportOperation.Mode(v2, v27 - v8, type metadata accessor for FileExportOperation.Mode);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of FileExportOperation.Mode(v9, type metadata accessor for FileExportOperation.Mode);
    goto LABEL_6;
  }

  v27[0] = a1;
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = *(v9 + 3);
  v14 = *(v9 + 4);
  v15 = v9[40];
  v16 = *(v9 + 6);
  v17 = *(v9 + 8);
  v27[2] = *(v9 + 10);
  v27[3] = v16;
  v27[1] = *(v9 + 12);
  if (!v17)
  {
    outlined consume of FileExportOperation.Storage(v11, v10, v12, v13, v14, v15);

LABEL_6:
    outlined init with copy of FileExportOperation.Mode(v2, v6, type metadata accessor for FileExportOperation.Mode);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v20 = *v6;
      if (v6[8] == 1 && v20[2])
      {
        v18 = v20[6];
        v21 = v20[7];

        if (v21)
        {
          return v18;
        }
      }

      else
      {
      }
    }

    else
    {
      outlined destroy of FileExportOperation.Mode(v6, type metadata accessor for FileExportOperation.Mode);
    }

    v22 = UTType.genericPartialFilename.getter();
    v23 = MEMORY[0x18D00C850](v22);

    isa = UTType._bridgeToObjectiveC()().super.isa;
    v25 = [v23 stringByAppendingPathExtensionForType_];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v18;
  }

  v18 = *(v9 + 7);
  v19 = v15;

  outlined consume of FileExportOperation.Storage(v11, v10, v12, v13, v14, v19);

  return v18;
}

uint64_t FileExportOperation.didFinish(with:)(void *a1, uint64_t a2)
{
  _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Result<URL, Error>?, type metadata accessor for Result<URL, Error>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-v9];
  v11 = type metadata accessor for FileExportOperation.Move(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for FileExportOperation.Mode(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of FileExportOperation.Mode(v2, v16, type metadata accessor for FileExportOperation.Mode);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      result = outlined init with take of FileExportOperation(v16, v13, type metadata accessor for FileExportOperation.Move);
      v18 = *&v13[*(v11 + 20)];
      if (a2 == 0xFF)
      {
        type metadata accessor for Result<URL, Error>();
        (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
LABEL_18:
        v18(v10);
        outlined destroy of FileExportOperation?(v10, &lazy cache variable for type metadata for Result<URL, Error>?, type metadata accessor for Result<URL, Error>);
        return outlined destroy of FileExportOperation.Mode(v13, type metadata accessor for FileExportOperation.Move);
      }

      if (a2)
      {
        *v10 = a1;
        type metadata accessor for Result<URL, Error>();
        v20 = v19;
        swift_storeEnumTagMultiPayload();
        outlined copy of Result<[URL], Error>(a1, 1);
LABEL_17:
        type metadata accessor for Result<URL, Error>();
        (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
        goto LABEL_18;
      }

      if (a1[2])
      {
        v30 = type metadata accessor for URL();
        (*(*(v30 - 8) + 16))(v10, a1 + ((*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80)), v30);
        type metadata accessor for Result<URL, Error>();
        v20 = v31;
        swift_storeEnumTagMultiPayload();
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_25;
    }

    (*(v16 + 1))(a1, a2);
  }

  if (result != 2)
  {
    (*(v16 + 3))(a1, a2);
  }

  v21 = *v16;
  v37 = *(v16 + 1);
  v38 = v21;
  v22 = *(v16 + 2);
  v23 = *(v16 + 3);
  v36 = *(v16 + 4);
  v35 = v16[40];
  v24 = *(v16 + 8);
  v25 = *(v16 + 9);
  v39 = *(v16 + 6);
  v40 = v24;
  if (a2 == 0xFF)
  {
    type metadata accessor for Result<URL, Error>();
    (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  }

  else
  {
    if (a2)
    {
      *v7 = a1;
      type metadata accessor for Result<URL, Error>();
      v27 = v26;
      swift_storeEnumTagMultiPayload();
      outlined copy of Result<[URL], Error>(a1, 1);
    }

    else
    {
      if (!a1[2])
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v32 = type metadata accessor for URL();
      (*(*(v32 - 8) + 16))(v7, a1 + ((*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80)), v32);
      type metadata accessor for Result<URL, Error>();
      v27 = v33;
      swift_storeEnumTagMultiPayload();
    }

    type metadata accessor for Result<URL, Error>();
    (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
  }

  v25(v7);
  outlined consume of FileExportOperation.Storage(v38, v37, v22, v23, v36, v35);

  return outlined destroy of FileExportOperation?(v7, &lazy cache variable for type metadata for Result<URL, Error>?, type metadata accessor for Result<URL, Error>);
}

Swift::Void __swiftcall FileExportOperation.didCancel()()
{
  v1 = v0;
  v2 = type metadata accessor for FileExportOperation.Move(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FileExportOperation.Mode(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of FileExportOperation.Mode(v1, v7, type metadata accessor for FileExportOperation.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *v7;
      v11 = *(v7 + 1);
      v12 = *(v7 + 2);
      v13 = *(v7 + 3);
      v14 = *(v7 + 4);
      v15 = v7[40];
      (*(v7 + 11))();
      outlined consume of FileExportOperation.Storage(v10, v11, v12, v13, v14, v15);
    }

    else
    {
      (*(v7 + 5))();
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = outlined init with take of FileExportOperation(v7, v4, type metadata accessor for FileExportOperation.Move);
      (*&v4[*(v2 + 24)])(v9);
      outlined destroy of FileExportOperation.Mode(v4, type metadata accessor for FileExportOperation.Move);
      return;
    }

    (*(v7 + 3))();
  }
}

uint64_t FileExportOperation.writeTemporaryFilesIfNecessary()()
{
  v1[23] = v0;
  v1[24] = type metadata accessor for FileExportOperation.File.Storage(0);
  v1[25] = swift_task_alloc();
  type metadata accessor for (key: NSFileWrapper, value: UTType)();
  v1[26] = v2;
  v1[27] = swift_task_alloc();
  _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = type metadata accessor for FileExportOperation.File(0);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = type metadata accessor for FileDocumentWriteConfiguration(0);
  v1[36] = swift_task_alloc();
  v3 = type metadata accessor for UTType();
  v1[37] = v3;
  v1[38] = *(v3 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  type metadata accessor for FileExportOperation.Move(0);
  v1[43] = swift_task_alloc();
  v1[44] = type metadata accessor for FileExportOperation.Mode(0);
  v1[45] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[46] = v4;
  v1[47] = *(v4 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FileExportOperation.writeTemporaryFilesIfNecessary(), 0, 0);
}

{
  v1 = *(v0 + 360);
  v2 = *(v0 + 184);
  v3 = [objc_opt_self() defaultManager];
  v4 = [v3 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  outlined init with copy of FileExportOperation.Mode(v2, v1, type metadata accessor for FileExportOperation.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v83 = **(v0 + 360);
    }

    else
    {
      v6 = *(v0 + 368);
      v7 = *(v0 + 376);
      v8 = *(v0 + 344);
      outlined init with take of FileExportOperation(*(v0 + 360), v8, type metadata accessor for FileExportOperation.Move);
      _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<URL>, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_18CD63400;
      v83 = v10;
      (*(v7 + 16))(v10 + v9, v8, v6);
      outlined destroy of FileExportOperation.Mode(v8, type metadata accessor for FileExportOperation.Move);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = *(v0 + 360);
    v12 = v11[2];
    v13 = *v11;
    *(v0 + 32) = v11[1];
    *(v0 + 48) = v12;
    *(v0 + 16) = v13;
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    *(v0 + 112) = *(v11 + 12);
    *(v0 + 80) = v15;
    *(v0 + 96) = v16;
    *(v0 + 64) = v14;
    v17 = *(v0 + 16);
    v18 = *(v0 + 24);
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    *(v0 + 440) = v18;
    *(v0 + 448) = v19;
    v21 = *(v0 + 48);
    *(v0 + 456) = v21;
    if (*(v0 + 56))
    {
      if (v17)
      {
        *(v0 + 120) = v17;
        *(v0 + 128) = v18;
        *(v0 + 136) = v20;
        *(v0 + 144) = v19;
        *(v0 + 152) = v21;
        outlined copy of AnyTransferable?(v17);
        v22 = FileExportOperation.allowedContentTypes.getter();
        if (*(v22 + 16))
        {
          v23 = *(v0 + 320);
          v24 = *(v0 + 296);
          v25 = *(v0 + 304);
          v26 = *(v0 + 232);
          v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
          v28 = *(v25 + 16);
          *(v0 + 464) = v28;
          *(v0 + 472) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v28(v23, v22 + v27, v24);

          v29 = *(v25 + 32);
          *(v0 + 480) = v29;
          *(v0 + 488) = (v25 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v29(v26, v23, v24);
          (*(v25 + 56))(v26, 0, 1, v24);
          v30 = swift_task_alloc();
          *(v0 + 496) = v30;
          *v30 = v0;
          v30[1] = FileExportOperation.writeTemporaryFilesIfNecessary();
          v32 = *(v0 + 232);
          v31 = *(v0 + 240);

          return AnyTransferable.newFileWrapper(contentType:)(v31, v32);
        }

        goto LABEL_30;
      }

      lazy protocol witness table accessor for type FileExportOperation.Error and conformance FileExportOperation.Error();
      v45 = swift_allocError();
      *v46 = 1;
      v83 = v45;
      swift_willThrow();
      outlined destroy of FileExportOperation.Export(v0 + 16);
    }

    else
    {

      v38 = FileExportOperation.allowedContentTypes.getter();
      if (!*(v38 + 16))
      {

        __break(1u);
LABEL_30:

        __break(1u);
LABEL_31:

        __break(1u);
        return result;
      }

      v39 = *(v0 + 336);
      v40 = *(v0 + 296);
      v41 = *(v0 + 304);
      v42 = *(v0 + 288);
      v84 = *(v0 + 280);
      v43 = *(v41 + 16);
      v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43(v39, v38 + v44, v40);

      v43(v42, v39, v40);
      *(v42 + *(v84 + 20)) = 0;
      v82 = v17(v42);
      v47 = *(v0 + 376);
      v48 = *(v0 + 336);
      v49 = *(v0 + 296);
      v50 = *(v0 + 304);
      outlined destroy of FileExportOperation.Mode(*(v0 + 288), type metadata accessor for FileDocumentWriteConfiguration);
      v81 = *(v50 + 8);
      v81(v48, v49);
      _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<URL>, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
      v80 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_18CD63400;
      v51 = FileExportOperation.allowedContentTypes.getter();
      if (!*(v51 + 16))
      {
        goto LABEL_31;
      }

      v52 = *(v0 + 328);
      v53 = *(v0 + 296);
      v54 = *(v0 + 272);
      v55 = *(v0 + 248);
      v43(v52, v51 + v44, v53);

      v56 = *(v55 + 24);
      v43(v54 + v56, v52, v53);
      v57 = (v54 + *(v55 + 20));
      *v57 = 0;
      v57[1] = 0;
      *v54 = v82;
      swift_storeEnumTagMultiPayload();
      v58 = v82;
      FileExportOperation.File.preferredFilename.getter();
      if (!v59)
      {
        v60 = FileExportOperation.defaultName(for:)(v54 + v56);
        v61 = MEMORY[0x18D00C850](v60);

        isa = UTType._bridgeToObjectiveC()().super.isa;
        v63 = [v61 stringByAppendingPathExtensionForType_];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      outlined destroy of FileExportOperation.Mode(*(v0 + 272), type metadata accessor for FileExportOperation.File);
      URL.appendingPathComponent(_:)();

      URL._bridgeToObjectiveC()(v64);
      v66 = v65;
      *(v0 + 176) = 0;
      v67 = [v58 writeToURL:v65 options:0 originalContentsURL:0 error:v0 + 176];

      v68 = *(v0 + 176);
      v69 = *(v0 + 424);
      v71 = *(v0 + 368);
      v70 = *(v0 + 376);
      v72 = *(v0 + 328);
      v73 = *(v0 + 296);
      if (v67)
      {
        (*(v70 + 32))(v83 + v80, *(v0 + 424), *(v0 + 368));
        v74 = v68;
        v81(v72, v73);

        outlined destroy of FileExportOperation.Export(v0 + 16);
LABEL_12:
        (*(*(v0 + 376) + 8))(*(v0 + 432), *(v0 + 368));
        v79 = 0;
LABEL_26:

        v78 = *(v0 + 8);

        return v78(v83, v79);
      }

      v75 = v68;
      v76 = v58;
      v77 = _convertNSErrorToError(_:)();

      swift_willThrow();

      outlined destroy of FileExportOperation.Export(v0 + 16);

      (*(v70 + 8))(v69, v71);
      v81(v72, v73);
      *(v83 + 16) = 0;

      v83 = v77;
    }

    (*(*(v0 + 376) + 8))(*(v0 + 432), *(v0 + 368));
    v79 = 1;
    goto LABEL_26;
  }

  v34 = *(v0 + 360);
  v35 = *v34;
  *(v0 + 520) = *v34;
  v36 = *(v34 + 8);
  *(v0 + 528) = *(v34 + 16);
  *(v0 + 536) = *(v34 + 32);
  *(v0 + 544) = *(v34 + 48);
  v37 = swift_task_alloc();
  *(v0 + 552) = v37;
  *v37 = v0;
  v37[1] = FileExportOperation.writeTemporaryFilesIfNecessary();

  return FileExportOperation.makeFileWrappers(from:)(v35, v36);
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<URL>, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v38 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_18CD63400;
  outlined init with copy of UTType?(v4, v5);
  v6 = *(v3 + 48);
  if (v6(v5, 1, v2) == 1)
  {
    v7 = *(v0 + 296);
    v8 = *(v0 + 224);
    static UTType.data.getter();
    if (v6(v8, 1, v7) != 1)
    {
      outlined destroy of FileExportOperation?(*(v0 + 224), &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    }
  }

  else
  {
    (*(v0 + 480))(*(v0 + 312), *(v0 + 224), *(v0 + 296));
  }

  v9 = *(v0 + 504);
  v10 = *(v0 + 264);
  v11 = *(v0 + 248);
  v12 = *(v11 + 24);
  (*(v0 + 464))(&v10[v12], *(v0 + 312), *(v0 + 296));
  v13 = &v10[*(v11 + 20)];
  *v13 = 0;
  *(v13 + 1) = 0;
  *v10 = v9;
  swift_storeEnumTagMultiPayload();
  v14 = v9;
  FileExportOperation.File.preferredFilename.getter();
  if (!v15)
  {
    v16 = FileExportOperation.defaultName(for:)(&v10[v12]);
    v17 = MEMORY[0x18D00C850](v16);

    isa = UTType._bridgeToObjectiveC()().super.isa;
    v19 = [v17 stringByAppendingPathExtensionForType_];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = *(v0 + 504);
  outlined destroy of FileExportOperation.Mode(*(v0 + 264), type metadata accessor for FileExportOperation.File);
  URL.appendingPathComponent(_:)();

  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  *(v0 + 168) = 0;
  v24 = [v20 writeToURL:v22 options:0 originalContentsURL:0 error:v0 + 168];

  v25 = *(v0 + 168);
  v40 = *(v0 + 504);
  v26 = *(v0 + 416);
  v27 = *(v0 + 368);
  v28 = *(v0 + 376);
  v29 = *(v0 + 304);
  v39 = *(v0 + 312);
  v30 = *(v0 + 296);
  v41 = *(v0 + 240);
  v37 = v24;
  if (v24)
  {
    (*(v28 + 32))(v42 + v38, v26, v27);
    v31 = *(v29 + 8);
    v32 = v25;
    v31(v39, v30);

    outlined destroy of FileExportOperation.Export(v0 + 16);

    outlined destroy of FileExportOperation?(v41, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    (*(*(v0 + 376) + 8))(*(v0 + 432), *(v0 + 368));
  }

  else
  {
    v33 = v25;
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();

    outlined destroy of FileExportOperation.Export(v0 + 16);

    (*(v28 + 8))(v26, v27);
    (*(v29 + 8))(v39, v30);
    outlined destroy of FileExportOperation?(v41, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    *(v42 + 16) = 0;

    (*(*(v0 + 376) + 8))(*(v0 + 432), *(v0 + 368));
    v42 = v34;
  }

  v35 = *(v0 + 8);

  return v35(v42, v37 ^ 1);
}

{
  v1 = v0[70];
  v2 = v0[47];
  v67 = v0[31];
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v68 = v0[38];
  v66 = v0[26];
  v74 = (v2 + 32);
  v71 = (v2 + 8);
  v65 = v0[47];
  v61 = (v2 + 16);
  v69 = v0[70];

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v62 = v7;
  v64 = v3;
  if (v6)
  {
    while (1)
    {
      v73 = v9;
LABEL_9:
      v11 = v76[37];
      v12 = v76[32];
      v13 = v76[27];
      v72 = v76[25];
      v14 = __clz(__rbit64(v6)) | (v8 << 6);
      v15 = *(*(v69 + 48) + 8 * v14);
      v16 = *(v66 + 48);
      v17 = *(v68 + 16);
      v17(&v13[v16], *(v69 + 56) + *(v68 + 72) * v14, v11);
      *v13 = v15;
      v70 = *(v67 + 24);
      v18 = &v13[v16];
      v19 = v15;
      v17(&v12[v70], v18, v11);
      v20 = &v12[*(v67 + 20)];
      *v20 = 0;
      *(v20 + 1) = 0;
      *v12 = v15;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of FileExportOperation.Mode(v12, v72, type metadata accessor for FileExportOperation.File.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *v76[25];
        v22 = v15;
        v23 = [v21 filename];
        if (v23 || (v23 = [v21 preferredFilename]) != 0)
        {
          v24 = v23;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          v28 = MEMORY[0x18D00C850](v25, v27);

          isa = UTType._bridgeToObjectiveC()().super.isa;
          v30 = [v28 stringByAppendingPathExtensionForType_];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {

          v49 = FileExportOperation.defaultName(for:)(&v12[v70]);
          v50 = MEMORY[0x18D00C850](v49);

          v51 = UTType._bridgeToObjectiveC()().super.isa;
          v52 = [v50 stringByAppendingPathExtensionForType_];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      else
      {
        v31 = v76[49];
        v32 = v76[46];
        (*v74)(v31, v76[25], v32);
        v33 = v19;
        URL.lastPathComponent.getter();
        (*v71)(v31, v32);
      }

      outlined destroy of FileExportOperation.Mode(v76[32], type metadata accessor for FileExportOperation.File);
      URL.appendingPathComponent(_:)();

      URL._bridgeToObjectiveC()(v34);
      v36 = v35;
      v76[20] = 0;
      v37 = [v19 writeToURL:v35 options:0 originalContentsURL:0 error:v76 + 20];

      v38 = v76[20];
      if (!v37)
      {
        break;
      }

      v39 = v76[51];
      v40 = v76[48];
      v41 = v76[46];
      v42 = *v74;
      (*v74)(v39, v76[50], v41);
      (*v61)(v40, v39, v41);
      v43 = v38;
      v9 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
      }

      v45 = v9[2];
      v44 = v9[3];
      if (v45 >= v44 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v9);
      }

      v6 &= v6 - 1;
      v46 = v76[48];
      v47 = v76[46];
      v48 = v76[27];
      (*(v65 + 8))(v76[51], v47);
      v9[2] = v45 + 1;
      v42(v9 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v45, v46, v47);
      outlined destroy of FileExportOperation.Mode(v48, type metadata accessor for (key: NSFileWrapper, value: UTType));
      v7 = v62;
      v3 = v64;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v56 = v76[50];
    v57 = v76[46];
    v75 = v76[27];
    v58 = v38;
    v59 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v60 = *v71;
    (*v71)(v56, v57);

    outlined destroy of FileExportOperation.Mode(v75, type metadata accessor for (key: NSFileWrapper, value: UTType));

    v60(v76[54], v76[46]);

    v63 = 1;
    v53 = v59;
  }

  else
  {
    while (1)
    {
LABEL_5:
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
      }

      if (v10 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v8;
      if (v6)
      {
        v73 = v9;
        v8 = v10;
        goto LABEL_9;
      }
    }

    v53 = v9;

    (*(v76[47] + 8))(v76[54], v76[46]);
    v63 = 0;
  }

  v54 = v76[1];

  return v54(v53, v63);
}

{

  outlined destroy of FileExportOperation.Export((v0 + 2));
  v3 = v0[64];
  (*(v0[47] + 8))(v0[54], v0[46]);

  v1 = v0[1];

  return v1(v3, 1);
}

{
  v1 = v0[47];

  v4 = v0[71];
  (*(v1 + 8))(v0[54], v0[46]);

  v2 = v0[1];

  return v2(v4, 1);
}

uint64_t FileExportOperation.writeTemporaryFilesIfNecessary()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 504) = a1;
  *(v4 + 512) = v1;

  outlined destroy of FileExportOperation?(*(v3 + 232), &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (v1)
  {
    v5 = FileExportOperation.writeTemporaryFilesIfNecessary();
  }

  else
  {
    v5 = FileExportOperation.writeTemporaryFilesIfNecessary();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = v1;

  if (v1)
  {
    v4 = FileExportOperation.writeTemporaryFilesIfNecessary();
  }

  else
  {
    v4 = FileExportOperation.writeTemporaryFilesIfNecessary();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t FileExportOperation.makeFileWrappers(from:)(uint64_t a1, char a2)
{
  *(v3 + 320) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  *(v3 + 88) = type metadata accessor for FileExportOperation.Mode(0);
  *(v3 + 96) = swift_task_alloc();
  _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = type metadata accessor for FileDocumentWriteConfiguration(0);
  *(v3 + 144) = swift_task_alloc();
  v4 = type metadata accessor for UTType();
  *(v3 + 152) = v4;
  *(v3 + 160) = *(v4 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FileExportOperation.makeFileWrappers(from:), 0, 0);
}

uint64_t FileExportOperation.makeFileWrappers(from:)()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 72);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13NSFileWrapperC_22UniformTypeIdentifiers6UTTypeVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = v3;
  if (v1)
  {
    v5 = *(v2 + 16);
    *(v0 + 208) = v5;
    if (v5)
    {
      *(v0 + 224) = 0;
      *(v0 + 232) = v3;
      *(v0 + 216) = v3;
      v6 = *(v0 + 96);
      v8 = *(v0 + 72);
      v7 = *(v0 + 80);
      v9 = v8[4];
      v10 = v8[5];
      *(v0 + 240) = v10;
      v11 = v8[6];
      v12 = v8[7];
      *(v0 + 248) = v12;
      v13 = v8[8];
      *(v0 + 256) = v13;
      *(v0 + 16) = v9;
      *(v0 + 24) = v10;
      *(v0 + 32) = v11;
      *(v0 + 40) = v12;
      *(v0 + 48) = v13;
      outlined init with copy of FileExportOperation.Mode(v7, v6, type metadata accessor for FileExportOperation.Mode);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload < 2)
      {
        v15 = *(v0 + 96);

        outlined destroy of FileExportOperation.Mode(v15, type metadata accessor for FileExportOperation.Mode);
LABEL_5:
        v16 = MEMORY[0x1E69E7CC0];
        goto LABEL_51;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v48 = *(v0 + 96);
        v49 = *v48;
        v50 = *(v48 + 8);
        v52 = *(v48 + 16);
        v51 = *(v48 + 24);
        v53 = *(v48 + 32);
        v16 = *(v48 + 48);
        v81 = v0;
        if (*(v48 + 40))
        {
          v79 = *(v48 + 32);
          if (!v49)
          {

            outlined consume of FileExportOperation.Storage(0, v50, v52, v51, v53, 1);

            goto LABEL_43;
          }

          v54 = *(v16 + 16);

          outlined copy of FileExportOperation.Storage(v49, v50, v52, v51, v79, 1);
          if (!v54)
          {

            outlined consume of FileExportOperation.Storage(v49, v50, v52, v51, v79, 1);

            v16 = v79;
            goto LABEL_50;
          }

          v55 = v49;
          v56 = v50;
          v57 = v52;
          v58 = v51;
          v59 = v79;
          v60 = 1;
        }

        else
        {
          v66 = *(v16 + 16);

          outlined copy of FileExportOperation.Storage(v49, v50, v52, v51, v53, 0);
          if (!v66)
          {

            outlined consume of FileExportOperation.Storage(v49, v50, v52, v51, v53, 0);

            v16 = v52;
            goto LABEL_50;
          }

          v55 = v49;
          v56 = v50;
          v57 = v52;
          v58 = v51;
          v59 = v53;
          v60 = 0;
        }

        outlined consume of FileExportOperation.Storage(v55, v56, v57, v58, v59, v60);

LABEL_43:

LABEL_50:
        v0 = v81;
LABEL_51:
        if (*(v16 + 16))
        {
          v67 = *(v0 + 176);
          v68 = *(v0 + 152);
          v69 = *(v0 + 160);
          v70 = *(v0 + 120);
          (*(v69 + 16))(v67, v16 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), v68);

          v71 = *(v69 + 32);
          *(v0 + 264) = v71;
          *(v0 + 272) = (v69 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v71(v70, v67, v68);
          v72 = *(v69 + 56);
          *(v0 + 280) = v72;
          *(v0 + 288) = (v69 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
          v72(v70, 0, 1, v68);
          v73 = swift_task_alloc();
          *(v0 + 296) = v73;
          *v73 = v0;
          v73[1] = FileExportOperation.makeFileWrappers(from:);
          v75 = *(v0 + 120);
          v74 = *(v0 + 128);

          return AnyTransferable.newFileWrapper(contentType:)(v74, v75);
        }

LABEL_58:

        __break(1u);
        return result;
      }

      v61 = *(v0 + 96);
      v62 = *v61;
      v63 = *(v61 + 8);
      v16 = *(v61 + 16);
      v64 = *(v16 + 16);
      if (v63)
      {
        if (!v64)
        {
          if (v62[2])
          {
            v65 = v62[8];
LABEL_47:

            v16 = v65;
            goto LABEL_51;
          }

          goto LABEL_48;
        }
      }

      else if (!v64)
      {
        if (v62[2])
        {
          v65 = v62[6];
          goto LABEL_47;
        }

LABEL_48:

        goto LABEL_5;
      }

      goto LABEL_51;
    }

LABEL_22:

    v46 = *(v0 + 8);

    return v46(v4);
  }

  v17 = FileExportOperation.allowedContentTypes.getter();
  if (!*(v17 + 16))
  {
LABEL_57:

    __break(1u);
    goto LABEL_58;
  }

  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v22 = *(v21 + 16);
  v22(v19, v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);

  v76 = *(v21 + 32);
  v76(v18, v19, v20);
  v23 = *(v2 + 16);
  if (!v23)
  {
LABEL_21:
    (*(*(v0 + 160) + 8))(*(v0 + 200), *(v0 + 152));
    goto LABEL_22;
  }

  v78 = *(v0 + 136);
  v77 = *(v0 + 160);
  v24 = v2 + 48;
  while (1)
  {
    v80 = v4;
    v25 = *(v0 + 144);
    v26 = *(v24 - 16);
    v22(v25, *(v0 + 200), *(v0 + 152));
    *(v25 + *(v78 + 20)) = 0;

    v27 = v26(v25);
    v28 = *(v0 + 200);
    v29 = *(v0 + 152);
    v30 = v23;
    v31 = *(v0 + 184);
    outlined destroy of FileExportOperation.Mode(*(v0 + 144), type metadata accessor for FileDocumentWriteConfiguration);
    v22(v31, v28, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
    v35 = v4[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v39 = v34;
    if (v4[3] < v38)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = v33;
      specialized _NativeDictionary.copy()();
      v33 = v45;
    }

    v4 = v80;
LABEL_18:
    v41 = *(v0 + 184);
    v42 = *(v0 + 152);
    if (v39)
    {
      (*(v77 + 40))(v4[7] + *(v77 + 72) * v33, v41, v42);
    }

    else
    {
      v4[(v33 >> 6) + 8] |= 1 << v33;
      *(v4[6] + 8 * v33) = v27;
      v76(v4[7] + *(v77 + 72) * v33, v41, v42);

      v43 = v4[2];
      v37 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v37)
      {
        goto LABEL_56;
      }

      v4[2] = v44;
    }

    v24 += 24;
    --v23;
    if (v30 == 1)
    {
      goto LABEL_21;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
  if ((v39 & 1) == (v40 & 1))
  {
    goto LABEL_18;
  }

  type metadata accessor for NSFileWrapper();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 112);
  outlined init with copy of UTType?(*(v0 + 128), v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 304);
  if (v4 == 1)
  {
    outlined destroy of FileExportOperation?(*(v0 + 112), &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if ((v7 & 1) == 0)
    {
      v30 = *(v0 + 304);
      outlined destroy of FileExportOperation?(*(v0 + 128), &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);

      v17 = *(v0 + 232);
      v11 = *(v0 + 216);
      v16 = 1;
      goto LABEL_12;
    }

    v5 = v6;
    v8 = (v0 + 216);
    v9 = *(v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 56) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v11 = *v8;
      v12 = *(v0 + 264);
      v83 = *(v0 + 304);
      v14 = *(v0 + 152);
      v13 = *(v0 + 160);
      v84 = *(v0 + 128);
      v15 = *(v0 + 104);

      v12(v15, v11[7] + *(v13 + 72) * v5, v14);
      specialized _NativeDictionary._delete(at:)(v5, v11);

      outlined destroy of FileExportOperation?(v84, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
      v16 = 0;
      v17 = v11;
LABEL_12:
      v31 = *(v0 + 104);
      (*(v0 + 280))(v31, v16, 1, *(v0 + 152));
      outlined destroy of FileExportOperation?(v31, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
      goto LABEL_20;
    }

LABEL_53:
    v8 = (v0 + 56);
    specialized _NativeDictionary.copy()();
    goto LABEL_4;
  }

  v18 = *(v0 + 216);
  (*(v0 + 264))(*(v0 + 168), *(v0 + 112), *(v0 + 152));
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v18;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v22 = *(v18 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_53;
  }

  v26 = v21;
  if (*(*(v0 + 216) + 24) >= v25)
  {
    if ((v19 & 1) == 0)
    {
      v80 = v20;
      specialized _NativeDictionary.copy()();
      v20 = v80;
    }

    goto LABEL_15;
  }

  v27 = *(v0 + 304);
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v19);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
  if ((v26 & 1) == (v28 & 1))
  {
LABEL_15:
    v11 = *(v0 + 64);
    v32 = *(v0 + 304);
    if (v26)
    {
      v33 = *(v0 + 128);
      (*(*(v0 + 160) + 40))(v11[7] + *(*(v0 + 160) + 72) * v20, *(v0 + 168), *(v0 + 152));

      outlined destroy of FileExportOperation?(v33, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    }

    else
    {
      v34 = *(v0 + 264);
      v36 = *(v0 + 160);
      v35 = *(v0 + 168);
      v37 = *(v0 + 152);
      v38 = *(v0 + 128);
      v11[(v20 >> 6) + 8] |= 1 << v20;
      *(v11[6] + 8 * v20) = v32;
      v34(v11[7] + *(v36 + 72) * v20, v35, v37);

      outlined destroy of FileExportOperation?(v38, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
      v39 = v11[2];
      v24 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v24)
      {
        __break(1u);
        goto LABEL_55;
      }

      v11[2] = v40;
    }

    v17 = v11;
LABEL_20:
    v41 = *(v0 + 224) + 1;
    if (v41 == *(v0 + 208))
    {

      v42 = *(v0 + 8);

      return v42(v17);
    }

    *(v0 + 224) = v41;
    *(v0 + 232) = v17;
    *(v0 + 216) = v11;
    v43 = *(v0 + 96);
    v44 = *(v0 + 80);
    v45 = (*(v0 + 72) + 40 * v41);
    v46 = v45[4];
    v47 = v45[5];
    *(v0 + 240) = v47;
    v48 = v45[6];
    v49 = v45[7];
    *(v0 + 248) = v49;
    v50 = v45[8];
    *(v0 + 256) = v50;
    *(v0 + 16) = v46;
    *(v0 + 24) = v47;
    *(v0 + 32) = v48;
    *(v0 + 40) = v49;
    *(v0 + 48) = v50;
    outlined init with copy of FileExportOperation.Mode(v44, v43, type metadata accessor for FileExportOperation.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v52 = *(v0 + 96);

      outlined destroy of FileExportOperation.Mode(v52, type metadata accessor for FileExportOperation.Mode);
LABEL_26:
      v53 = MEMORY[0x1E69E7CC0];
      goto LABEL_48;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v54 = *(v0 + 96);
      v55 = *v54;
      v56 = *(v54 + 8);
      v58 = *(v54 + 16);
      v57 = *(v54 + 24);
      v59 = *(v54 + 32);
      v53 = *(v54 + 48);
      if (*(v54 + 40))
      {
        if (v55)
        {
          v81 = *(v53 + 16);

          outlined copy of FileExportOperation.Storage(v55, v56, v58, v57, v59, 1);
          if (v81)
          {

            v60 = v55;
            v61 = v56;
            v62 = v58;
            v63 = v57;
            v64 = v59;
            v65 = 1;
LABEL_38:
            outlined consume of FileExportOperation.Storage(v60, v61, v62, v63, v64, v65);

            goto LABEL_48;
          }

          outlined consume of FileExportOperation.Storage(v55, v56, v58, v57, v59, 1);

          v53 = v59;
        }

        else
        {

          outlined consume of FileExportOperation.Storage(0, v56, v58, v57, v59, 1);
        }
      }

      else
      {
        v82 = *(v53 + 16);

        outlined copy of FileExportOperation.Storage(v55, v56, v58, v57, v59, 0);
        if (v82)
        {

          v60 = v55;
          v61 = v56;
          v62 = v58;
          v63 = v57;
          v64 = v59;
          v65 = 0;
          goto LABEL_38;
        }

        outlined consume of FileExportOperation.Storage(v55, v56, v58, v57, v59, 0);

        v53 = v58;
      }

LABEL_48:
      if (*(v53 + 16))
      {
        v71 = *(v0 + 176);
        v72 = *(v0 + 152);
        v73 = *(v0 + 160);
        v74 = *(v0 + 120);
        (*(v73 + 16))(v71, v53 + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v72);

        v75 = *(v73 + 32);
        *(v0 + 264) = v75;
        *(v0 + 272) = (v73 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v75(v74, v71, v72);
        v76 = *(v73 + 56);
        *(v0 + 280) = v76;
        *(v0 + 288) = (v73 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v76(v74, 0, 1, v72);
        v77 = swift_task_alloc();
        *(v0 + 296) = v77;
        *v77 = v0;
        v77[1] = FileExportOperation.makeFileWrappers(from:);
        v79 = *(v0 + 120);
        v78 = *(v0 + 128);

        return AnyTransferable.newFileWrapper(contentType:)(v78, v79);
      }

LABEL_55:

      __break(1u);
      return result;
    }

    v66 = *(v0 + 96);
    v67 = *v66;
    v68 = *(v66 + 8);
    v53 = *(v66 + 16);
    v69 = *(v53 + 16);
    if (v68)
    {
      if (!v69)
      {
        if (v67[2])
        {
          v70 = v67[8];
LABEL_45:

          v53 = v70;
          goto LABEL_48;
        }

        goto LABEL_46;
      }
    }

    else if (!v69)
    {
      if (v67[2])
      {
        v70 = v67[6];
        goto LABEL_45;
      }

LABEL_46:

      goto LABEL_26;
    }

    goto LABEL_48;
  }

  type metadata accessor for NSFileWrapper();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FileExportOperation.makeFileWrappers(from:)(uint64_t a1)
{
  v3 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  outlined destroy of FileExportOperation?(v3[15], &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (v1)
  {

    v4 = FileExportOperation.makeFileWrappers(from:);
  }

  else
  {
    v4 = FileExportOperation.makeFileWrappers(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance FileExportOperation.Key(uint64_t a1, void (*a2)(void))
{
  _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for FileExportOperation?, type metadata accessor for FileExportOperation, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  outlined init with take of FileExportOperation?(a1, v6);
  v10 = type metadata accessor for FileExportOperation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v6, 1, v10) == 1)
  {
    a2();
    if (v12(v6, 1, v10) != 1)
    {
      outlined destroy of FileExportOperation?(v6, &lazy cache variable for type metadata for FileExportOperation?, type metadata accessor for FileExportOperation);
    }
  }

  else
  {
    outlined init with take of FileExportOperation(v6, v9, type metadata accessor for FileExportOperation);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  return outlined init with take of FileExportOperation?(v9, a1);
}

uint64_t UTType.genericPartialFilename.getter()
{
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v17._object = 0x800000018CD51040;
  v3._countAndFlagsBits = 0x646574726F707845;
  v3._object = 0xEB00000000402520;
  v4.value._object = 0x800000018CD51020;
  v17._countAndFlagsBits = 0xD000000000000028;
  v4.value._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0x646574726F707845;
  v5._object = 0xEB00000000402520;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v17);

  type metadata accessor for _ContiguousArrayStorage<CVarArg>();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63400;
  countAndFlagsBits = UTType.localizedDescription.getter();
  object = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (!object)
  {
    v10 = [v1 bundleForClass_];
    v18._object = 0x800000018CD51070;
    v11.value._object = 0x800000018CD51020;
    v18._countAndFlagsBits = 0xD000000000000026;
    v12._countAndFlagsBits = 1701603686;
    v12._object = 0xE400000000000000;
    v11.value._countAndFlagsBits = 0xD000000000000010;
    v13._countAndFlagsBits = 1701603686;
    v13._object = 0xE400000000000000;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v18);
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
  }

  *(v6 + 32) = countAndFlagsBits;
  *(v6 + 40) = object;
  v15 = String.init(format:_:)();

  return v15;
}

uint64_t protocol witness for ConfigurableFileOperation.customizationID.setter in conformance FileExportOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for ConfigurableFileOperation.message.setter in conformance FileExportOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (v5 + *(a5 + 28));
  result = outlined consume of Text?(*v10, v10[1], v10[2], v10[3]);
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t protocol witness for ConfigurableFileOperation.confirmationLabel.setter in conformance FileExportOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (v5 + *(a5 + 32));
  result = outlined consume of Text?(*v10, v10[1], v10[2], v10[3]);
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t protocol witness for ConfigurableFileOperation.filenameLabel.setter in conformance FileExportOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (v5 + *(a5 + 36));
  result = outlined consume of Text?(*v10, v10[1], v10[2], v10[3]);
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t protocol witness for ConfigurableFileOperation.browserOptions.setter in conformance FileExportOperation(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v4 = v2 + *(a2 + 48);
  *v4 = *result;
  *(v4 + 8) = v3;
  return result;
}

uint64_t outlined assign with take of Predicate<Pack{URL}>?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation3URLVSgMaTm_3(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of FileExportOperation?(uint64_t a1, uint64_t a2)
{
  _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for FileExportOperation?, type metadata accessor for FileExportOperation, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of FileExportOperation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (key: NSFileWrapper, value: UTType)()
{
  if (!lazy cache variable for type metadata for (key: NSFileWrapper, value: UTType))
  {
    type metadata accessor for NSFileWrapper();
    type metadata accessor for UTType();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: NSFileWrapper, value: UTType));
    }
  }
}

unint64_t type metadata accessor for NSFileWrapper()
{
  result = lazy cache variable for type metadata for NSFileWrapper;
  if (!lazy cache variable for type metadata for NSFileWrapper)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileWrapper);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FileExportOperation.Error and conformance FileExportOperation.Error()
{
  result = lazy protocol witness table cache variable for type FileExportOperation.Error and conformance FileExportOperation.Error;
  if (!lazy protocol witness table cache variable for type FileExportOperation.Error and conformance FileExportOperation.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileExportOperation.Error and conformance FileExportOperation.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileExportOperation.Error and conformance FileExportOperation.Error;
  if (!lazy protocol witness table cache variable for type FileExportOperation.Error and conformance FileExportOperation.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileExportOperation.Error and conformance FileExportOperation.Error);
  }

  return result;
}

uint64_t outlined destroy of FileExportOperation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation3URLVSgMaTm_3(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized FileExportOperation.BatchExport.allowedContentTypes.getter(void *a1, char a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a3 + 16);
  if ((a2 & 1) == 0)
  {
    if (v4)
    {
      goto LABEL_8;
    }

    if (a1[2])
    {
      v3 = a1[6];
      goto LABEL_8;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!v4)
  {
    if (a1[2])
    {
      v3 = a1[8];
      goto LABEL_8;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:

  return v3;
}

uint64_t outlined init with copy of FileExportOperation.Mode(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *initializeBufferWithCopyOfBuffer for FileExportOperation.File(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];
  }

  else
  {
    type metadata accessor for FileExportOperation.File.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *a2;
      *a1 = *a2;
      v8 = v7;
    }

    else
    {
      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
    }

    swift_storeEnumTagMultiPayload();
    v11 = *(a3 + 20);
    v12 = *(a3 + 24);
    v13 = &a1[v11];
    v14 = (a2 + v11);
    v15 = v14[1];
    *v13 = *v14;
    *(v13 + 1) = v15;
    v16 = type metadata accessor for UTType();
    v17 = *(*(v16 - 8) + 16);

    v17(&a1[v12], a2 + v12, v16);
  }

  return a1;
}

uint64_t destroy for FileExportOperation.File(id *a1, uint64_t a2)
{
  type metadata accessor for FileExportOperation.File.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v5 = *(a2 + 24);
  v6 = type metadata accessor for UTType();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

void **initializeWithCopy for FileExportOperation.File(void **a1, void **a2, uint64_t a3)
{
  type metadata accessor for FileExportOperation.File.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *a2;
    *a1 = *a2;
    v7 = v6;
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
  }

  swift_storeEnumTagMultiPayload();
  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  v11 = (a1 + v9);
  v12 = (a2 + v9);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = type metadata accessor for UTType();
  v15 = *(*(v14 - 8) + 16);

  v15(a1 + v10, a2 + v10, v14);
  return a1;
}

void **assignWithCopy for FileExportOperation.File(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.File.Storage);
    type metadata accessor for FileExportOperation.File.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
    }

    else
    {
      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  v9 = *(a3 + 20);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  *v10 = *v11;
  v10[1] = v11[1];

  v12 = *(a3 + 24);
  v13 = type metadata accessor for UTType();
  (*(*(v13 - 8) + 24))(a1 + v12, a2 + v12, v13);
  return a1;
}

uint64_t outlined destroy of FileExportOperation.Mode(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for FileExportOperation.File(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for FileExportOperation.File.Storage(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  v8 = *(a3 + 20);
  v9 = *(a3 + 24);
  *&a1[v8] = *&a2[v8];
  v10 = type metadata accessor for UTType();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  return a1;
}

char *assignWithTake for FileExportOperation.File(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.File.Storage);
    v6 = type metadata accessor for FileExportOperation.File.Storage(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }
  }

  v8 = *(a3 + 20);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v12 = *v10;
  v11 = *(v10 + 1);
  *v9 = v12;
  *(v9 + 1) = v11;

  v13 = *(a3 + 24);
  v14 = type metadata accessor for UTType();
  (*(*(v14 - 8) + 40))(&a1[v13], &a2[v13], v14);
  return a1;
}

uint64_t type metadata completion function for FileExportOperation.File()
{
  result = type metadata accessor for FileExportOperation.File.Storage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UTType();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for FileExportOperation.File.Storage(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
    }

    else
    {
      v9 = type metadata accessor for URL();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for FileExportOperation.File.Storage(void **a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {
    v3 = type metadata accessor for URL();
    v4 = *(*(v3 - 8) + 8);

    v4(a1, v3);
  }
}

void **initializeWithCopy for FileExportOperation.File.Storage(void **a1, void **a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = v4;
  }

  else
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for FileExportOperation.File.Storage(void **a1, void **a2)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.File.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = v4;
    }

    else
    {
      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for FileExportOperation.File.Storage(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for FileExportOperation.File.Storage(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.File.Storage);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for FileExportOperation.File.Storage()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for FileExportOperation.Resolved(unint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = v19 + ((v5 + 16) & ~v5);
  }

  else
  {
    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v20 = *a2;
        v21 = *(a2 + 8);
        v22 = *(a2 + 16);
        v23 = *(a2 + 24);
        v24 = *(a2 + 32);
        v25 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v21, v22, v23, v24, v25);
        *a1 = v20;
        *(a1 + 8) = v21;
        *(a1 + 16) = v22;
        *(a1 + 24) = v23;
        *(a1 + 32) = v24;
        *(a1 + 40) = v25;
        v26 = *(a2 + 56);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v26;
        v27 = *(a2 + 96);
        v84 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v84;
        *(a1 + 96) = v27;
      }

      else
      {
        v30 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v30;
        v31 = *(a2 + 48);
        v85 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v85;
        *(a1 + 48) = v31;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v28 = *(a2 + 32);
        v29 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v29;
        *(a1 + 32) = v28;
      }

      else
      {
        v8 = type metadata accessor for URL();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        v9 = type metadata accessor for FileExportOperation.Move(0);
        v10 = *(v9 + 20);
        v11 = (a1 + v10);
        v12 = (a2 + v10);
        v14 = *v12;
        v13 = v12[1];
        *v11 = v14;
        v11[1] = v13;
        v15 = *(v9 + 24);
        v16 = (a1 + v15);
        v17 = (a2 + v15);
        v18 = v17[1];
        *v16 = *v17;
        v16[1] = v18;
      }
    }

    swift_storeEnumTagMultiPayload();
    v32 = type metadata accessor for FileExportOperation(0);
    v33 = v32[5];
    v34 = (a1 + v33);
    v35 = (a2 + v33);
    v36 = v35[1];
    *v34 = *v35;
    v34[1] = v36;
    v37 = v32[6];
    v38 = type metadata accessor for URL();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);

    if (v40(a2 + v37, 1, v38))
    {
      _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy((a1 + v37), (a2 + v37), *(*(v41 - 8) + 64));
    }

    else
    {
      (*(v39 + 16))(a1 + v37, a2 + v37, v38);
      (*(v39 + 56))(a1 + v37, 0, 1, v38);
    }

    v42 = v32[7];
    v43 = a1 + v42;
    v44 = a2 + v42;
    if (*(a2 + v42 + 24))
    {
      v45 = *v44;
      v46 = *(v44 + 8);
      v47 = *(v44 + 16);
      outlined copy of Text.Storage(*v44, v46, v47);
      *v43 = v45;
      *(v43 + 8) = v46;
      *(v43 + 16) = v47;
      *(v43 + 24) = *(v44 + 24);
    }

    else
    {
      v48 = *(v44 + 16);
      *v43 = *v44;
      *(v43 + 16) = v48;
    }

    v49 = v32[8];
    v50 = a1 + v49;
    v51 = a2 + v49;
    if (*(a2 + v49 + 24))
    {
      v52 = *v51;
      v53 = *(v51 + 8);
      v54 = *(v51 + 16);
      outlined copy of Text.Storage(*v51, v53, v54);
      *v50 = v52;
      *(v50 + 8) = v53;
      *(v50 + 16) = v54;
      *(v50 + 24) = *(v51 + 24);
    }

    else
    {
      v55 = *(v51 + 16);
      *v50 = *v51;
      *(v50 + 16) = v55;
    }

    v56 = v32[9];
    v57 = a1 + v56;
    v58 = a2 + v56;
    if (*(a2 + v56 + 24))
    {
      v59 = *v58;
      v60 = *(v58 + 8);
      v61 = *(v58 + 16);
      outlined copy of Text.Storage(*v58, v60, v61);
      *v57 = v59;
      *(v57 + 8) = v60;
      *(v57 + 16) = v61;
      *(v57 + 24) = *(v58 + 24);
    }

    else
    {
      v62 = *(v58 + 16);
      *v57 = *v58;
      *(v57 + 16) = v62;
    }

    v63 = v32[10];
    type metadata accessor for Predicate<Pack{URL}>();
    v65 = v64;
    v66 = *(v64 - 8);
    if ((*(v66 + 48))(a2 + v63, 1, v64))
    {
      _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy((a1 + v63), (a2 + v63), *(*(v67 - 8) + 64));
    }

    else
    {
      (*(v66 + 16))(a1 + v63, a2 + v63, v65);
      (*(v66 + 56))(a1 + v63, 0, 1, v65);
    }

    *(a1 + v32[11]) = *(a2 + v32[11]);
    v68 = v32[12];
    v69 = a1 + v68;
    v70 = a2 + v68;
    *v69 = *v70;
    *(v69 + 8) = *(v70 + 8);
    v71 = a3[5];
    v72 = a3[6];
    v73 = (a1 + v71);
    v74 = (a2 + v71);
    v75 = v74[1];
    *v73 = *v74;
    v73[1] = v75;
    v76 = (a1 + v72);
    v77 = (a2 + v72);
    v78 = v77[1];
    *v76 = *v77;
    v76[1] = v78;
    v79 = a3[7];
    v80 = (a1 + v79);
    v81 = (a2 + v79);
    v82 = v81[1];
    *v80 = *v81;
    v80[1] = v82;
  }

  return a1;
}

uint64_t destroy for FileExportOperation.Resolved(uint64_t a1)
{
  type metadata accessor for FileExportOperation.Mode(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined consume of FileExportOperation.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_11;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = type metadata accessor for URL();
    (*(*(v3 - 8) + 8))(a1, v3);
    type metadata accessor for FileExportOperation.Move(0);
  }

LABEL_11:
  v4 = type metadata accessor for FileExportOperation(0);

  v5 = v4[6];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = a1 + v4[7];
  if (*(v8 + 24))
  {
    outlined consume of Text.Storage(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = a1 + v4[8];
  if (*(v9 + 24))
  {
    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = a1 + v4[9];
  if (*(v10 + 24))
  {
    outlined consume of Text.Storage(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = v4[10];
  type metadata accessor for Predicate<Pack{URL}>();
  v13 = v12;
  v14 = *(v12 - 8);
  if (!(*(v14 + 48))(a1 + v11, 1, v12))
  {
    (*(v14 + 8))(a1 + v11, v13);
  }
}

uint64_t initializeWithCopy for FileExportOperation.Resolved(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for FileExportOperation.Mode(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *a2;
      v19 = *(a2 + 8);
      v20 = *(a2 + 16);
      v21 = *(a2 + 24);
      v22 = *(a2 + 32);
      v23 = *(a2 + 40);
      outlined copy of FileExportOperation.Storage(*a2, v19, v20, v21, v22, v23);
      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 24) = v21;
      *(a1 + 32) = v22;
      *(a1 + 40) = v23;
      v24 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v24;
      v25 = *(a2 + 96);
      v82 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v82;
      *(a1 + 96) = v25;
    }

    else
    {
      v28 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v28;
      v29 = *(a2 + 48);
      v83 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v83;
      *(a1 + 48) = v29;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v26 = *(a2 + 32);
      v27 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v27;
      *(a1 + 32) = v26;
    }

    else
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = type metadata accessor for FileExportOperation.Move(0);
      v9 = *(v8 + 20);
      v10 = (a1 + v9);
      v11 = (a2 + v9);
      v13 = *v11;
      v12 = v11[1];
      *v10 = v13;
      v10[1] = v12;
      v14 = *(v8 + 24);
      v15 = (a1 + v14);
      v16 = (a2 + v14);
      v17 = v16[1];
      *v15 = *v16;
      v15[1] = v17;
    }
  }

  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for FileExportOperation(0);
  v31 = v30[5];
  v32 = (a1 + v31);
  v33 = (a2 + v31);
  v34 = v33[1];
  *v32 = *v33;
  v32[1] = v34;
  v35 = v30[6];
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);

  if (v38(a2 + v35, 1, v36))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy((a1 + v35), (a2 + v35), *(*(v39 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(a1 + v35, a2 + v35, v36);
    (*(v37 + 56))(a1 + v35, 0, 1, v36);
  }

  v40 = v30[7];
  v41 = a1 + v40;
  v42 = a2 + v40;
  if (*(a2 + v40 + 24))
  {
    v43 = *v42;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    outlined copy of Text.Storage(*v42, v44, v45);
    *v41 = v43;
    *(v41 + 8) = v44;
    *(v41 + 16) = v45;
    *(v41 + 24) = *(v42 + 24);
  }

  else
  {
    v46 = *(v42 + 16);
    *v41 = *v42;
    *(v41 + 16) = v46;
  }

  v47 = v30[8];
  v48 = a1 + v47;
  v49 = a2 + v47;
  if (*(a2 + v47 + 24))
  {
    v50 = *v49;
    v51 = *(v49 + 8);
    v52 = *(v49 + 16);
    outlined copy of Text.Storage(*v49, v51, v52);
    *v48 = v50;
    *(v48 + 8) = v51;
    *(v48 + 16) = v52;
    *(v48 + 24) = *(v49 + 24);
  }

  else
  {
    v53 = *(v49 + 16);
    *v48 = *v49;
    *(v48 + 16) = v53;
  }

  v54 = v30[9];
  v55 = a1 + v54;
  v56 = a2 + v54;
  if (*(a2 + v54 + 24))
  {
    v57 = *v56;
    v58 = *(v56 + 8);
    v59 = *(v56 + 16);
    outlined copy of Text.Storage(*v56, v58, v59);
    *v55 = v57;
    *(v55 + 8) = v58;
    *(v55 + 16) = v59;
    *(v55 + 24) = *(v56 + 24);
  }

  else
  {
    v60 = *(v56 + 16);
    *v55 = *v56;
    *(v55 + 16) = v60;
  }

  v61 = v30[10];
  type metadata accessor for Predicate<Pack{URL}>();
  v63 = v62;
  v64 = *(v62 - 8);
  if ((*(v64 + 48))(a2 + v61, 1, v62))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy((a1 + v61), (a2 + v61), *(*(v65 - 8) + 64));
  }

  else
  {
    (*(v64 + 16))(a1 + v61, a2 + v61, v63);
    (*(v64 + 56))(a1 + v61, 0, 1, v63);
  }

  *(a1 + v30[11]) = *(a2 + v30[11]);
  v66 = v30[12];
  v67 = a1 + v66;
  v68 = a2 + v66;
  *v67 = *v68;
  *(v67 + 8) = *(v68 + 8);
  v69 = a3[5];
  v70 = a3[6];
  v71 = (a1 + v69);
  v72 = (a2 + v69);
  v73 = v72[1];
  *v71 = *v72;
  v71[1] = v73;
  v74 = (a1 + v70);
  v75 = (a2 + v70);
  v76 = v75[1];
  *v74 = *v75;
  v74[1] = v76;
  v77 = a3[7];
  v78 = (a1 + v77);
  v79 = (a2 + v77);
  v80 = v79[1];
  *v78 = *v79;
  v78[1] = v80;

  return a1;
}

uint64_t assignWithCopy for FileExportOperation.Resolved(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.Mode);
    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v17 = *a2;
        v18 = *(a2 + 8);
        v19 = *(a2 + 16);
        v20 = *(a2 + 24);
        v111 = a3;
        v21 = *(a2 + 32);
        v22 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v18, v19, v20, v21, v22);
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 24) = v20;
        *(a1 + 32) = v21;
        a3 = v111;
        *(a1 + 40) = v22;
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        v23 = *(a2 + 80);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v23;
        v24 = *(a2 + 96);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v24;
      }

      else
      {
        v27 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v27;
        *(a1 + 16) = *(a2 + 16);
        v28 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v28;
        v29 = *(a2 + 48);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v29;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v7 = type metadata accessor for URL();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = type metadata accessor for FileExportOperation.Move(0);
        v9 = *(v8 + 20);
        v10 = (a1 + v9);
        v11 = (a2 + v9);
        v12 = v11[1];
        *v10 = *v11;
        v10[1] = v12;
        v13 = *(v8 + 24);
        v14 = (a1 + v13);
        v15 = (a2 + v13);
        v16 = v15[1];
        *v14 = *v15;
        v14[1] = v16;
LABEL_11:

        swift_storeEnumTagMultiPayload();
        goto LABEL_12;
      }

      *a1 = *a2;
      v25 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v25;
      v26 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v26;
    }

    goto LABEL_11;
  }

LABEL_12:
  v30 = type metadata accessor for FileExportOperation(0);
  v31 = v30[5];
  v32 = (a1 + v31);
  v33 = (a2 + v31);
  *v32 = *v33;
  v32[1] = v33[1];

  v34 = v30[6];
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = v37(a1 + v34, 1, v35);
  v39 = v37(a2 + v34, 1, v35);
  if (v38)
  {
    if (!v39)
    {
      (*(v36 + 16))(a1 + v34, a2 + v34, v35);
      (*(v36 + 56))(a1 + v34, 0, 1, v35);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v39)
  {
    (*(v36 + 8))(a1 + v34, v35);
LABEL_17:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy((a1 + v34), (a2 + v34), *(*(v40 - 8) + 64));
    goto LABEL_18;
  }

  (*(v36 + 24))(a1 + v34, a2 + v34, v35);
LABEL_18:
  v41 = v30[7];
  v42 = a1 + v41;
  v43 = a2 + v41;
  v44 = *(a1 + v41 + 24);
  v45 = *(a2 + v41 + 24);
  if (v44)
  {
    if (v45)
    {
      v46 = *v43;
      v47 = *(v43 + 8);
      v48 = *(v43 + 16);
      outlined copy of Text.Storage(*v43, v47, v48);
      v49 = *v42;
      v50 = *(v42 + 8);
      v51 = *(v42 + 16);
      *v42 = v46;
      *(v42 + 8) = v47;
      *(v42 + 16) = v48;
      outlined consume of Text.Storage(v49, v50, v51);
      *(v42 + 24) = *(v43 + 24);
    }

    else
    {
      outlined destroy of Text(v42);
      v55 = *(v43 + 16);
      *v42 = *v43;
      *(v42 + 16) = v55;
    }
  }

  else if (v45)
  {
    v52 = *v43;
    v53 = *(v43 + 8);
    v54 = *(v43 + 16);
    outlined copy of Text.Storage(*v43, v53, v54);
    *v42 = v52;
    *(v42 + 8) = v53;
    *(v42 + 16) = v54;
    *(v42 + 24) = *(v43 + 24);
  }

  else
  {
    v56 = *(v43 + 16);
    *v42 = *v43;
    *(v42 + 16) = v56;
  }

  v57 = v30[8];
  v58 = a1 + v57;
  v59 = a2 + v57;
  v60 = *(a1 + v57 + 24);
  v61 = *(a2 + v57 + 24);
  if (v60)
  {
    if (v61)
    {
      v62 = *v59;
      v63 = *(v59 + 8);
      v64 = *(v59 + 16);
      outlined copy of Text.Storage(*v59, v63, v64);
      v65 = *v58;
      v66 = *(v58 + 8);
      v67 = *(v58 + 16);
      *v58 = v62;
      *(v58 + 8) = v63;
      *(v58 + 16) = v64;
      outlined consume of Text.Storage(v65, v66, v67);
      *(v58 + 24) = *(v59 + 24);
    }

    else
    {
      outlined destroy of Text(v58);
      v71 = *(v59 + 16);
      *v58 = *v59;
      *(v58 + 16) = v71;
    }
  }

  else if (v61)
  {
    v68 = *v59;
    v69 = *(v59 + 8);
    v70 = *(v59 + 16);
    outlined copy of Text.Storage(*v59, v69, v70);
    *v58 = v68;
    *(v58 + 8) = v69;
    *(v58 + 16) = v70;
    *(v58 + 24) = *(v59 + 24);
  }

  else
  {
    v72 = *(v59 + 16);
    *v58 = *v59;
    *(v58 + 16) = v72;
  }

  v73 = v30[9];
  v74 = a1 + v73;
  v75 = a2 + v73;
  v76 = *(a1 + v73 + 24);
  v77 = *(a2 + v73 + 24);
  if (v76)
  {
    if (v77)
    {
      v78 = *v75;
      v79 = *(v75 + 8);
      v80 = *(v75 + 16);
      outlined copy of Text.Storage(*v75, v79, v80);
      v81 = *v74;
      v82 = *(v74 + 8);
      v83 = *(v74 + 16);
      *v74 = v78;
      *(v74 + 8) = v79;
      *(v74 + 16) = v80;
      outlined consume of Text.Storage(v81, v82, v83);
      *(v74 + 24) = *(v75 + 24);
    }

    else
    {
      outlined destroy of Text(v74);
      v87 = *(v75 + 16);
      *v74 = *v75;
      *(v74 + 16) = v87;
    }
  }

  else if (v77)
  {
    v84 = *v75;
    v85 = *(v75 + 8);
    v86 = *(v75 + 16);
    outlined copy of Text.Storage(*v75, v85, v86);
    *v74 = v84;
    *(v74 + 8) = v85;
    *(v74 + 16) = v86;
    *(v74 + 24) = *(v75 + 24);
  }

  else
  {
    v88 = *(v75 + 16);
    *v74 = *v75;
    *(v74 + 16) = v88;
  }

  v89 = v30[10];
  type metadata accessor for Predicate<Pack{URL}>();
  v91 = v90;
  v92 = *(v90 - 8);
  v93 = *(v92 + 48);
  v94 = v93(a1 + v89, 1, v90);
  v95 = v93(a2 + v89, 1, v91);
  if (!v94)
  {
    if (!v95)
    {
      (*(v92 + 24))(a1 + v89, a2 + v89, v91);
      goto LABEL_46;
    }

    (*(v92 + 8))(a1 + v89, v91);
    goto LABEL_45;
  }

  if (v95)
  {
LABEL_45:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy((a1 + v89), (a2 + v89), *(*(v96 - 8) + 64));
    goto LABEL_46;
  }

  (*(v92 + 16))(a1 + v89, a2 + v89, v91);
  (*(v92 + 56))(a1 + v89, 0, 1, v91);
LABEL_46:
  *(a1 + v30[11]) = *(a2 + v30[11]);
  v97 = v30[12];
  v98 = a1 + v97;
  v99 = (a2 + v97);
  v100 = *v99;
  *(v98 + 8) = *(v99 + 8);
  *v98 = v100;
  v101 = a3[5];
  v102 = (a1 + v101);
  v103 = (a2 + v101);
  *v102 = *v103;
  v102[1] = v103[1];

  v104 = a3[6];
  v105 = (a1 + v104);
  v106 = (a2 + v104);
  *v105 = *v106;
  v105[1] = v106[1];

  v107 = a3[7];
  v108 = (a1 + v107);
  v109 = (a2 + v107);
  *v108 = *v109;
  v108[1] = v109[1];

  return a1;
}

char *initializeWithTake for FileExportOperation.Resolved(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for FileExportOperation.Mode(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for FileExportOperation.Move(0);
    *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
    *&a1[*(v8 + 24)] = *&a2[*(v8 + 24)];
    swift_storeEnumTagMultiPayload();
  }

  v9 = type metadata accessor for FileExportOperation(0);
  *&a1[v9[5]] = *&a2[v9[5]];
  v10 = v9[6];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&a2[v10], 1, v11))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 32))(&a1[v10], &a2[v10], v11);
    (*(v12 + 56))(&a1[v10], 0, 1, v11);
  }

  v14 = v9[7];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;
  v18 = v9[8];
  v19 = &a1[v18];
  v20 = &a2[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  v22 = v9[9];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v25 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v25;
  v26 = v9[10];
  type metadata accessor for Predicate<Pack{URL}>();
  v28 = v27;
  v29 = *(v27 - 8);
  if ((*(v29 + 48))(&a2[v26], 1, v27))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy(&a1[v26], &a2[v26], *(*(v30 - 8) + 64));
  }

  else
  {
    (*(v29 + 32))(&a1[v26], &a2[v26], v28);
    (*(v29 + 56))(&a1[v26], 0, 1, v28);
  }

  a1[v9[11]] = a2[v9[11]];
  v31 = v9[12];
  v32 = &a1[v31];
  v33 = &a2[v31];
  *v32 = *v33;
  v32[8] = v33[8];
  v34 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v34] = *&a2[v34];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithTake for FileExportOperation.Resolved(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.Mode);
    v6 = type metadata accessor for FileExportOperation.Mode(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = type metadata accessor for FileExportOperation.Move(0);
      *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
      *&a1[*(v8 + 24)] = *&a2[*(v8 + 24)];
      swift_storeEnumTagMultiPayload();
    }
  }

  v9 = type metadata accessor for FileExportOperation(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v14 = *v12;
  v13 = *(v12 + 1);
  *v11 = v14;
  *(v11 + 1) = v13;

  v15 = v9[6];
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&a1[v15], 1, v16);
  v20 = v18(&a2[v15], 1, v16);
  if (v19)
  {
    if (!v20)
    {
      (*(v17 + 32))(&a1[v15], &a2[v15], v16);
      (*(v17 + 56))(&a1[v15], 0, 1, v16);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v20)
  {
    (*(v17 + 8))(&a1[v15], v16);
LABEL_10:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v21 - 8) + 64));
    goto LABEL_11;
  }

  (*(v17 + 40))(&a1[v15], &a2[v15], v16);
LABEL_11:
  v22 = v9[7];
  v23 = &a1[v22];
  v24 = &a2[v22];
  if (*&a1[v22 + 24])
  {
    if (*(v24 + 3))
    {
      v25 = v24[16];
      v26 = *v23;
      v27 = *(v23 + 8);
      v28 = *(v23 + 16);
      *v23 = *v24;
      *(v23 + 16) = v25;
      outlined consume of Text.Storage(v26, v27, v28);
      *(v23 + 24) = *(v24 + 3);

      goto LABEL_16;
    }

    outlined destroy of Text(v23);
  }

  v29 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 16) = v29;
LABEL_16:
  v30 = v9[8];
  v31 = &a1[v30];
  v32 = &a2[v30];
  if (*&a1[v30 + 24])
  {
    if (*(v32 + 3))
    {
      v33 = v32[16];
      v34 = *v31;
      v35 = *(v31 + 8);
      v36 = *(v31 + 16);
      *v31 = *v32;
      *(v31 + 16) = v33;
      outlined consume of Text.Storage(v34, v35, v36);
      *(v31 + 24) = *(v32 + 3);

      goto LABEL_21;
    }

    outlined destroy of Text(v31);
  }

  v37 = *(v32 + 1);
  *v31 = *v32;
  *(v31 + 16) = v37;
LABEL_21:
  v38 = v9[9];
  v39 = &a1[v38];
  v40 = &a2[v38];
  if (*&a1[v38 + 24])
  {
    if (*(v40 + 3))
    {
      v41 = v40[16];
      v42 = *v39;
      v43 = *(v39 + 8);
      v44 = *(v39 + 16);
      *v39 = *v40;
      *(v39 + 16) = v41;
      outlined consume of Text.Storage(v42, v43, v44);
      *(v39 + 24) = *(v40 + 3);

      goto LABEL_26;
    }

    outlined destroy of Text(v39);
  }

  v45 = *(v40 + 1);
  *v39 = *v40;
  *(v39 + 16) = v45;
LABEL_26:
  v46 = v9[10];
  type metadata accessor for Predicate<Pack{URL}>();
  v48 = v47;
  v49 = *(v47 - 8);
  v50 = *(v49 + 48);
  v51 = v50(&a1[v46], 1, v47);
  v52 = v50(&a2[v46], 1, v48);
  if (!v51)
  {
    if (!v52)
    {
      (*(v49 + 40))(&a1[v46], &a2[v46], v48);
      goto LABEL_32;
    }

    (*(v49 + 8))(&a1[v46], v48);
    goto LABEL_31;
  }

  if (v52)
  {
LABEL_31:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy(&a1[v46], &a2[v46], *(*(v53 - 8) + 64));
    goto LABEL_32;
  }

  (*(v49 + 32))(&a1[v46], &a2[v46], v48);
  (*(v49 + 56))(&a1[v46], 0, 1, v48);
LABEL_32:
  a1[v9[11]] = a2[v9[11]];
  v54 = v9[12];
  v55 = &a1[v54];
  v56 = &a2[v54];
  *v55 = *v56;
  v55[8] = v56[8];
  v57 = a3[5];
  v58 = &a1[v57];
  v59 = &a2[v57];
  v61 = *v59;
  v60 = *(v59 + 1);
  *v58 = v61;
  *(v58 + 1) = v60;

  v62 = a3[6];
  v63 = &a1[v62];
  v64 = &a2[v62];
  v66 = *v64;
  v65 = *(v64 + 1);
  *v63 = v66;
  *(v63 + 1) = v65;

  v67 = a3[7];
  v68 = &a1[v67];
  v69 = &a2[v67];
  v71 = *v69;
  v70 = *(v69 + 1);
  *v68 = v71;
  *(v68 + 1) = v70;

  return a1;
}

uint64_t type metadata completion function for FileExportOperation.Resolved()
{
  result = type metadata accessor for FileExportOperation(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for FileExportOperation.BatchExport()
{
}

uint64_t initializeWithCopy for FileExportOperation.BatchExport(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 48);
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;

  return a1;
}

uint64_t assignWithCopy for FileExportOperation.BatchExport(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  return a1;
}

uint64_t assignWithTake for FileExportOperation.BatchExport(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;

  return a1;
}

uint64_t destroy for FileExportOperation.Export(uint64_t a1)
{
  outlined consume of FileExportOperation.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
}

uint64_t initializeWithCopy for FileExportOperation.Export(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of FileExportOperation.Storage(*a2, v5, v6, v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v10;
  v11 = *(a2 + 96);
  v13 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v13;
  *(a1 + 96) = v11;

  return a1;
}

uint64_t assignWithCopy for FileExportOperation.Export(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of FileExportOperation.Storage(*a2, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  outlined consume of FileExportOperation.Storage(v10, v11, v12, v13, v14, v15);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  v16 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v16;

  v17 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v17;

  return a1;
}

uint64_t assignWithTake for FileExportOperation.Export(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v12;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  outlined consume of FileExportOperation.Storage(v6, v7, v8, v9, v10, v11);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v13 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v13;

  return a1;
}

uint64_t getEnumTagSinglePayload for FileExportOperation.Export(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FileExportOperation.Export(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for FileExportOperation.BatchMove()
{
}

uint64_t initializeWithCopy for FileExportOperation.BatchMove(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;

  return a1;
}

void *assignWithCopy for FileExportOperation.BatchMove(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  return a1;
}

uint64_t assignWithTake for FileExportOperation.BatchMove(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for FileExportOperation.BatchStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t initializeWithCopy for FileExportOperation.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of FileExportOperation.Storage(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithCopy for FileExportOperation.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of FileExportOperation.Storage(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  outlined consume of FileExportOperation.Storage(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for FileExportOperation.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  outlined consume of FileExportOperation.Storage(v5, v7, v6, v8, v9, v10);
  return a1;
}

unint64_t getEnumTag for HoverEffectPhaseOverride.Storage(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

void *destructiveInjectEnumTag for HoverEffectPhaseOverride.Storage(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

uint64_t DisclosureGroupConfiguration.init(isExpanded:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  (*(a7 + 16))(a6, a7);
  v14 = type metadata accessor for DisclosureGroupConfiguration();
  v15 = a8 + *(v14 + 52);
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 16) = a3;
  return (*(*(a5 - 8) + 32))(a8 + *(v14 + 56), a4, a5);
}

uint64_t DisclosureGroup<>.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v34 = a6;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v10 = type metadata accessor for DisclosureGroupConfiguration();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 56);
  v20 = a1 + *(v18 + 52);
  v21 = *(v20 + 8);
  v29 = *v20;
  v30 = v21;
  v32 = *(v20 + 16);
  v23 = *(v22 + 16);
  v31 = a1;
  v23(v17, a1 + v19, a2, v15);
  (*(v11 + 16))(v13, a1, v10);
  v24 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = a2;
  *(v25 + 3) = a3;
  *(v25 + 4) = a4;
  *(v25 + 5) = v33;
  (*(v11 + 32))(&v25[v24], v13, v10);
  v26 = v29;

  v27 = v30;

  DisclosureGroup.init(isExpanded:label:content:)(v26, v27, v32, v17, partial apply for closure #1 in DisclosureGroup<>.init(configuration:), a2, v34);
  return (*(v11 + 8))(v31, v10);
}

uint64_t DisclosureGroup.$isExpanded.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  if (*(v2 + 17))
  {
  }

  else
  {
    type metadata accessor for State<Bool>();
    State.projectedValue.getter();
    return v5;
  }

  return v3;
}

uint64_t DisclosureGroup.init(isExpanded:label:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = a7 + *(type metadata accessor for DisclosureGroup() + 56);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = *(a6 - 8);
  v15 = (*(v14 + 16))(a7, a4, a6);
  a5(v15);

  result = (*(v14 + 8))(a4, a6);
  if (a2)
  {
    result = outlined consume of StateOrBinding<Bool>(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 17));
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = a3 & 1;
    *(v13 + 17) = 1;
  }

  return result;
}

uint64_t DisclosureGroup.init(content:label:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  return DisclosureGroup.init(isExpanded:label:content:)(0, 0, 0, v8, a1, a2, a3);
}

uint64_t DisclosureGroup.init(isExpanded:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v20 = a4;
  v21 = a5;
  v19[1] = a9;
  MEMORY[0x1EEE9AC00](a1);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  a6(v17);
  DisclosureGroup.init(isExpanded:label:content:)(a1, a2, a3 & 1, v16, v20, a7, a8);
}

uint64_t DisclosureGroup.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  *&v36 = a1[2];
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator>();
  v3 = type metadata accessor for ModifiedContent();
  v32 = lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label();
  v57 = a1[4];
  v4 = v57;
  v58 = &protocol witness table for AccessibilityAttachmentModifier;
  v37 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v56 = lazy protocol witness table accessor for type ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator>);
  v31 = v3;
  v30 = swift_getWitnessTable();
  v51 = &type metadata for DisclosureGroupStyleConfiguration.Label;
  v52 = v3;
  v53 = v32;
  v54 = v30;
  type metadata accessor for StaticSourceWriter();
  v5 = type metadata accessor for ModifiedContent();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = a1[3];
  v33 = lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content();
  v9 = a1[5];
  v51 = &type metadata for DisclosureGroupStyleConfiguration.Content;
  v52 = v8;
  v29 = v8;
  v53 = v33;
  v54 = v9;
  type metadata accessor for StaticSourceWriter();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = a1;
  v18 = v34;
  v51 = DisclosureGroup.$isExpanded.getter(v17);
  v52 = v19;
  LOBYTE(v53) = v20 & 1;
  *&v21 = v36;
  *(&v21 + 1) = v8;
  v36 = v21;
  *&v22 = v4;
  *(&v22 + 1) = v9;
  v28 = v22;
  v44 = v21;
  v45 = v22;
  v46 = v18;
  v23 = lazy protocol witness table accessor for type ResolvedDisclosureGroupStyle and conformance ResolvedDisclosureGroupStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for DisclosureGroupStyleConfiguration.Label, partial apply for closure #1 in DisclosureGroup.body.getter, v43, &type metadata for ResolvedDisclosureGroupStyle, &type metadata for DisclosureGroupStyleConfiguration.Label, v31, v23);

  v41 = v28;
  v40 = v36;
  v42 = v18;
  v49 = v23;
  v50 = &protocol witness table for StaticSourceWriter<A, B>;
  v24 = swift_getWitnessTable();
  View.viewAlias<A, B>(_:_:)(&type metadata for DisclosureGroupStyleConfiguration.Content, partial apply for closure #2 in DisclosureGroup.body.getter, v39, v5, &type metadata for DisclosureGroupStyleConfiguration.Content, v29, v24);
  (*(v35 + 8))(v7, v5);
  v47 = v24;
  v48 = &protocol witness table for StaticSourceWriter<A, B>;
  v25 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, v25);
  v26 = *(v11 + 8);
  v26(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, v25);
  return (v26)(v16, v10);
}

void type metadata accessor for ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator>)
  {
    lazy protocol witness table accessor for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator>);
    }
  }
}

uint64_t closure #1 in DisclosureGroup.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator>();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v22[6] = a1;
  v22[7] = a2;
  v22[8] = a3;
  v22[9] = a4;
  v16 = type metadata accessor for DisclosureGroup();
  DisclosureGroup.groupLabel.getter(v16);
  v22[4] = a3;
  v22[5] = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator>);
  v22[2] = WitnessTable;
  v22[3] = v18;
  v19 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, v19);
  v20 = *(v10 + 8);
  v20(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, v19);
  return (v20)(v15, v9);
}

uint64_t DisclosureGroup.groupLabel.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = DisclosureGroup.$isExpanded.getter(a1);
  v8 = *(a1 + 32);
  v15 = AccessibilityDisclosureModifier.init(_:)(v7, v10, v9 & 1) & 0x101;
  v11 = type metadata accessor for AccessibilityDisclosureModifier();
  WitnessTable = swift_getWitnessTable();
  v14[1] = v8;
  v14[2] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable();
  View.accessibilityConfiguration<A>(_:)(&v15, v2, v11, v8, WitnessTable);
  lazy protocol witness table accessor for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator();
  View.input<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #2 in DisclosureGroup.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for DisclosureGroup();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v15 + 52), a3, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t DisclosureGroup<>.init(_:content:)@<X0>(void (*a1)(uint64_t)@<X4>, uint64_t a2@<X8>)
{
  v8[0] = Text.init(_:tableName:bundle:comment:)();
  v8[1] = v4;
  v9 = v5 & 1;
  v10 = v6;
  return DisclosureGroup.init(isExpanded:label:content:)(0, 0, 0, v8, a1, MEMORY[0x1E6981148], a2);
}

uint64_t DisclosureGroup<>.init(_:isExpanded:content:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, char a3@<W6>, void (*a4)(uint64_t)@<X7>, uint64_t a5@<X8>)
{

  v14[0] = Text.init(_:tableName:bundle:comment:)();
  v14[1] = v8;
  v15 = v9 & 1;
  v16 = v10;
  DisclosureGroup.init(isExpanded:label:content:)(a1, a2, a3 & 1, v14, a4, MEMORY[0x1E6981148], a5);
}

uint64_t DisclosureGroup<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v9);
  v16[0] = Text.init<A>(_:)();
  v16[1] = v12;
  v17 = v13 & 1;
  v18 = v14;
  DisclosureGroup.init(isExpanded:label:content:)(0, 0, 0, v16, a2, MEMORY[0x1E6981148], a4);
  return (*(v8 + 8))(a1, a3);
}

uint64_t DisclosureGroup<>.init<A>(_:isExpanded:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v15 = *(a8 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v16);

  v27[0] = Text.init<A>(_:)();
  v27[1] = v19;
  v28 = v20 & 1;
  v29 = v21;
  DisclosureGroup.init(isExpanded:label:content:)(a2, a3, a4 & 1, v27, v24, MEMORY[0x1E6981148], a9);

  return (*(v15 + 8))(a1, a8);
}

uint64_t type metadata completion function for DisclosureGroup()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DisclosureGroup(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 18;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v19 + 17);
    if (v20 >= 2)
    {
      v20 = *v19 + 2;
    }

    v21 = (v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8;
    if (v20 == 1)
    {
      *v21 = *v19;
      *(v21 + 8) = *(v19 + 8);
      *(v21 + 16) = *(v19 + 16);
      *(v21 + 17) = 1;
    }

    else
    {
      *v21 = *v19;
      *(v21 + 8) = *(v19 + 8);
      *(v21 + 17) = 0;
    }
  }

  return v3;
}

uint64_t destroy for DisclosureGroup(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = (*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 17);
  if (v10 >= 2)
  {
    v10 = *v9 + 2;
  }

  if (v10 == 1)
  {
  }
}

uint64_t initializeWithCopy for DisclosureGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = v14 + v12;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 17);
  if (v17 >= 2)
  {
    v17 = *v16 + 2;
  }

  v18 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (v17 == 1)
  {
    *v18 = *v16;
    *(v18 + 8) = *(v16 + 8);
    *(v18 + 16) = *(v16 + 16);

    v19 = 1;
  }

  else
  {
    v19 = 0;
    *v18 = *v16;
    *(v18 + 8) = *(v16 + 8);
  }

  *(v18 + 17) = v19;
  return a1;
}

uint64_t assignWithCopy for DisclosureGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (v15 != v16)
  {
    v17 = *(v15 + 17);
    if (v17 >= 2)
    {
      v17 = *v15 + 2;
    }

    if (v17 == 1)
    {
    }

    v18 = *(v16 + 17);
    if (v18 >= 2)
    {
      v18 = *v16 + 2;
    }

    if (v18 == 1)
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);
      *(v15 + 16) = *(v16 + 16);
      *(v15 + 17) = 1;
    }

    else
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);
      *(v15 + 17) = 0;
    }
  }

  return a1;
}

uint64_t initializeWithTake for DisclosureGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = v14 + v12;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 17);
  if (v17 >= 2)
  {
    v17 = *v16 + 2;
  }

  v18 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (v17 == 1)
  {
    v19 = *v16;
    *(v18 + 16) = *(v16 + 16);
  }

  else
  {
    LOBYTE(v17) = 0;
    v19 = *v16;
  }

  *v18 = v19;
  *(v18 + 17) = v17;
  return a1;
}

uint64_t assignWithTake for DisclosureGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (v15 != v16)
  {
    v17 = *(v15 + 17);
    if (v17 >= 2)
    {
      v17 = *v15 + 2;
    }

    if (v17 == 1)
    {
    }

    v18 = *(v16 + 17);
    if (v18 >= 2)
    {
      v18 = *v16 + 2;
    }

    if (v18 == 1)
    {
      v19 = *v16;
      *(v15 + 16) = *(v16 + 16);
      *v15 = v19;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      *v15 = *v16;
    }

    *(v15 + 17) = v20;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for DisclosureGroup(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0xFE)
  {
    v10 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 18;
  v14 = (a2 - v10 + 0xFFFF) >> 16;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (*(a1 + v13))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (v18)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v22 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v23 >= 2)
    {
      return (v23 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_26:
  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v10 + (v21 | v20) + 1;
}

void storeEnumTagSinglePayload for DisclosureGroup(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  v16 = v12 + 7;
  v17 = ((v12 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v13 >= a3)
  {
    v21 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = (a3 - v13 + 0xFFFF) >> 16;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v24 = *(v6 + 56);

        v24();
      }

      else
      {
        v25 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v26 = *(v8 + 56);

          v26(v25);
        }

        else
        {
          v27 = (v16 + v25) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *v27 = 0;
            *(v27 + 8) = 0;
            *(v27 + 16) = 0;
            *v27 = a2 - 255;
          }

          else
          {
            *(v27 + 17) = -a2;
          }
        }
      }

      return;
    }
  }

  v22 = ~v13 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = HIWORD(v22) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_29:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

uint64_t partial apply for closure #1 in DisclosureGroup<>.init(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 24);
  v3 = *(type metadata accessor for DisclosureGroupConfiguration() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(*(v7 - 8) + 16);

  return v5(a1, v1 + v4);
}

uint64_t EnvironmentValues.shouldBuildExpandedContentLazily.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<HideNavigationLinkDisclosureIndicator> and conformance ViewInputFlagModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for DisclosureGroupConfiguration()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DisclosureGroupConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 | *(v4 + 80) & 0xF8;
  if (v9 <= 7 && ((*(v4 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((-18 - (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v8)) | v8) - *(v7 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v4 + 16))(a1);
    v14 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *(v14 + 16) = *(v15 + 16);
    v16 = v14 + v8 + 17;
    v17 = v15 + v8 + 17;
    v18 = *(v7 + 16);

    v18(v16 & ~v8, v17 & ~v8, v6);
  }

  else
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + (((v9 | 7) + 16) & ~(v9 | 7)));
  }

  return v3;
}

uint64_t destroy for DisclosureGroupConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  v5 = (a1 + *(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v6 + 80) + 17) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t initializeWithCopy for DisclosureGroupConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  *(v8 + 16) = *(v9 + 16);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = *(v11 + 80);
  v14 = v13 + 17 + v8;
  v15 = v13 + 17 + v9;

  v12(v14 & ~v13, v15 & ~v13, v10);
  return a1;
}

uint64_t assignWithCopy for DisclosureGroupConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;

  *(v8 + 8) = *(v9 + 8);

  *(v8 + 16) = *(v9 + 16);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 24))((*(v10 + 80) + 17 + v8) & ~*(v10 + 80), (*(v10 + 80) + 17 + v9) & ~*(v10 + 80));
  return a1;
}

uint64_t initializeWithTake for DisclosureGroupConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 32))((*(v11 + 80) + 17 + v8) & ~*(v11 + 80), (*(v11 + 80) + 17 + v9) & ~*(v11 + 80));
  return a1;
}

uint64_t assignWithTake for DisclosureGroupConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;

  *(v8 + 8) = *(v9 + 8);

  *(v8 + 16) = *(v9 + 16);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v10 + 80) + 17 + v8) & ~*(v10 + 80), (*(v10 + 80) + 17 + v9) & ~*(v10 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for DisclosureGroupConfiguration(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 84);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v3 + 64);
  v7 = *(v5 + 80);
  if (v4 <= *(v5 + 84))
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v3 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v10 = ((v7 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v7) + *(v5 + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_31:
      if (v4 == v9)
      {
        return (*(v3 + 48))();
      }

      v18 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((v18 + v7 + 17) & ~v7);
      }

      v19 = *(v18 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_31;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 <= 3)
    {
      v16 = ((v7 + ((v6 + 7) & 0xFFFFFFF8) + 17) & ~v7) + *(v5 + 64);
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v9 + (v17 | v15) + 1;
}

char *storeEnumTagSinglePayload for DisclosureGroupConfiguration(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (v5 <= *(v6 + 84))
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = ((v8 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v8) + *(v6 + 64);
  if (a3 > v10)
  {
    if (v11 <= 3)
    {
      v16 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
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

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v15 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v13 & ~(-1 << (8 * v11));
        v19 = result;
        bzero(result, v11);
        result = v19;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_52:
              if (v12 == 2)
              {
                *&result[v11] = v15;
              }

              else
              {
                *&result[v11] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v11);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v12)
    {
      result[v11] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v11] = 0;
  }

  else if (v12)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v5 == v10)
  {
    v20 = *(v4 + 56);

    return v20();
  }

  else
  {
    v21 = &result[v7 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((v9 & 0x80000000) != 0)
    {
      v22 = *(v6 + 56);

      return v22((v21 + v8 + 17) & ~v8);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *(v21 + 16) = 0;
      *v21 = a2 & 0x7FFFFFFF;
      *(v21 + 8) = 0;
    }

    else
    {
      *(v21 + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for TextInputSuggestionCompletion()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TextInputSuggestionCompletion(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64) + 7;
  if (v7 > 7 || (*(v6 + 80) & 0x100000) != 0 || ((v8 + ((v7 + 73) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = v11 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16));
  }

  else
  {
    v12 = *(a2 + 72);
    if (v12 >= 2)
    {
      v12 = *a2 + 2;
    }

    v13 = ~v7;
    if (v12 == 1)
    {
      v14 = a2[3];
      *(a1 + 24) = v14;
      (**(v14 - 8))(a1, a2);
      v15 = *(a2 + 7);
      *(v4 + 56) = v15;
      (**(v15 - 8))(v4 + 32, (a2 + 4));
      v16 = 1;
    }

    else
    {
      v17 = a2[1];
      *v4 = *a2;
      *(v4 + 8) = v17;

      v16 = 0;
    }

    *(v4 + 72) = v16;
    v18 = a2 + v7;
    v19 = (v4 + v7 + 73) & v13;
    v20 = (v18 + 73) & v13;
    (*(v6 + 16))(v19, v20, v5);
    v21 = (v8 + v19) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v8 + v20) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    outlined copy of Environment<Binding<String>?>.Content(*v22, v24, v25, v26, v27);
    *v21 = v23;
    *(v21 + 8) = v24;
    *(v21 + 16) = v25;
    *(v21 + 24) = v26;
    *(v21 + 32) = v27;
  }

  return v4;
}

uint64_t outlined copy of Environment<Binding<String>?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return outlined copy of Binding<String>?(a1, a2);
  }

  else
  {
  }
}

uint64_t destroy for TextInputSuggestionCompletion(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  }

  else
  {
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 73) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = (*(v6 + 56) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);

  return outlined consume of Environment<Binding<String>?>.Content(v9, v10, v11, v12, v13);
}

uint64_t outlined consume of Environment<Binding<String>?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return outlined consume of Binding<String>?(a1, a2);
  }

  else
  {
  }
}

uint64_t outlined consume of Binding<String>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t initializeWithCopy for TextInputSuggestionCompletion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 56);
    *(a1 + 56) = v8;
    (**(v8 - 8))(a1 + 32, a2 + 32);
    v9 = 1;
  }

  else
  {
    v10 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v10;

    v9 = 0;
  }

  *(a1 + 72) = v9;
  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 16;
  v13 = *(v11 + 80);
  v14 = (v13 + 73 + a1) & ~v13;
  v15 = (v13 + 73 + a2) & ~v13;
  (*(v11 + 16))(v14, v15);
  v16 = *(v12 + 48) + 7;
  v17 = (v16 + v14) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + v15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  v23 = *(v18 + 32);
  outlined copy of Environment<Binding<String>?>.Content(*v18, v20, v21, v22, v23);
  *v17 = v19;
  *(v17 + 8) = v20;
  *(v17 + 16) = v21;
  *(v17 + 24) = v22;
  *(v17 + 32) = v23;
  return a1;
}

uint64_t assignWithCopy for TextInputSuggestionCompletion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 72);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    else
    {
    }

    v7 = *(a2 + 72);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      v8 = *(a2 + 24);
      *(a1 + 24) = v8;
      (**(v8 - 8))(a1, a2);
      v9 = *(a2 + 56);
      *(a1 + 56) = v9;
      *(a1 + 64) = *(a2 + 64);
      (**(v9 - 8))(a1 + 32, a2 + 32);
      *(a1 + 72) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 72) = 0;
    }
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v12 + 73 + a1) & ~v12;
  v14 = (v12 + 73 + a2) & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v11 + 40) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + v14) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v22 = *(v17 + 32);
  outlined copy of Environment<Binding<String>?>.Content(*v17, v19, v20, v21, v22);
  v23 = *v16;
  v24 = *(v16 + 8);
  v25 = *(v16 + 16);
  v26 = *(v16 + 24);
  v27 = *(v16 + 32);
  *v16 = v18;
  *(v16 + 8) = v19;
  *(v16 + 16) = v20;
  *(v16 + 24) = v21;
  *(v16 + 32) = v22;
  outlined consume of Environment<Binding<String>?>.Content(v23, v24, v25, v26, v27);
  return a1;
}

uint64_t initializeWithTake for TextInputSuggestionCompletion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 72);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    v5 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v5;
    *(a1 + 64) = *(a2 + 64);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a1 = *a2;
  }

  *(a1 + 72) = v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v10 + 73 + a1) & ~v10;
  v12 = (v10 + 73 + a2) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32) + 7;
  v14 = (v13 + v11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 32);
  v17 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v17;
  *(v14 + 32) = v16;
  return a1;
}

uint64_t assignWithTake for TextInputSuggestionCompletion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 72);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    else
    {
    }

    v7 = *(a2 + 72);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      v8 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v8;
      *(a1 + 64) = *(a2 + 64);
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *a1 = *a2;
    }

    *(a1 + 72) = v10;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v13 + 73 + a1) & ~v13;
  v15 = (v13 + 73 + a2) & ~v13;
  (*(v11 + 40))(v14, v15);
  v16 = *(v12 + 24) + 7;
  v17 = (v16 + v15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 32);
  v19 = (v16 + v14) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v24 = *(v19 + 32);
  v25 = *(v17 + 16);
  *v19 = *v17;
  *(v19 + 16) = v25;
  *(v19 + 32) = v18;
  outlined consume of Environment<Binding<String>?>.Content(v20, v21, v22, v23, v24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextInputSuggestionCompletion(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 73) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))(&a1[v6 + 73] & ~v6);
    }

    v17 = a1[72];
    if (v17 >= 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double storeEnumTagSinglePayload for TextInputSuggestionCompletion(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 73) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 > 0xFE)
      {
        v18 = *(v6 + 56);
        v19 = &a1[v9 + 73] & ~v9;

        v18(v19);
      }

      else if (a2 > 0xFE)
      {
        result = 0.0;
        *(a1 + 57) = 0u;
        *(a1 + 2) = 0u;
        *(a1 + 3) = 0u;
        *a1 = 0u;
        *(a1 + 1) = 0u;
        *a1 = a2 - 255;
      }

      else
      {
        a1[72] = -a2;
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t destroy for TextInputSuggestionCompletionKind(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  }

  else
  {
  }
}

uint64_t initializeWithCopy for TextInputSuggestionCompletionKind(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    v6 = *(a2 + 56);
    *(a1 + 56) = v6;
    (**(v6 - 8))(a1 + 32, a2 + 32);
    v7 = 1;
  }

  else
  {
    v8 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v8;

    v7 = 0;
  }

  *(a1 + 72) = v7;
  return a1;
}

uint64_t assignWithCopy for TextInputSuggestionCompletionKind(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 72);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    else
    {
    }

    v5 = *(a2 + 72);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      (**(v6 - 8))(a1, a2);
      v7 = *(a2 + 56);
      *(a1 + 56) = v7;
      *(a1 + 64) = *(a2 + 64);
      (**(v7 - 8))(a1 + 32, a2 + 32);
      *(a1 + 72) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 72) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for TextInputSuggestionCompletionKind(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 72);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    else
    {
    }

    v5 = *(a2 + 72);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v6;
      *(a1 + 64) = *(a2 + 64);
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      *a1 = *a2;
    }

    *(a1 + 72) = v8;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TextInputSuggestionCompletionKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextInputSuggestionCompletionKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TextInputSuggestionCompletionKind(uint64_t a1)
{
  result = *(a1 + 72);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for TextInputSuggestionCompletionKind(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t TextInputSuggestionCompletion.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a2;
  v49 = type metadata accessor for TextInputCompletionButtonStyle();
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v48 = type metadata accessor for Button();
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v46 - v13;
  type metadata accessor for PrimitiveButtonStyleContainerModifier<TextInputCompletionButtonStyle>();
  v14 = type metadata accessor for ModifiedContent();
  v54 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  type metadata accessor for _EnvironmentKeyTransformModifier<Bool>();
  v55 = v14;
  v51 = type metadata accessor for ModifiedContent();
  v56 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v53 = &v46 - v20;
  v21 = v46;
  (*(v7 + 16))(v10, v3, v46, v19);
  v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v11;
  *(v23 + 24) = v12;
  (*(v7 + 32))(v23 + v22, v10, v21);
  v58 = v11;
  v59 = v12;
  v60 = v3;
  v24 = v47;
  v25 = v16;
  Button.init(action:label:)(partial apply for closure #1 in TextInputSuggestionCompletion.body.getter, v23, partial apply for closure #2 in TextInputSuggestionCompletion.body.getter, v47);
  v26 = v3;
  outlined init with copy of TextInputSuggestionCompletionKind(v3, v6);
  v27 = v49;
  v28 = *(v49 + 20);
  *&v6[v28] = swift_getKeyPath();
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  swift_storeEnumTagMultiPayload();
  v29 = &v6[*(v27 + 24)];
  *v29 = swift_getKeyPath();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = v48;
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type TextInputCompletionButtonStyle and conformance TextInputCompletionButtonStyle, type metadata accessor for TextInputCompletionButtonStyle);
  View.buttonStyle<A>(_:)(v6, v30, v27, WitnessTable);
  outlined destroy of TextInputCompletionButtonStyle(v6, type metadata accessor for TextInputCompletionButtonStyle);
  (*(v50 + 8))(v24, v30);
  v32 = v26 + *(v21 + 40);
  v33 = *(v32 + 16);
  v65 = *v32;
  v66 = v33;
  v67 = *(v32 + 32);
  v34 = specialized Environment.wrappedValue.getter();
  if (v35)
  {
    outlined consume of Binding<String>?(v34, v35);
  }

  v36 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<TextInputCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<TextInputCompletionButtonStyle>);
  v63 = WitnessTable;
  v64 = v36;
  v37 = v55;
  v38 = swift_getWitnessTable();
  v39 = v52;
  View.disabled(_:)();
  (*(v54 + 8))(v25, v37);
  v40 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, type metadata accessor for _EnvironmentKeyTransformModifier<Bool>);
  v61 = v38;
  v62 = v40;
  v41 = v51;
  v42 = swift_getWitnessTable();
  v43 = v53;
  static ViewBuilder.buildExpression<A>(_:)(v39, v41, v42);
  v44 = *(v56 + 8);
  v44(v39, v41);
  static ViewBuilder.buildExpression<A>(_:)(v43, v41, v42);
  return (v44)(v43, v41);
}

uint64_t closure #1 in TextInputSuggestionCompletion.body.getter(uint64_t a1)
{
  outlined init with copy of TextInputSuggestionCompletionKind(a1, &v6);
  if (v7)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = a1 + *(type metadata accessor for TextInputSuggestionCompletion() + 40);
    v3 = *(v2 + 16);
    v8 = *v2;
    v9 = v3;
    v10 = *(v2 + 32);
    specialized Environment.wrappedValue.getter();
    if (v4)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #2 in TextInputSuggestionCompletion.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextInputSuggestionCompletion();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 36), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t type metadata accessor for TextInputCompletionButtonStyle()
{
  result = type metadata singleton initialization cache for TextInputCompletionButtonStyle;
  if (!type metadata singleton initialization cache for TextInputCompletionButtonStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<TextInputCompletionButtonStyle>()
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<TextInputCompletionButtonStyle>)
  {
    type metadata accessor for TextInputCompletionButtonStyle();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type TextInputCompletionButtonStyle and conformance TextInputCompletionButtonStyle, type metadata accessor for TextInputCompletionButtonStyle);
    v0 = type metadata accessor for PrimitiveButtonStyleContainerModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<TextInputCompletionButtonStyle>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyTransformModifier<Bool>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>);
    }
  }
}

uint64_t partial apply for closure #1 in TextInputSuggestionCompletion.body.getter()
{
  v1 = *(type metadata accessor for TextInputSuggestionCompletion() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return closure #1 in TextInputSuggestionCompletion.body.getter(v2);
}

uint64_t closure #1 in TextInputCompletionButtonStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DismissSearchAccessoryAction(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  ButtonAction.callAsFunction()();
  v6 = type metadata accessor for TextInputCompletionButtonStyle();
  v7 = specialized Environment.wrappedValue.getter(*(a2 + *(v6 + 24)), *(a2 + *(v6 + 24) + 8), *(a2 + *(v6 + 24) + 16));
  if (v7)
  {
    v8 = v7;
    v11 = 4;
    v7(&v11);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v8);
  }

  specialized Environment.wrappedValue.getter(v5);
  DismissSearchAccessoryAction.callAsFunction()();
  return outlined destroy of TextInputCompletionButtonStyle(v5, type metadata accessor for DismissSearchAccessoryAction);
}

uint64_t protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance TextInputCompletionButtonStyle@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v20 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_5(a1, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimitiveButtonStyleConfiguration);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_5(v4, v8, type metadata accessor for TextInputCompletionButtonStyle);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = (v11 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_1(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for PrimitiveButtonStyleConfiguration);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_1(v8, v14 + v13, type metadata accessor for TextInputCompletionButtonStyle);
  v15 = v20;
  *v20 = *a1;
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>();
  v17 = &v15[*(v16 + 36)];
  *v17 = partial apply for closure #1 in TextInputCompletionButtonStyle.makeBody(configuration:);
  v17[1] = v14;
  type metadata accessor for ButtonAction();
  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized static TextInputSuggestionCompletionKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of TextInputSuggestionCompletionKind(a1, v11);
  outlined init with copy of TextInputSuggestionCompletionKind(a2, v12);
  if ((v11[72] & 1) == 0)
  {
    outlined init with copy of TextInputSuggestionCompletionKind(v11, v9);
    if ((v14 & 1) == 0)
    {
      if (v9[0] == v12[0])
      {
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v4 & 1) == 0)
        {
          outlined destroy of TextInputSuggestionCompletionKind(v11);
          goto LABEL_8;
        }
      }

      outlined destroy of TextInputSuggestionCompletionKind(v11);
      v3 = 1;
      return v3 & 1;
    }

LABEL_7:
    outlined destroy of TextInputCompletionButtonStyle(v11, type metadata accessor for (TextInputSuggestionCompletionKind, TextInputSuggestionCompletionKind));
LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of TextInputSuggestionCompletionKind(v11, v9);
  if (v14 != 1)
  {
    outlined destroy of AnyToken(v9);
    goto LABEL_7;
  }

  v7[0] = v12[2];
  v7[1] = v12[3];
  v8 = v13;
  v6[0] = v12[0];
  v6[1] = v12[1];
  v3 = MEMORY[0x18D00E7E0](&v10, v7);
  outlined destroy of AnyToken(v6);
  outlined destroy of AnyToken(v9);
  outlined destroy of TextInputSuggestionCompletionKind(v11);
  return v3 & 1;
}

uint64_t outlined destroy of TextInputCompletionButtonStyle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (TextInputSuggestionCompletionKind, TextInputSuggestionCompletionKind)()
{
  if (!lazy cache variable for type metadata for (TextInputSuggestionCompletionKind, TextInputSuggestionCompletionKind))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TextInputSuggestionCompletionKind, TextInputSuggestionCompletionKind));
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TextInputCompletionButtonStyle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = v10 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *(a2 + 72);
    if (v7 == 255)
    {
      v11 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v11;
      *(a1 + 57) = *(a2 + 57);
      v12 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v12;
    }

    else if (v7)
    {
      v8 = a2[3];
      *(a1 + 24) = v8;
      (**(v8 - 8))(a1, a2);
      v9 = *(a2 + 7);
      *(v4 + 56) = v9;
      (**(v9 - 8))(v4 + 32, (a2 + 4));
      *(v4 + 72) = 1;
    }

    else
    {
      v13 = a2[1];
      *v4 = *a2;
      *(v4 + 8) = v13;
      *(v4 + 72) = 0;
    }

    v14 = *(a3 + 20);
    v15 = (v4 + v14);
    v16 = (a2 + v14);
    type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<SearchFieldState>(0);
      v18 = v17;
      v19 = *(v17 - 8);
      if ((*(v19 + 48))(v16, 1, v17))
      {
        type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
        memcpy(v15, v16, *(*(v20 - 8) + 64));
      }

      else
      {
        v38 = v16[1];
        *v15 = *v16;
        v15[1] = v38;
        v21 = *(v18 + 32);
        v39 = v19;
        v22 = v15 + v21;
        v23 = v16 + v21;
        *v22 = *(v16 + v21);
        v22[1] = *(v16 + v21 + 1);
        *(v22 + 1) = *(v16 + v21 + 2);
        v22[8] = *(v16 + v21 + 8);
        *(v22 + 1) = *(v16 + v21 + 4);
        v24 = type metadata accessor for SearchFieldState(0);
        v37 = v24[9];
        v25 = type metadata accessor for AttributedString();
        v36 = *(*(v25 - 8) + 16);

        v36(&v22[v37], &v23[v37], v25);
        v22[v24[10]] = v23[v24[10]];
        v26 = v24[11];
        v27 = &v22[v26];
        v28 = &v23[v26];
        v27[4] = v28[4];
        *v27 = *v28;
        (*(v39 + 56))(v15, 0, 1, v18);
      }
    }

    else
    {
      *v15 = *v16;
    }

    swift_storeEnumTagMultiPayload();
    v29 = *(a3 + 24);
    v30 = v4 + v29;
    v31 = a2 + v29;
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v31, v33, v34);
    *v30 = v32;
    *(v30 + 8) = v33;
    *(v30 + 16) = v34;
  }

  return v4;
}

void type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t initializeWithCopy for TextInputCompletionButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);
  if (v6 == 255)
  {
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
    *(a1 + 57) = *(a2 + 57);
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
  }

  else if (v6)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 56);
    *(a1 + 56) = v8;
    (**(v8 - 8))(a1 + 32, a2 + 32);
    *(a1 + 72) = 1;
  }

  else
  {
    v11 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v11;
    *(a1 + 72) = 0;
  }

  v12 = *(a3 + 20);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v16 = v15;
    v17 = *(v15 - 8);
    if ((*(v17 + 48))(v14, 1, v15))
    {
      type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
      memcpy(v13, v14, *(*(v18 - 8) + 64));
    }

    else
    {
      v38 = v14[1];
      *v13 = *v14;
      v13[1] = v38;
      v19 = *(v16 + 32);
      v39 = v17;
      v20 = v13 + v19;
      v21 = v14 + v19;
      *v20 = *(v14 + v19);
      v20[1] = *(v14 + v19 + 1);
      *(v20 + 1) = *(v14 + v19 + 2);
      v20[8] = *(v14 + v19 + 8);
      *(v20 + 1) = *(v14 + v19 + 4);
      v22 = type metadata accessor for SearchFieldState(0);
      v40 = a3;
      v23 = v22[9];
      v24 = type metadata accessor for AttributedString();
      v37 = *(*(v24 - 8) + 16);

      v25 = &v20[v23];
      v26 = &v21[v23];
      a3 = v40;
      v37(v25, v26, v24);
      v20[v22[10]] = v21[v22[10]];
      v27 = v22[11];
      v28 = &v20[v27];
      v29 = &v21[v27];
      v28[4] = v29[4];
      *v28 = *v29;
      (*(v39 + 56))(v13, 0, 1, v16);
    }
  }

  else
  {
    *v13 = *v14;
  }

  swift_storeEnumTagMultiPayload();
  v30 = *(a3 + 24);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v32, v34, v35);
  *v31 = v33;
  *(v31 + 8) = v34;
  *(v31 + 16) = v35;
  return a1;
}

uint64_t assignWithCopy for TextInputCompletionButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);
  if (*(a1 + 72) != 255)
  {
    if (v6 == 255)
    {
      outlined destroy of TextInputSuggestionCompletionKind(a1);
      *a1 = *a2;
      v10 = *(a2 + 32);
      v9 = *(a2 + 48);
      v11 = *(a2 + 16);
      *(a1 + 57) = *(a2 + 57);
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
      *(a1 + 16) = v11;
    }

    else if (a1 != a2)
    {
      outlined destroy of TextInputSuggestionCompletionKind(a1);
      if (*(a2 + 72))
      {
        goto LABEL_5;
      }

LABEL_9:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 72) = 0;

      if (a1 == a2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if (a1 == a2)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v6 != 255)
  {
    if (v6)
    {
LABEL_5:
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2);
      v8 = *(a2 + 56);
      *(a1 + 56) = v8;
      *(a1 + 64) = *(a2 + 64);
      (**(v8 - 8))(a1 + 32, a2 + 32);
      *(a1 + 72) = 1;
      if (a1 == a2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  *a1 = *a2;
  v19 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v20;
  *(a1 + 48) = v21;
  *(a1 + 16) = v19;
  if (a1 == a2)
  {
    goto LABEL_21;
  }

LABEL_13:
  v12 = *(a3 + 20);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  outlined destroy of TextInputCompletionButtonStyle(a1 + v12, type metadata accessor for Environment<DismissSearchAccessoryAction>.Content);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v16 = v15;
    v17 = *(v15 - 8);
    if ((*(v17 + 48))(v14, 1, v15))
    {
      type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
      memcpy(v13, v14, *(*(v18 - 8) + 64));
    }

    else
    {
      *v13 = *v14;
      v45 = v17;
      v13[1] = v14[1];
      v22 = *(v16 + 32);
      v23 = v13 + v22;
      v24 = v14 + v22;
      *v23 = *(v14 + v22);
      v23[1] = *(v14 + v22 + 1);
      v23[2] = *(v14 + v22 + 2);
      v23[3] = *(v14 + v22 + 3);
      LODWORD(v22) = *(v14 + v22 + 4);
      v23[8] = v24[8];
      *(v23 + 1) = v22;
      v25 = type metadata accessor for SearchFieldState(0);
      v46 = a3;
      v26 = v25[9];
      v27 = type metadata accessor for AttributedString();
      v44 = *(*(v27 - 8) + 16);

      v28 = &v23[v26];
      v29 = &v24[v26];
      a3 = v46;
      v44(v28, v29, v27);
      v23[v25[10]] = v24[v25[10]];
      v30 = v25[11];
      v31 = &v23[v30];
      v32 = &v24[v30];
      v33 = v32[4];
      *v31 = *v32;
      v31[4] = v33;
      (*(v45 + 56))(v13, 0, 1, v16);
    }
  }

  else
  {
    *v13 = *v14;
  }

  swift_storeEnumTagMultiPayload();
LABEL_21:
  v34 = *(a3 + 24);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = *(v36 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v36, v38, v39);
  v40 = *v35;
  v41 = *(v35 + 8);
  v42 = *(v35 + 16);
  *v35 = v37;
  *(v35 + 8) = v38;
  *(v35 + 16) = v39;
  outlined consume of Environment<TriggerSubmitAction?>.Content(v40, v41, v42, outlined consume of TriggerSubmitAction?);
  return a1;
}

_OWORD *initializeWithTake for TextInputCompletionButtonStyle(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  *(a1 + 57) = *(a2 + 57);
  v7 = a2[1];
  *a1 = *a2;
  a1[1] = v7;
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  v12 = v11;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v14 = v13;
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v10, 1, v13))
    {
      type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
      memcpy(v9, v10, *(*(v16 - 8) + 64));
    }

    else
    {
      v17 = v10[1];
      *v9 = *v10;
      v9[1] = v17;
      v18 = *(v14 + 32);
      v19 = v9 + v18;
      v20 = v10 + v18;
      *v19 = *(v10 + v18);
      v19[1] = *(v10 + v18 + 1);
      *(v19 + 1) = *(v10 + v18 + 2);
      v19[8] = *(v10 + v18 + 8);
      *(v19 + 1) = *(v10 + v18 + 4);
      v21 = type metadata accessor for SearchFieldState(0);
      v31 = v15;
      v22 = v21[9];
      v23 = type metadata accessor for AttributedString();
      (*(*(v23 - 8) + 32))(&v19[v22], &v20[v22], v23);
      v19[v21[10]] = v20[v21[10]];
      v24 = v21[11];
      v25 = &v19[v24];
      v26 = &v20[v24];
      v25[4] = v26[4];
      *v25 = *v26;
      (*(v31 + 56))(v9, 0, 1, v14);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v9, v10, *(*(v12 - 8) + 64));
  }

  v27 = *(a3 + 24);
  v28 = a1 + v27;
  v29 = a2 + v27;
  *v28 = *v29;
  v28[16] = v29[16];
  return a1;
}

uint64_t assignWithTake for TextInputCompletionButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 72) == 255 || a1 != a2)
  {
    outlined destroy of TextInputSuggestionCompletionKind(a1);
LABEL_7:
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 57) = *(a2 + 57);
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  if (a1 != a2)
  {
    v9 = *(a3 + 20);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    outlined destroy of TextInputCompletionButtonStyle(a1 + v9, type metadata accessor for Environment<DismissSearchAccessoryAction>.Content);
    type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
    v13 = v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<SearchFieldState>(0);
      v15 = v14;
      v16 = *(v14 - 8);
      if ((*(v16 + 48))(v11, 1, v14))
      {
        type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
        memcpy(v10, v11, *(*(v17 - 8) + 64));
      }

      else
      {
        v18 = v11[1];
        *v10 = *v11;
        v10[1] = v18;
        v19 = *(v15 + 32);
        v20 = v10 + v19;
        v21 = v11 + v19;
        *v20 = *(v11 + v19);
        v20[1] = *(v11 + v19 + 1);
        *(v20 + 1) = *(v11 + v19 + 2);
        v20[8] = *(v11 + v19 + 8);
        *(v20 + 1) = *(v11 + v19 + 4);
        v22 = type metadata accessor for SearchFieldState(0);
        v36 = v16;
        v23 = v22[9];
        v24 = type metadata accessor for AttributedString();
        (*(*(v24 - 8) + 32))(&v20[v23], &v21[v23], v24);
        v20[v22[10]] = v21[v22[10]];
        v25 = v22[11];
        v26 = &v20[v25];
        v27 = &v21[v25];
        v26[4] = v27[4];
        *v26 = *v27;
        (*(v36 + 56))(v10, 0, 1, v15);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v10, v11, *(*(v13 - 8) + 64));
    }
  }

  v28 = *(a3 + 24);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(v30 + 16);
  v32 = *v29;
  v33 = *(v29 + 8);
  v34 = *(v29 + 16);
  *v29 = *v30;
  *(v29 + 16) = v31;
  outlined consume of Environment<TriggerSubmitAction?>.Content(v32, v33, v34, outlined consume of TriggerSubmitAction?);
  return a1;
}

void type metadata completion function for TextInputCompletionButtonStyle()
{
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t partial apply for closure #1 in TextInputCompletionButtonStyle.makeBody(configuration:)()
{
  v1 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for TextInputCompletionButtonStyle() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in TextInputCompletionButtonStyle.makeBody(configuration:)(v0 + v2, v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>, type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>>);
    }
  }
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>()
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>)
  {
    lazy protocol witness table accessor for type DefaultListButtonStyle and conformance DefaultListButtonStyle();
    v0 = type metadata accessor for PrimitiveButtonStyleContainerModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>);
    }
  }
}

uint64_t assignWithCopy for AlertStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);

  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v4;
  *(a1 + 97) = *(a2 + 97);
  v5 = *(a2 + 144);
  if (*(a1 + 144))
  {
    if (v5)
    {
      v6 = *(a2 + 128);
      if (*(a1 + 128))
      {
        if (v6)
        {
          v7 = *(a2 + 104);
          v8 = *(a2 + 112);
          v9 = *(a2 + 120);
          outlined copy of Text.Storage(v7, v8, v9);
          v10 = *(a1 + 104);
          v11 = *(a1 + 112);
          v12 = *(a1 + 120);
          *(a1 + 104) = v7;
          *(a1 + 112) = v8;
          *(a1 + 120) = v9;
          outlined consume of Text.Storage(v10, v11, v12);
          *(a1 + 128) = *(a2 + 128);
        }

        else
        {
          outlined destroy of Text(a1 + 104);
          v25 = *(a2 + 120);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 120) = v25;
        }
      }

      else if (v6)
      {
        v19 = *(a2 + 104);
        v20 = *(a2 + 112);
        v21 = *(a2 + 120);
        outlined copy of Text.Storage(v19, v20, v21);
        *(a1 + 104) = v19;
        *(a1 + 112) = v20;
        *(a1 + 120) = v21;
        *(a1 + 128) = *(a2 + 128);
      }

      else
      {
        v27 = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 104) = v27;
      }

      *(a1 + 136) = *(a2 + 136);

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);
    }

    else
    {
      outlined destroy of DialogSuppressionConfiguration(a1 + 104);
      v16 = *(a2 + 120);
      v17 = *(a2 + 136);
      v18 = *(a2 + 152);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 152) = v18;
      *(a1 + 136) = v17;
      *(a1 + 120) = v16;
    }
  }

  else if (v5)
  {
    if (*(a2 + 128))
    {
      v13 = *(a2 + 104);
      v14 = *(a2 + 112);
      v15 = *(a2 + 120);
      outlined copy of Text.Storage(v13, v14, v15);
      *(a1 + 104) = v13;
      *(a1 + 112) = v14;
      *(a1 + 120) = v15;
      *(a1 + 128) = *(a2 + 128);
    }

    else
    {
      v26 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v26;
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
  }

  else
  {
    v22 = *(a2 + 104);
    v23 = *(a2 + 120);
    v24 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v24;
    *(a1 + 120) = v23;
    *(a1 + 104) = v22;
  }

  v28 = (a1 + 160);
  v30 = (a2 + 160);
  v29 = *(a2 + 160);
  if (*(a1 + 160))
  {
    if (v29)
    {
      v31 = *(a2 + 168);
      *(a1 + 160) = v29;
      *(a1 + 168) = v31;
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      v32 = *(a2 + 192);
      v33 = *(a1 + 192);
      *(a1 + 192) = v32;
      v34 = v32;

      *(a1 + 200) = *(a2 + 200);

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);

      *(a1 + 224) = *(a2 + 224);
      *(a1 + 228) = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 236) = *(a2 + 236);
      *(a1 + 240) = *(a2 + 240);
    }

    else
    {
      outlined destroy of BoundInputsView(a1 + 160);
      v38 = *(a2 + 176);
      *v28 = *v30;
      *(a1 + 176) = v38;
      v40 = *(a2 + 208);
      v39 = *(a2 + 224);
      v41 = *(a2 + 192);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 208) = v40;
      *(a1 + 224) = v39;
      *(a1 + 192) = v41;
    }
  }

  else if (v29)
  {
    v35 = *(a2 + 168);
    *(a1 + 160) = v29;
    *(a1 + 168) = v35;
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    v36 = *(a2 + 192);
    *(a1 + 192) = v36;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 236) = *(a2 + 236);
    *(a1 + 240) = *(a2 + 240);
    v37 = v36;
  }

  else
  {
    v42 = *(a2 + 176);
    *v28 = *v30;
    *(a1 + 176) = v42;
    v43 = *(a2 + 192);
    v44 = *(a2 + 208);
    v45 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 208) = v44;
    *(a1 + 224) = v45;
    *(a1 + 192) = v43;
  }

  return a1;
}

uint64_t assignWithTake for AlertStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  if (!*(a1 + 144))
  {
    goto LABEL_7;
  }

  v5 = *(a2 + 144);
  if (!v5)
  {
    outlined destroy of DialogSuppressionConfiguration(a1 + 104);
LABEL_7:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_11;
  }

  if (!*(a1 + 128))
  {
LABEL_9:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    goto LABEL_10;
  }

  v6 = *(a2 + 128);
  if (!v6)
  {
    outlined destroy of Text(a1 + 104);
    goto LABEL_9;
  }

  v7 = *(a2 + 120);
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v7;
  outlined consume of Text.Storage(v8, v9, v10);
  *(a1 + 128) = v6;

LABEL_10:
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = v5;

  *(a1 + 152) = *(a2 + 152);
LABEL_11:
  v11 = *(a2 + 160);
  if (!*(a1 + 160))
  {
LABEL_15:
    v15 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v15;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    v16 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v16;
    return a1;
  }

  if (!v11)
  {
    outlined destroy of BoundInputsView(a1 + 160);
    goto LABEL_15;
  }

  v12 = *(a2 + 168);
  *(a1 + 160) = v11;
  *(a1 + 168) = v12;
  *(a1 + 176) = *(a2 + 176);
  v13 = *(a2 + 192);
  v14 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v13;

  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);

  return a1;
}

uint64_t getEnumTagSinglePayload for AlertStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t storeEnumTagSinglePayload for AlertStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for AlertModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = *(v9 + 64) + 7;
  if ((v10 | v7) > 7 || ((*(v9 + 80) | *(v6 + 80)) & 0x100000) != 0 || ((v12 + ((v8 + v10 + ((v7 + 64) & ~v7)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 89 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    v16 = v15 + (((v10 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v7) + 16));
  }

  else
  {
    v37 = ~v10;
    v38 = a1;
    *a1 = *a2;
    v17 = a1 & 0xFFFFFFFFFFFFFFF8;
    v18 = a2 & 0xFFFFFFFFFFFFFFF8;
    v35 = v4;
    v36 = v5;
    *(v17 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    *(v17 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    *(v17 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
    v19 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
    v20 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
    v21 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);

    outlined copy of Text.Storage(v19, v20, v21);
    *(v17 + 32) = v19;
    *(v17 + 40) = v20;
    *(v17 + 48) = v21;
    *(v17 + 56) = *(v18 + 56);
    v22 = *(v6 + 16);

    v22(v17 + 64, v18 + 64, v35);
    v23 = (v11 + v17 + 64) & v37;
    v24 = (v11 + v18 + 64) & v37;
    (*(v9 + 16))(v23, v24, v36);
    v25 = (v12 + v23) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v12 + v24) & 0xFFFFFFFFFFFFFFF8;
    if (*v26 < 0xFFFFFFFFuLL)
    {
      v30 = *(v26 + 16);
      *v25 = *v26;
      *(v25 + 16) = v30;
      v31 = *(v26 + 32);
      v32 = *(v26 + 48);
      v33 = *(v26 + 64);
      *(v25 + 80) = *(v26 + 80);
      *(v25 + 48) = v32;
      *(v25 + 64) = v33;
      *(v25 + 32) = v31;
    }

    else
    {
      v27 = *(v26 + 8);
      *v25 = *v26;
      *(v25 + 8) = v27;
      *(v25 + 16) = *(v26 + 16);
      *(v25 + 24) = *(v26 + 24);
      v28 = *(v26 + 32);
      *(v25 + 32) = v28;
      *(v25 + 40) = *(v26 + 40);
      *(v25 + 48) = *(v26 + 48);
      *(v25 + 56) = *(v26 + 56);
      *(v25 + 64) = *(v26 + 64);
      *(v25 + 68) = *(v26 + 68);
      *(v25 + 72) = *(v26 + 72);
      *(v25 + 76) = *(v26 + 76);
      *(v25 + 80) = *(v26 + 80);
      v29 = v28;
    }

    *(v25 + 88) = *(v26 + 88);
    return v38;
  }

  return v16;
}

unint64_t initializeWithTake for AlertModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v5 + 8) = v6;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);
  *(v5 + 32) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v5 + 48) = v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v10 + 64 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  v12 = (v10 + 64 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32);
  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 16);
  *v21 = *v22;
  *(v21 + 16) = v23;
  v25 = *(v22 + 48);
  v24 = *(v22 + 64);
  v26 = *(v22 + 32);
  *(v21 + 80) = *(v22 + 80);
  *(v21 + 48) = v25;
  *(v21 + 64) = v24;
  *(v21 + 32) = v26;
  *(v21 + 88) = *(v22 + 88);
  return a1;
}

unint64_t assignWithTake for AlertModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);

  *(v5 + 16) = *(v6 + 16);

  *(v5 + 24) = *(v6 + 24);
  v7 = *(v6 + 48);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  *(v5 + 32) = *(v6 + 32);
  *(v5 + 48) = v7;
  outlined consume of Text.Storage(v8, v9, v10);
  *(v5 + 56) = *(v6 + 56);

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v13 + 64 + v5) & ~v13;
  v15 = (v13 + 64 + v6) & ~v13;
  (*(v11 + 40))(v14, v15);
  v16 = *(v12 + 24);
  v17 = *(*(a3 + 24) - 8);
  v18 = v17 + 40;
  v19 = *(v17 + 80);
  v20 = v16 + v19;
  v21 = (v20 + v14) & ~v19;
  v22 = (v20 + v15) & ~v19;
  (*(v17 + 40))(v21, v22);
  v23 = *(v18 + 24) + 7;
  v24 = (v23 + v21) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + v22) & 0xFFFFFFFFFFFFFFF8;
  if (*v24 < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*v25 < 0xFFFFFFFFuLL)
  {

LABEL_5:
    v28 = *(v25 + 16);
    *v24 = *v25;
    *(v24 + 16) = v28;
    v29 = *(v25 + 32);
    v30 = *(v25 + 48);
    v31 = *(v25 + 64);
    *(v24 + 80) = *(v25 + 80);
    *(v24 + 48) = v30;
    *(v24 + 64) = v31;
    *(v24 + 32) = v29;
    goto LABEL_6;
  }

  v26 = *(v25 + 8);
  *v24 = *v25;
  *(v24 + 8) = v26;
  *(v24 + 16) = *(v25 + 16);
  *(v24 + 24) = *(v25 + 24);
  v27 = *(v24 + 32);
  *(v24 + 32) = *(v25 + 32);

  *(v24 + 40) = *(v25 + 40);

  *(v24 + 48) = *(v25 + 48);
  *(v24 + 56) = *(v25 + 56);

  *(v24 + 64) = *(v25 + 64);
  *(v24 + 68) = *(v25 + 68);
  *(v24 + 72) = *(v25 + 72);
  *(v24 + 76) = *(v25 + 76);
  *(v24 + 80) = *(v25 + 80);

LABEL_6:
  *(v24 + 88) = *(v25 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for AlertModifier(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_31;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 64) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 89;
  v15 = (a2 - v13 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14), !*(a1 + v14)))
  {
LABEL_31:
    v23 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v12 & 0x80000000) != 0)
    {
      v25 = (v23 + v9 + 64) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v25);
      }

      else
      {
        return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v24 = *(v23 + 16);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v21 = (v19 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v13 + (v22 | v21) + 1;
}

void storeEnumTagSinglePayload for AlertModifier(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((*(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 64) & ~v10)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 89;
  if (v14 >= a3)
  {
    v19 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = (a3 - v14 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v19)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        v22 = a1 & 0xFFFFFFFFFFFFFFF8;
        if ((v13 & 0x80000000) != 0)
        {
          v23 = (v22 + v10 + 64) & ~v10;
          if (v7 == v14)
          {
            v24 = *(v6 + 56);

            v24(v23);
          }

          else
          {
            v25 = *(v9 + 56);
            v26 = (v23 + v11 + v12) & ~v12;

            v25(v26);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *(v22 + 24) = 0;
          *(v22 + 8) = a2 & 0x7FFFFFFF;
          *(v22 + 16) = 0;
        }

        else
        {
          *(v22 + 16) = a2 - 1;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  v20 = ~v14 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *(a1 + v15) = v21;
      }

      else
      {
        *(a1 + v15) = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    *(a1 + v15) = v21;
  }
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance AlertStorage.PreferenceKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

uint64_t assignWithCopy for MakeAlertStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v4;
  *(a1 + 97) = *(a2 + 97);
  v5 = *(a2 + 144);
  if (*(a1 + 144))
  {
    if (v5)
    {
      v6 = *(a2 + 128);
      if (*(a1 + 128))
      {
        if (v6)
        {
          v7 = *(a2 + 104);
          v8 = *(a2 + 112);
          v9 = *(a2 + 120);
          outlined copy of Text.Storage(v7, v8, v9);
          v10 = *(a1 + 104);
          v11 = *(a1 + 112);
          v12 = *(a1 + 120);
          *(a1 + 104) = v7;
          *(a1 + 112) = v8;
          *(a1 + 120) = v9;
          outlined consume of Text.Storage(v10, v11, v12);
          *(a1 + 128) = *(a2 + 128);
        }

        else
        {
          outlined destroy of Text(a1 + 104);
          v25 = *(a2 + 120);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 120) = v25;
        }
      }

      else if (v6)
      {
        v19 = *(a2 + 104);
        v20 = *(a2 + 112);
        v21 = *(a2 + 120);
        outlined copy of Text.Storage(v19, v20, v21);
        *(a1 + 104) = v19;
        *(a1 + 112) = v20;
        *(a1 + 120) = v21;
        *(a1 + 128) = *(a2 + 128);
      }

      else
      {
        v27 = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 104) = v27;
      }

      *(a1 + 136) = *(a2 + 136);

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);
    }

    else
    {
      outlined destroy of DialogSuppressionConfiguration(a1 + 104);
      v16 = *(a2 + 120);
      v17 = *(a2 + 136);
      v18 = *(a2 + 152);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 152) = v18;
      *(a1 + 136) = v17;
      *(a1 + 120) = v16;
    }
  }

  else if (v5)
  {
    if (*(a2 + 128))
    {
      v13 = *(a2 + 104);
      v14 = *(a2 + 112);
      v15 = *(a2 + 120);
      outlined copy of Text.Storage(v13, v14, v15);
      *(a1 + 104) = v13;
      *(a1 + 112) = v14;
      *(a1 + 120) = v15;
      *(a1 + 128) = *(a2 + 128);
    }

    else
    {
      v26 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v26;
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
  }

  else
  {
    v22 = *(a2 + 104);
    v23 = *(a2 + 120);
    v24 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v24;
    *(a1 + 120) = v23;
    *(a1 + 104) = v22;
  }

  return a1;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for MakeAlertStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  if (*(a1 + 144))
  {
    v6 = *(a2 + 144);
    if (v6)
    {
      if (*(a1 + 128))
      {
        v7 = *(a2 + 128);
        if (v7)
        {
          v8 = *(a2 + 120);
          v9 = *(a1 + 104);
          v10 = *(a1 + 112);
          v11 = *(a1 + 120);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 120) = v8;
          outlined consume of Text.Storage(v9, v10, v11);
          *(a1 + 128) = v7;

LABEL_10:
          *(a1 + 136) = *(a2 + 136);

          *(a1 + 144) = v6;

          *(a1 + 152) = *(a2 + 152);
          return a1;
        }

        outlined destroy of Text(a1 + 104);
      }

      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      goto LABEL_10;
    }

    outlined destroy of DialogSuppressionConfiguration(a1 + 104);
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for MakeAlertStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MakeAlertStorage(uint64_t result, int a2, int a3)
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
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of (key: ViewIdentity, value: AlertStorage)(uint64_t a1)
{
  type metadata accessor for (key: ViewIdentity, value: AlertStorage)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (key: ViewIdentity, value: AlertStorage)()
{
  if (!lazy cache variable for type metadata for (key: ViewIdentity, value: AlertStorage))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: ViewIdentity, value: AlertStorage));
    }
  }
}

double _s7SwiftUI12ViewIdentityV_AA12AlertStorageVtSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t specialized OptionSet<>.remove(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  if (v4 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v4 & result;
    if ((v4 & result) != 0)
    {
      result = specialized SetAlgebra.subtract(_:)(result);
    }

    *a2 = v5;
    a2[1] = v5 == 0;
  }

  return result;
}

uint64_t specialized OptionSet<>.update(with:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if (v3 >= 0x10 || (v3 | result) >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *v2 = v3 | result;
    v4 = v3 & result;
    *a2 = v4;
    a2[1] = v4 == 0;
  }

  return result;
}

uint64_t specialized SetAlgebra.subtracting(_:)@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2 >= 0x10u || (a2 ^ result) >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a3 = (a2 ^ result) & a2;
  }

  return result;
}

uint64_t specialized SetAlgebra.subtract(_:)(uint64_t result)
{
  v2 = *v1;
  if (v2 >= 0x10 || (v2 ^ result) >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *v1 = (v2 ^ result) & v2;
  }

  return result;
}

uint64_t SwipeGesture.Direction.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0xFu)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t one-time initialization function for horizontal()
{
  v0 = 0;
  v1 = 0;
LABEL_2:
  v2 = v0;
  while (v2 != 2)
  {
    if (v1 >= 0x10)
    {
      goto LABEL_7;
    }

    v0 = v2 + 1;
    v3 = outlined read-only object #0 of one-time initialization function for horizontal[v2++ + 32];
    if ((v3 & ~v1) != 0)
    {
      v1 |= v3;
      if (v3 < 0x10)
      {
        goto LABEL_2;
      }

LABEL_7:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
    }
  }

  static SwipeGesture.Direction.horizontal = v1;
  return result;
}

uint64_t one-time initialization function for vertical()
{
  v0 = 0;
  v1 = 0;
LABEL_2:
  v2 = v0;
  while (v2 != 2)
  {
    if (v1 >= 0x10)
    {
      goto LABEL_7;
    }

    v0 = v2 + 1;
    v3 = outlined read-only object #0 of one-time initialization function for vertical[v2++ + 32];
    if ((v3 & ~v1) != 0)
    {
      v1 |= v3;
      if (v3 < 0x10)
      {
        goto LABEL_2;
      }

LABEL_7:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
    }
  }

  static SwipeGesture.Direction.vertical = v1;
  return result;
}

uint64_t one-time initialization function for all()
{
  if (one-time initialization token for horizontal != -1)
  {
    result = swift_once();
  }

  v5[32] = static SwipeGesture.Direction.horizontal;
  if (one-time initialization token for vertical != -1)
  {
    result = swift_once();
  }

  v0 = 0;
  v1 = 0;
  v5[33] = static SwipeGesture.Direction.vertical;
LABEL_6:
  v2 = v0;
  while (v2 != 2)
  {
    if (v1 >= 0x10)
    {
      goto LABEL_11;
    }

    v0 = v2 + 1;
    v3 = v5[v2++ + 32];
    if ((v3 & ~v1) != 0)
    {
      v1 |= v3;
      if (v3 < 0x10)
      {
        goto LABEL_6;
      }

LABEL_11:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
    }
  }

  static SwipeGesture.Direction.all = v1;
  return result;
}

void *static SwipeGesture.Direction.horizontal.getter@<X0>(void *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

unsigned __int8 *protocol witness for OptionSet.init(rawValue:) in conformance SwipeGesture.Direction@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v2;
  }

  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.union(_:) in conformance SwipeGesture.Direction@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if (v3 >= 0x10 || (v4 = *result, *a2 = v3, v5 = v4 | v3, v5 >= 0x10))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

_BYTE *protocol witness for SetAlgebra.intersection(_:) in conformance SwipeGesture.Direction@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if (v3 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = *result & v3;
  }

  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.symmetricDifference(_:) in conformance SwipeGesture.Direction@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if (v3 >= 0x10 || (v4 = *result, *a2 = v3, v5 = v4 ^ v3, v5 >= 0x10))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.formUnion(_:) in conformance SwipeGesture.Direction(unsigned __int8 *result)
{
  v2 = *v1 | *result;
  if (v2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *v1 = v2;
  }

  return result;
}

_BYTE *protocol witness for SetAlgebra.formIntersection(_:) in conformance SwipeGesture.Direction(_BYTE *result)
{
  v2 = (*v1 & *result);
  if (v2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *v1 = v2;
  }

  return result;
}