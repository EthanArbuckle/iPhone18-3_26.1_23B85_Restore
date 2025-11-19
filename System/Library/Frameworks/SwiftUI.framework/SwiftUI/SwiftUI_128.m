void *initializeBufferWithCopyOfBuffer for ToolbarStorage.SearchItem(void *a1, void *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    a1[1] = a2[1];
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v9 = *(v8 + 32);
    v10 = v7 + v9;
    v69 = a3;
    v11 = a2 + v9;
    *v10 = *(a2 + v9);
    v10[1] = *(a2 + v9 + 1);
    *(v10 + 1) = *(a2 + v9 + 2);
    v10[8] = *(a2 + v9 + 8);
    *(v10 + 1) = *(a2 + v9 + 4);
    v12 = type metadata accessor for SearchFieldState(0);
    v13 = v12[9];
    v14 = type metadata accessor for AttributedString();
    v15 = *(*(v14 - 8) + 16);

    v15(&v10[v13], &v11[v13], v14);
    v10[v12[10]] = v11[v12[10]];
    v16 = v12[11];
    v17 = &v10[v16];
    v18 = &v11[v16];
    v17[4] = v18[4];
    v19 = v69[5];
    v20 = v69[6];
    v21 = *(a2 + v19);
    *v17 = *v18;
    *(v7 + v19) = v21;
    v22 = v7 + v20;
    v23 = a2 + v20;
    v24 = *(a2 + v20 + 8);

    if (v24 == 255)
    {
      *v22 = *v23;
      v22[8] = v23[8];
    }

    else
    {
      v25 = *v23;
      v26 = v24 & 1;
      outlined copy of PlatformItemCollection.Storage(v25, v26);
      *v22 = v25;
      v22[8] = v26;
    }

    v27 = v69[7];
    v28 = v7 + v27;
    v29 = a2 + v27;
    v30 = v29[8];
    if (v30 == 255)
    {
      *v28 = *v29;
      v28[8] = v29[8];
    }

    else
    {
      v31 = *v29;
      v32 = v30 & 1;
      outlined copy of PlatformItemCollection.Storage(*v29, v30 & 1);
      *v28 = v31;
      v28[8] = v32;
    }

    v33 = v69[8];
    v34 = v7 + v33;
    v35 = a2 + v33;
    v36 = *(a2 + v33);
    v37 = *(a2 + v33 + 8);
    v38 = *(a2 + v33 + 16);
    outlined copy of Text.Storage(v36, v37, v38);
    *v34 = v36;
    *(v34 + 1) = v37;
    v34[16] = v38;
    *(v34 + 3) = *(v35 + 3);
    v39 = v69[9];
    v40 = v69[10];
    v41 = (v7 + v39);
    v42 = (a2 + v39);
    v43 = v42[1];
    *v41 = *v42;
    v41[1] = v43;
    v44 = v7 + v40;
    v45 = a2 + v40;
    v46 = *(a2 + v40);

    if (v46)
    {
      v47 = *(v45 + 1);
      *v44 = v46;
      *(v44 + 1) = v47;
      *(v44 + 4) = *(v45 + 4);
      v48 = *(v45 + 4);
      *(v44 + 3) = *(v45 + 3);
      *(v44 + 4) = v48;
      *(v44 + 5) = *(v45 + 5);
      *(v44 + 12) = *(v45 + 12);
      *(v44 + 7) = *(v45 + 7);
      *(v44 + 4) = *(v45 + 4);
      *(v44 + 10) = *(v45 + 10);
      v49 = v48;
    }

    else
    {
      v50 = *(v45 + 3);
      *(v44 + 2) = *(v45 + 2);
      *(v44 + 3) = v50;
      *(v44 + 4) = *(v45 + 4);
      *(v44 + 10) = *(v45 + 10);
      v51 = *(v45 + 1);
      *v44 = *v45;
      *(v44 + 1) = v51;
    }

    v52 = v69[11];
    v53 = v7 + v52;
    v54 = a2 + v52;
    if (*v54)
    {
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;
      *(v53 + 4) = *(v54 + 4);
      v56 = *(v54 + 4);
      *(v53 + 3) = *(v54 + 3);
      *(v53 + 4) = v56;
      *(v53 + 5) = *(v54 + 5);
      *(v53 + 12) = *(v54 + 12);
      *(v53 + 7) = *(v54 + 7);
      *(v53 + 4) = *(v54 + 4);
      *(v53 + 10) = *(v54 + 10);
      v57 = v56;
    }

    else
    {
      v58 = *(v54 + 3);
      *(v53 + 2) = *(v54 + 2);
      *(v53 + 3) = v58;
      *(v53 + 4) = *(v54 + 4);
      *(v53 + 10) = *(v54 + 10);
      v59 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v59;
    }

    v60 = v69[13];
    *(v7 + v69[12]) = *(a2 + v69[12]);
    v61 = v7 + v60;
    v62 = a2 + v60;
    if (*v62)
    {
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      *(v61 + 4) = *(v62 + 4);
      v64 = *(v62 + 4);
      *(v61 + 3) = *(v62 + 3);
      *(v61 + 4) = v64;
      *(v61 + 5) = *(v62 + 5);
      *(v61 + 12) = *(v62 + 12);
      *(v61 + 7) = *(v62 + 7);
      *(v61 + 4) = *(v62 + 4);
      *(v61 + 10) = *(v62 + 10);
      v65 = v64;
    }

    else
    {
      v66 = *(v62 + 3);
      *(v61 + 2) = *(v62 + 2);
      *(v61 + 3) = v66;
      *(v61 + 4) = *(v62 + 4);
      *(v61 + 10) = *(v62 + 10);
      v67 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v67;
    }

    *(v7 + v69[14]) = *(a2 + v69[14]);
  }

  return v7;
}

void *initializeWithTake for ToolbarStorage.SearchItem(void *a1, void *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *(a2 + v8);
  v9[1] = *(a2 + v8 + 1);
  *(v9 + 1) = *(a2 + v8 + 2);
  v9[8] = *(a2 + v8 + 8);
  *(v9 + 1) = *(a2 + v8 + 4);
  v11 = type metadata accessor for SearchFieldState(0);
  v12 = v11[9];
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v9[v11[10]] = v10[v11[10]];
  v14 = v11[11];
  v15 = &v9[v14];
  v16 = &v10[v14];
  v15[4] = v16[4];
  v17 = a3[5];
  v18 = a3[6];
  v19 = *(a2 + v17);
  *v15 = *v16;
  *(a1 + v17) = v19;
  v20 = a1 + v18;
  *v20 = *(a2 + v18);
  v20[8] = *(a2 + v18 + 8);
  v21 = a3[7];
  v22 = a3[8];
  v23 = a1 + v21;
  v24 = a2 + v21;
  *v23 = *v24;
  v23[8] = v24[8];
  v25 = (a1 + v22);
  v26 = (a2 + v22);
  v27 = v26[1];
  *v25 = *v26;
  v25[1] = v27;
  v28 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(v30 + 1);
  *v29 = *v30;
  *(v29 + 1) = v31;
  v32 = *(v30 + 2);
  v33 = *(v30 + 3);
  v34 = *(v30 + 4);
  *(v29 + 10) = *(v30 + 10);
  *(v29 + 3) = v33;
  *(v29 + 4) = v34;
  *(v29 + 2) = v32;
  v35 = a3[11];
  v36 = a3[12];
  v37 = a1 + v35;
  v38 = a2 + v35;
  v39 = *(v38 + 1);
  *v37 = *v38;
  *(v37 + 1) = v39;
  v40 = *(v38 + 2);
  v41 = *(v38 + 3);
  v42 = *(v38 + 4);
  *(v37 + 10) = *(v38 + 10);
  *(v37 + 3) = v41;
  *(v37 + 4) = v42;
  LOBYTE(v38) = *(a2 + v36);
  *(v37 + 2) = v40;
  *(a1 + v36) = v38;
  v43 = a3[13];
  v44 = a3[14];
  v45 = a1 + v43;
  v46 = a2 + v43;
  v47 = *(v46 + 1);
  *v45 = *v46;
  *(v45 + 1) = v47;
  *(v45 + 10) = *(v46 + 10);
  v48 = *(v46 + 4);
  *(v45 + 3) = *(v46 + 3);
  *(v45 + 4) = v48;
  *(v45 + 2) = *(v46 + 2);
  *(a1 + v44) = *(a2 + v44);
  return a1;
}

void *assignWithTake for ToolbarStorage.SearchItem(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 40))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  *(a1 + a3[5]) = *(a2 + a3[5]);

  v16 = a3[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(a1 + v16 + 8);
  if (v19 != 255)
  {
    v20 = v18[8];
    if (v20 != 255)
    {
      v21 = *v17;
      *v17 = *v18;
      *(v17 + 8) = v20 & 1;
      outlined consume of PlatformItemCollection.Storage(v21, v19 & 1);
      goto LABEL_6;
    }

    outlined destroy of PlatformItemCollection(v17);
  }

  *v17 = *v18;
  *(v17 + 8) = v18[8];
LABEL_6:
  v22 = a3[7];
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = *(a1 + v22 + 8);
  if (v25 != 255)
  {
    v26 = v24[8];
    if (v26 != 255)
    {
      v27 = *v23;
      *v23 = *v24;
      *(v23 + 8) = v26 & 1;
      outlined consume of PlatformItemCollection.Storage(v27, v25 & 1);
      goto LABEL_11;
    }

    outlined destroy of PlatformItemCollection(v23);
  }

  *v23 = *v24;
  *(v23 + 8) = v24[8];
LABEL_11:
  v28 = a3[8];
  v29 = a1 + v28;
  v30 = a2 + v28;
  LOBYTE(v28) = *(a2 + v28 + 16);
  v31 = *v29;
  v32 = *(v29 + 1);
  v33 = v29[16];
  *v29 = *v30;
  v29[16] = v28;
  outlined consume of Text.Storage(v31, v32, v33);
  *(v29 + 3) = *(v30 + 3);

  v34 = a3[9];
  v35 = a1 + v34;
  v36 = a2 + v34;
  *(a1 + v34) = *(a2 + v34);

  *(v35 + 1) = *(v36 + 1);

  v37 = a3[10];
  v38 = a1 + v37;
  v39 = a2 + v37;
  if (*(a1 + v37))
  {
    if (*v39)
    {
      v40 = *(v39 + 1);
      *v38 = *v39;
      *(v38 + 8) = v40;
      *(v38 + 16) = *(v39 + 4);
      v41 = *(v39 + 4);
      v42 = *(v38 + 32);
      *(v38 + 24) = *(v39 + 3);
      *(v38 + 32) = v41;

      *(v38 + 40) = *(v39 + 5);

      *(v38 + 48) = *(v39 + 12);
      *(v38 + 56) = *(v39 + 7);

      *(v38 + 64) = *(v39 + 4);
      *(v38 + 80) = *(v39 + 10);

      goto LABEL_16;
    }

    outlined destroy of BoundInputsView(v38);
  }

  v43 = *(v39 + 3);
  *(v38 + 32) = *(v39 + 2);
  *(v38 + 48) = v43;
  *(v38 + 64) = *(v39 + 4);
  *(v38 + 80) = *(v39 + 10);
  v44 = *(v39 + 1);
  *v38 = *v39;
  *(v38 + 16) = v44;
LABEL_16:
  v45 = a3[11];
  v46 = a1 + v45;
  v47 = a2 + v45;
  if (*(a1 + v45))
  {
    if (*v47)
    {
      v48 = *(v47 + 1);
      *v46 = *v47;
      *(v46 + 8) = v48;
      *(v46 + 16) = *(v47 + 4);
      v49 = *(v47 + 4);
      v50 = *(v46 + 32);
      *(v46 + 24) = *(v47 + 3);
      *(v46 + 32) = v49;

      *(v46 + 40) = *(v47 + 5);

      *(v46 + 48) = *(v47 + 12);
      *(v46 + 56) = *(v47 + 7);

      *(v46 + 64) = *(v47 + 4);
      *(v46 + 80) = *(v47 + 10);

      goto LABEL_21;
    }

    outlined destroy of BoundInputsView(v46);
  }

  v51 = *(v47 + 3);
  *(v46 + 32) = *(v47 + 2);
  *(v46 + 48) = v51;
  *(v46 + 64) = *(v47 + 4);
  *(v46 + 80) = *(v47 + 10);
  v52 = *(v47 + 1);
  *v46 = *v47;
  *(v46 + 16) = v52;
LABEL_21:
  v53 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  v54 = a1 + v53;
  v55 = a2 + v53;
  if (!*(a1 + v53))
  {
LABEL_25:
    v59 = *(v55 + 3);
    *(v54 + 2) = *(v55 + 2);
    *(v54 + 3) = v59;
    *(v54 + 4) = *(v55 + 4);
    *(v54 + 10) = *(v55 + 10);
    v60 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v60;
    goto LABEL_26;
  }

  if (!*v55)
  {
    outlined destroy of BoundInputsView(a1 + v53);
    goto LABEL_25;
  }

  v56 = *(v55 + 1);
  *v54 = *v55;
  *(v54 + 1) = v56;
  *(v54 + 4) = *(v55 + 4);
  v57 = *(v55 + 4);
  v58 = *(v54 + 4);
  *(v54 + 3) = *(v55 + 3);
  *(v54 + 4) = v57;

  *(v54 + 5) = *(v55 + 5);

  *(v54 + 12) = *(v55 + 12);
  *(v54 + 7) = *(v55 + 7);

  *(v54 + 4) = *(v55 + 4);
  *(v54 + 10) = *(v55 + 10);

LABEL_26:
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t assignWithCopy for ToolbarStorage.Entry.ID(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 80);
  if (*(a1 + 80) == 255)
  {
    if (v4 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (v4 != 255)
  {
    if (a1 == a2)
    {
      return a1;
    }

    outlined destroy of ToolbarItemPlacement.Role(a1 + 40);
    if (*(a2 + 80) != 1)
    {
LABEL_8:
      v8 = *(a2 + 40);
      v9 = *(a2 + 56);
      *(a1 + 65) = *(a2 + 65);
      *(a1 + 56) = v9;
      *(a1 + 40) = v8;
      return a1;
    }

LABEL_5:
    v7 = *(a2 + 64);
    *(a1 + 64) = v7;
    *(a1 + 72) = *(a2 + 72);
    (**(v7 - 8))(a1 + 40, a2 + 40);
    *(a1 + 80) = 1;
    return a1;
  }

  outlined destroy of ToolbarItemPlacement.Role(a1 + 40);
  v5 = *(a2 + 65);
  v6 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v6;
  *(a1 + 65) = v5;
  return a1;
}

uint64_t assignWithTake for ToolbarStorage.Entry.ID(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 80) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 80) == 255 || a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 40);
LABEL_7:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 65) = *(a2 + 65);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarStorage.Entry.ID(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarStorage.Entry.ID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for ToolbarStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  if (!*(a1 + 24))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    outlined destroy of ToolbarItemPlacement.Role?(a1 + 16, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
LABEL_5:
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_6;
  }

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for ToolbarStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarStorage.Entry(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *v3;
      v18 = (a1 + 8);
      if (*(v3 + 48) == 1)
      {
        v19 = *(v3 + 2);
        *(a1 + 32) = v19;
        (**(v19 - 8))(v18, (v3 + 1));
        *(a1 + 48) = 1;
      }

      else
      {
        v20 = *(v3 + 3);
        *v18 = *(v3 + 1);
        *(a1 + 24) = v20;
        *(a1 + 33) = *(v3 + 33);
      }

      *(a1 + 49) = *(v3 + 49);
      *(a1 + 56) = v3[7];
      *(a1 + 64) = *(v3 + 32);
      *(a1 + 72) = v3[9];

      goto LABEL_149;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_150:
        *(a1 + *(v6 + 20)) = *(v3 + *(v6 + 20));
        return a1;
      }

      *a1 = *v3;
      *(a1 + 8) = v3[1];
      *(a1 + 16) = *(v3 + 1);
      v9 = v3[5];
      *(a1 + 32) = v3[4];
      *(a1 + 40) = v9;
      v10 = v3[7];
      *(a1 + 48) = v3[6];
      *(a1 + 56) = v10;
      v11 = v3[11];

      if (v11)
      {
        v12 = v3[12];
        *(a1 + 88) = v11;
        *(a1 + 96) = v12;
        (**(v11 - 8))(a1 + 64, (v3 + 8), v11);
        *(a1 + 104) = v3[13];
      }

      else
      {
        v45 = *(v3 + 5);
        *(a1 + 64) = *(v3 + 4);
        *(a1 + 80) = v45;
        *(a1 + 96) = *(v3 + 6);
      }

      v271 = v6;
      if (*(v3 + 152) == 1)
      {
        v46 = *(v3 + 17);
        *(a1 + 136) = v46;
        (**(v46 - 8))(a1 + 112, (v3 + 14));
        *(a1 + 152) = 1;
      }

      else
      {
        v47 = *(v3 + 8);
        *(a1 + 112) = *(v3 + 7);
        *(a1 + 128) = v47;
        *(a1 + 137) = *(v3 + 137);
      }

      *(a1 + 153) = *(v3 + 153);
      *(a1 + 160) = v3[20];
      *(a1 + 168) = *(v3 + 168);
      *(a1 + 169) = *(v3 + 169);
      *(a1 + 176) = v3[22];
      v48 = *(v3 + 13);
      *(a1 + 208) = v48;
      v49 = v48;
      v50 = **(v48 - 8);

      v50(a1 + 184, v3 + 23, v49);
      v51 = v3[29];
      *(a1 + 224) = v3[28];
      *(a1 + 232) = v51;
      *(a1 + 240) = v3[30];
      *(a1 + 248) = v3[31];
      *(a1 + 256) = *(v3 + 16);
      v52 = v3[34];
      v53 = v3[35];
      *(a1 + 272) = v52;
      *(a1 + 280) = v53;
      v268 = a1;
      v270 = type metadata accessor for ToolbarStorage.Item(0);
      v54 = v270[17];
      v274 = v3;
      v276 = (a1 + v54);
      v55 = v3 + v54;
      v56 = type metadata accessor for PlatformItemList.Item();
      v57 = *(v56 - 8);
      v58 = *(v57 + 48);

      v59 = v52;
      v60 = v53;
      if (v58(v55, 1, v56))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
        memcpy(v276, v55, *(*(v61 - 8) + 64));
LABEL_92:
        a1 = v268;
        swift_weakCopyInit();
        *(v268 + v270[19]) = *(v3 + v270[19]);
        *(v268 + v270[20]) = *(v3 + v270[20]);
        *(v268 + v270[21]) = *(v3 + v270[21]);
        goto LABEL_149;
      }

      v264 = v57;
      v266 = v56;
      v62 = *v55;
      v63 = *(v55 + 1);
      v64 = v276;
      *v276 = *v55;
      v276[1] = v63;
      v65 = *(v55 + 3);
      v276[2] = *(v55 + 2);
      v276[3] = v65;
      *(v276 + 32) = v55[32];
      v66 = *(v55 + 6);
      v276[5] = *(v55 + 5);
      v276[6] = v66;
      *(v276 + 56) = v55[56];
      v67 = *(v55 + 24);
      v68 = v62;
      v69 = v63;

      if (v67 >> 1 == 4294967294)
      {
        v70 = *(v55 + 13);
        *(v276 + 12) = *(v55 + 12);
        *(v276 + 13) = v70;
        *(v276 + 14) = *(v55 + 14);
        *(v276 + 235) = *(v55 + 235);
        v71 = *(v55 + 9);
        *(v276 + 8) = *(v55 + 8);
        *(v276 + 9) = v71;
        v72 = *(v55 + 11);
        *(v276 + 10) = *(v55 + 10);
        *(v276 + 11) = v72;
        v73 = *(v55 + 5);
        *(v276 + 4) = *(v55 + 4);
        *(v276 + 5) = v73;
        v74 = *(v55 + 7);
        *(v276 + 6) = *(v55 + 6);
        *(v276 + 7) = v74;
      }

      else
      {
        v83 = v55[72];
        if (v83 == 255)
        {
          v276[8] = *(v55 + 8);
          *(v276 + 72) = v55[72];
        }

        else
        {
          v84 = *(v55 + 8);
          outlined copy of GraphicsImage.Contents(v84, v55[72]);
          v276[8] = v84;
          *(v276 + 72) = v83;
          v67 = *(v55 + 24);
        }

        v276[10] = *(v55 + 10);
        *(v276 + 11) = *(v55 + 88);
        *(v276 + 104) = v55[104];
        *(v276 + 108) = *(v55 + 108);
        *(v276 + 121) = *(v55 + 121);
        *(v276 + 17) = *(v55 + 136);
        *(v276 + 19) = *(v55 + 152);
        *(v276 + 84) = *(v55 + 84);
        *(v276 + 170) = v55[170];
        *(v276 + 171) = v55[171];
        if (v67 >> 1 == 0xFFFFFFFF)
        {
          v88 = *(v55 + 12);
          *(v276 + 11) = *(v55 + 11);
          *(v276 + 12) = v88;
        }

        else
        {
          v89 = *(v55 + 22);
          v90 = *(v55 + 23);
          v91 = *(v55 + 25);
          outlined copy of AccessibilityImageLabel(v89, v90, v67);
          v276[22] = v89;
          v276[23] = v90;
          v276[24] = v67;
          v276[25] = v91;
        }

        v92 = *(v55 + 27);
        v276[26] = *(v55 + 26);
        v276[27] = v92;
        *(v276 + 112) = *(v55 + 112);
        *(v276 + 57) = *(v55 + 57);
        *(v276 + 232) = v55[232];
        v93 = *(v55 + 30);
        v276[30] = v93;
        *(v276 + 124) = *(v55 + 124);
        *(v276 + 250) = v55[250];
        swift_unknownObjectRetain();

        v94 = v93;
      }

      v95 = *(v55 + 33);
      if (v95)
      {
        v276[32] = *(v55 + 32);
        v276[33] = v95;
        v96 = *(v55 + 34);

        if (v96 >= 2)
        {
          v97 = v96;
        }

        v276[34] = v96;
        *(v276 + 70) = *(v55 + 70);
        *(v276 + 284) = v55[284];
        *(v276 + 285) = *(v55 + 285);
        v98 = *(v55 + 37);
        v276[36] = *(v55 + 36);
        v276[37] = v98;
      }

      else
      {
        v99 = *(v55 + 17);
        *(v276 + 16) = *(v55 + 16);
        *(v276 + 17) = v99;
        *(v276 + 18) = *(v55 + 18);
      }

      v100 = *(v55 + 42);
      if (v100 >> 2 == 0xFFFFFFFF)
      {
        v101 = *(v55 + 24);
        *(v276 + 23) = *(v55 + 23);
        *(v276 + 24) = v101;
        v276[50] = *(v55 + 50);
        v102 = *(v55 + 20);
        *(v276 + 19) = *(v55 + 19);
        *(v276 + 20) = v102;
        v103 = *(v55 + 22);
        *(v276 + 21) = *(v55 + 21);
        *(v276 + 22) = v103;
      }

      else
      {
        v104 = *(v55 + 38);
        v105 = *(v55 + 39);
        v107 = *(v55 + 40);
        v106 = *(v55 + 41);
        v109 = *(v55 + 43);
        v108 = *(v55 + 44);
        v111 = *(v55 + 45);
        v110 = *(v55 + 46);
        v248 = *(v55 + 47);
        v251 = *(v55 + 48);
        v255 = *(v55 + 49);
        __dstb = *(v55 + 50);
        outlined copy of PlatformItemList.Item.SystemItem(v104, v105, v107, v106, v100, v109, v108, v111, v110, v248, v251, v255, __dstb);
        v276[38] = v104;
        v276[39] = v105;
        v276[40] = v107;
        v276[41] = v106;
        v64 = v276;
        v276[42] = v100;
        v276[43] = v109;
        v276[44] = v108;
        v276[45] = v111;
        v276[46] = v110;
        v276[47] = v248;
        v276[48] = v251;
        v276[49] = v255;
        v276[50] = __dstb;
      }

      v112 = *(v55 + 52);
      if (v112 == 1)
      {
        v113 = *(v55 + 456);
        *(v64 + 55) = *(v55 + 440);
        *(v64 + 57) = v113;
        *(v64 + 472) = v55[472];
        v114 = *(v55 + 424);
        *(v64 + 51) = *(v55 + 408);
        *(v64 + 53) = v114;
      }

      else
      {
        *(v64 + 102) = *(v55 + 102);
        *(v64 + 412) = v55[412];
        if (v112)
        {
          v115 = *(v55 + 53);
          v64[52] = v112;
          v64[53] = v115;
        }

        else
        {
          *(v64 + 26) = *(v55 + 26);
        }

        v116 = *(v55 + 54);
        if (v116)
        {
          v117 = *(v55 + 55);
          v64[54] = v116;
          v64[55] = v117;
        }

        else
        {
          *(v64 + 27) = *(v55 + 27);
        }

        v118 = *(v55 + 56);
        if (v118)
        {
          v119 = *(v55 + 57);
          v64[56] = v118;
          v64[57] = v119;
        }

        else
        {
          *(v64 + 28) = *(v55 + 28);
        }

        v64[58] = *(v55 + 58);
        *(v64 + 472) = v55[472];
      }

      v120 = *(v55 + 61);
      v64[60] = *(v55 + 60);
      v64[61] = v120;
      v64[62] = *(v55 + 62);
      *(v64 + 504) = v55[504];
      v121 = *(v55 + 64);

      if (v121)
      {
        v122 = *(v55 + 65);
        v64[64] = v121;
        v64[65] = v122;
      }

      else
      {
        *(v64 + 32) = *(v55 + 32);
      }

      *(v64 + 528) = v55[528];
      if (!*(v55 + 102))
      {
        memcpy(v64 + 67, v55 + 536, 0x130uLL);
        goto LABEL_77;
      }

      v64[67] = *(v55 + 67);
      v64[68] = *(v55 + 68);
      *(v64 + 552) = v55[552];
      v64[70] = *(v55 + 70);
      *(v64 + 568) = v55[568];
      *(v64 + 36) = *(v55 + 36);
      *(v64 + 592) = v55[592];
      v123 = v64 + 75;
      v124 = v55 + 600;
      v125 = *(v55 + 78);

      if (v125)
      {
        if (v125 == 1)
        {
          v126 = *(v55 + 616);
          *v123 = *v124;
          *(v64 + 77) = v126;
          *(v64 + 79) = *(v55 + 632);
LABEL_73:
          v64[81] = *(v55 + 81);
          *(v64 + 656) = v55[656];
          v128 = v64 + 83;
          v129 = v55 + 664;
          v130 = *(v55 + 97);
          if (v130 == 1)
          {
            v131 = *(v55 + 776);
            *(v64 + 95) = *(v55 + 760);
            *(v64 + 97) = v131;
            *(v64 + 99) = *(v55 + 792);
            *(v64 + 808) = v55[808];
            v132 = *(v55 + 712);
            *(v64 + 87) = *(v55 + 696);
            *(v64 + 89) = v132;
            v133 = *(v55 + 744);
            *(v64 + 91) = *(v55 + 728);
            *(v64 + 93) = v133;
            v134 = *(v55 + 680);
            *v128 = *v129;
            *(v64 + 85) = v134;
          }

          else
          {
            *v128 = *v129;
            *(v64 + 672) = v55[672];
            v64[85] = *(v55 + 85);
            *(v64 + 688) = v55[688];
            *(v64 + 689) = *(v55 + 689);
            *(v64 + 691) = v55[691];
            *(v64 + 692) = v55[692];
            v64[87] = *(v55 + 87);
            v135 = *(v55 + 45);
            *(v64 + 44) = *(v55 + 44);
            *(v64 + 45) = v135;
            v64[92] = *(v55 + 92);
            *(v64 + 372) = *(v55 + 372);
            *(v64 + 47) = *(v55 + 47);
            *(v64 + 768) = v55[768];
            v64[97] = v130;
            *(v64 + 49) = *(v55 + 49);
            v64[100] = *(v55 + 100);
            *(v64 + 808) = v55[808];
          }

          v64[102] = *(v55 + 102);
          v64[103] = *(v55 + 103);
          v64[104] = *(v55 + 104);

LABEL_77:
          v136 = v64 + 105;
          v137 = v55 + 840;
          v138 = *(v55 + 108);
          if (v138)
          {
            if (v138 == 1)
            {
              v139 = *(v55 + 856);
              *v136 = *v137;
              *(v64 + 107) = v139;
              *(v64 + 109) = *(v55 + 872);
              v64[111] = *(v55 + 111);
LABEL_85:
              v143 = *(v55 + 112);
              v64[112] = v143;
              v64[113] = *(v55 + 113);
              v64[114] = *(v55 + 114);
              v64[115] = *(v55 + 115);
              v64[116] = *(v55 + 116);
              v64[117] = *(v55 + 117);
              v64[118] = *(v55 + 118);
              *(v64 + 476) = *(v55 + 476);
              *(v64 + 954) = v55[954];
              v144 = v266[28];
              __dst = v64 + v144;
              v145 = &v55[v144];
              v146 = type metadata accessor for CommandOperation();
              v147 = *(v146 - 8);
              v256 = *(v147 + 48);
              v148 = v143;

              if (v256(v145, 1, v146))
              {
                _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                memcpy(__dst, v145, *(*(v149 - 8) + 64));
                v3 = v274;
                v6 = v271;
                v151 = v264;
                v150 = v266;
              }

              else
              {
                v257 = v147;
                *__dst = *v145;
                v152 = v146;
                v153 = *(v146 + 20);
                v154 = &__dst[v153];
                v155 = &v145[v153];
                v156 = *&v145[v153];
                v157 = *&v145[v153 + 8];
                v158 = v145[v153 + 16];
                outlined copy of Text.Storage(*v155, *(v155 + 1), v155[16]);
                *v154 = v156;
                *(v154 + 1) = v157;
                v154[16] = v158;
                *(v154 + 3) = *(v155 + 3);
                v159 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                v160 = type metadata accessor for UUID();
                v161 = *(*(v160 - 8) + 16);

                v161(&v154[v159], &v155[v159], v160);
                v162 = *(v152 + 24);
                v163 = &__dst[v162];
                v164 = &v145[v162];
                if (*v164)
                {
                  v165 = *(v164 + 1);
                  *v163 = *v164;
                  *(v163 + 1) = v165;
                }

                else
                {
                  *v163 = *v164;
                }

                v3 = v274;
                v6 = v271;
                v151 = v264;
                v150 = v266;
                (*(v257 + 56))(__dst, 0, 1, v152);
              }

              *(v276 + v150[29]) = v55[v150[29]];
              *(v276 + v150[30]) = v55[v150[30]];
              *(v276 + v150[31]) = v55[v150[31]];
              *(v276 + v150[32]) = v55[v150[32]];
              *(v276 + v150[33]) = v55[v150[33]];
              *(v276 + v150[34]) = *&v55[v150[34]];
              v166 = *(v151 + 56);

              v166(v276, 0, 1, v150);
              goto LABEL_92;
            }

            v64[108] = v138;
            v64[109] = *(v55 + 109);
            (**(v138 - 8))(v136, v137);
          }

          else
          {
            v140 = *(v55 + 856);
            *v136 = *v137;
            *(v64 + 107) = v140;
            v64[109] = *(v55 + 109);
          }

          v141 = *(v55 + 110);
          if (v141)
          {
            v142 = *(v55 + 111);
            v64[110] = v141;
            v64[111] = v142;
          }

          else
          {
            *(v64 + 55) = *(v55 + 55);
          }

          goto LABEL_85;
        }

        v64[78] = v125;
        v64[79] = *(v55 + 79);
        (**(v125 - 8))((v64 + 75), (v55 + 600), v125);
      }

      else
      {
        v127 = *(v55 + 616);
        *v123 = *v124;
        *(v64 + 77) = v127;
        v64[79] = *(v55 + 79);
      }

      v64[80] = *(v55 + 80);

      goto LABEL_73;
    }

    v14 = v3[1];
    *a1 = *v3;
    *(a1 + 8) = v14;
    v15 = v3[3];
    *(a1 + 16) = v3[2];
    *(a1 + 24) = v15;
    v16 = v3[7];

    if (v16)
    {
      v17 = v3[8];
      *(a1 + 56) = v16;
      *(a1 + 64) = v17;
      (**(v16 - 8))(a1 + 32, (v3 + 4), v16);
      *(a1 + 72) = v3[9];
    }

    else
    {
      v21 = *(v3 + 3);
      *(a1 + 32) = *(v3 + 2);
      *(a1 + 48) = v21;
      *(a1 + 64) = *(v3 + 4);
    }

    if (*(v3 + 120) == 1)
    {
      v22 = *(v3 + 13);
      *(a1 + 104) = v22;
      (**(v22 - 8))(a1 + 80, (v3 + 10));
      *(a1 + 120) = 1;
    }

    else
    {
      v23 = *(v3 + 6);
      *(a1 + 80) = *(v3 + 5);
      *(a1 + 96) = v23;
      *(a1 + 105) = *(v3 + 105);
    }

    *(a1 + 121) = *(v3 + 121);
    *(a1 + 128) = v3[16];
    *(a1 + 136) = *(v3 + 136);
    *(a1 + 137) = *(v3 + 137);
    v24 = v3[19];
    *(a1 + 144) = v3[18];
    *(a1 + 152) = v24;
    v25 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
    v275 = (a1 + v25);
    v26 = (v3 + v25);
    v27 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);

    if (v29(v26, 1, v27))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
      memcpy(v275, v26, *(*(v30 - 8) + 64));
LABEL_149:
      swift_storeEnumTagMultiPayload();
      goto LABEL_150;
    }

    v265 = v28;
    v267 = v27;
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    v269 = v26;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v75 = *(v26 + 3);
      v76 = v275;
      *(v275 + 3) = v75;
      (**(v75 - 8))(v275, v26);
      v77 = v26[6];
      v275[5] = v26[5];
      v275[6] = v77;
      v275[7] = v26[7];
      v275[8] = v26[8];
      *(v275 + 9) = *(v26 + 9);
      v78 = v26[11];
      v275[11] = v78;

      v79 = v78;
      v80 = v27;
      v81 = v26;
      v82 = v28;
LABEL_148:
      swift_storeEnumTagMultiPayload();
      v242 = *(v80 + 20);
      v243 = *(v81 + v242);
      *(v76 + v242) = v243;
      v244 = *(v82 + 56);
      v245 = v243;
      v244(v76, 0, 1, v80);
      goto LABEL_149;
    }

    v273 = v3;
    v31 = *v26;
    v32 = v26[1];
    v33 = v275;
    *v275 = *v26;
    v275[1] = v32;
    v34 = v26[3];
    v275[2] = v26[2];
    v275[3] = v34;
    *(v275 + 32) = *(v26 + 32);
    v35 = v26[6];
    v275[5] = v26[5];
    v275[6] = v35;
    *(v275 + 56) = *(v26 + 56);
    v36 = v26[24];
    v37 = v31;
    v38 = v32;

    if (v36 >> 1 == 4294967294)
    {
      v39 = *(v26 + 13);
      *(v275 + 12) = *(v26 + 12);
      *(v275 + 13) = v39;
      *(v275 + 14) = *(v26 + 14);
      *(v275 + 235) = *(v26 + 235);
      v40 = *(v26 + 9);
      *(v275 + 8) = *(v26 + 8);
      *(v275 + 9) = v40;
      v41 = *(v26 + 11);
      *(v275 + 10) = *(v26 + 10);
      *(v275 + 11) = v41;
      v42 = *(v26 + 5);
      *(v275 + 4) = *(v26 + 4);
      *(v275 + 5) = v42;
      v43 = *(v26 + 7);
      *(v275 + 6) = *(v26 + 6);
      *(v275 + 7) = v43;
      v44 = v26;
    }

    else
    {
      v85 = *(v26 + 72);
      v86 = v26;
      if (v85 == 255)
      {
        v275[8] = v26[8];
        *(v275 + 72) = *(v26 + 72);
      }

      else
      {
        v87 = v26[8];
        outlined copy of GraphicsImage.Contents(v87, *(v26 + 72));
        v275[8] = v87;
        *(v275 + 72) = v85;
        v36 = v26[24];
      }

      v275[10] = v26[10];
      *(v275 + 11) = *(v26 + 11);
      *(v275 + 104) = *(v26 + 104);
      *(v275 + 108) = *(v26 + 108);
      *(v275 + 121) = *(v26 + 121);
      *(v275 + 17) = *(v26 + 17);
      *(v275 + 19) = *(v26 + 19);
      *(v275 + 84) = *(v26 + 84);
      *(v275 + 170) = *(v26 + 170);
      *(v275 + 171) = *(v26 + 171);
      if (v36 >> 1 == 0xFFFFFFFF)
      {
        v167 = *(v26 + 12);
        *(v275 + 11) = *(v26 + 11);
        *(v275 + 12) = v167;
      }

      else
      {
        v168 = v26[22];
        v169 = v26[23];
        v170 = v26[25];
        outlined copy of AccessibilityImageLabel(v86[22], v86[23], v36);
        v275[22] = v168;
        v275[23] = v169;
        v275[24] = v36;
        v275[25] = v170;
        v86 = v269;
      }

      v171 = v86[27];
      v275[26] = v86[26];
      v275[27] = v171;
      *(v275 + 112) = *(v86 + 112);
      *(v275 + 57) = *(v86 + 57);
      *(v275 + 232) = *(v86 + 232);
      v172 = v269[30];
      v275[30] = v172;
      *(v275 + 124) = *(v269 + 124);
      *(v275 + 250) = *(v269 + 250);
      swift_unknownObjectRetain();

      v173 = v172;
      v44 = v269;
    }

    v174 = v44[33];
    if (v174)
    {
      v275[32] = v44[32];
      v275[33] = v174;
      v175 = v44[34];

      if (v175 >= 2)
      {
        v176 = v175;
      }

      v275[34] = v175;
      *(v275 + 70) = *(v44 + 70);
      *(v275 + 284) = *(v44 + 284);
      *(v275 + 285) = *(v44 + 285);
      v177 = v44[37];
      v275[36] = v44[36];
      v275[37] = v177;
    }

    else
    {
      v178 = *(v44 + 17);
      *(v275 + 16) = *(v44 + 16);
      *(v275 + 17) = v178;
      *(v275 + 18) = *(v44 + 18);
    }

    v179 = v44[42];
    v272 = v6;
    if (v179 >> 2 == 0xFFFFFFFF)
    {
      v180 = *(v44 + 24);
      *(v275 + 23) = *(v44 + 23);
      *(v275 + 24) = v180;
      v275[50] = v44[50];
      v181 = *(v44 + 20);
      *(v275 + 19) = *(v44 + 19);
      *(v275 + 20) = v181;
      v182 = *(v44 + 22);
      *(v275 + 21) = *(v44 + 21);
      *(v275 + 22) = v182;
    }

    else
    {
      v183 = v44[38];
      v184 = v44[39];
      v185 = v44[40];
      v186 = v44[41];
      v188 = v44[43];
      v187 = v44[44];
      v247 = v269[46];
      v249 = v269[47];
      v252 = v269[48];
      v258 = v269[49];
      __dstc = v269[50];
      v189 = v44[45];
      outlined copy of PlatformItemList.Item.SystemItem(v183, v184, v185, v186, v179, v188, v187, v189, v247, v249, v252, v258, __dstc);
      v275[38] = v183;
      v275[39] = v184;
      v275[40] = v185;
      v275[41] = v186;
      v275[42] = v179;
      v275[43] = v188;
      v33 = v275;
      v275[44] = v187;
      v275[45] = v189;
      v275[46] = v247;
      v275[47] = v249;
      v44 = v269;
      v275[48] = v252;
      v275[49] = v258;
      v275[50] = __dstc;
    }

    v190 = v44[52];
    if (v190 == 1)
    {
      v191 = *(v44 + 57);
      *(v33 + 55) = *(v44 + 55);
      *(v33 + 57) = v191;
      *(v33 + 472) = *(v44 + 472);
      v192 = *(v44 + 53);
      *(v33 + 51) = *(v44 + 51);
      *(v33 + 53) = v192;
    }

    else
    {
      *(v33 + 102) = *(v44 + 102);
      *(v33 + 412) = *(v44 + 412);
      if (v190)
      {
        v193 = v44[53];
        v33[52] = v190;
        v33[53] = v193;
      }

      else
      {
        *(v33 + 26) = *(v44 + 26);
      }

      v194 = v44[54];
      if (v194)
      {
        v195 = v44[55];
        v33[54] = v194;
        v33[55] = v195;
      }

      else
      {
        *(v33 + 27) = *(v44 + 27);
      }

      v196 = v44[56];
      if (v196)
      {
        v197 = v44[57];
        v33[56] = v196;
        v33[57] = v197;
      }

      else
      {
        *(v33 + 28) = *(v44 + 28);
      }

      v33[58] = v44[58];
      *(v33 + 472) = *(v44 + 472);
    }

    v198 = v44[61];
    v33[60] = v44[60];
    v33[61] = v198;
    v33[62] = v44[62];
    *(v33 + 504) = *(v44 + 504);
    v199 = v44[64];

    if (v199)
    {
      v200 = v44[65];
      v33[64] = v199;
      v33[65] = v200;
    }

    else
    {
      *(v33 + 32) = *(v44 + 32);
    }

    *(v33 + 528) = *(v44 + 528);
    if (!v44[102])
    {
      memcpy(v33 + 67, v44 + 67, 0x130uLL);
      goto LABEL_133;
    }

    v33[67] = v44[67];
    v33[68] = v44[68];
    *(v33 + 552) = *(v44 + 552);
    v33[70] = v44[70];
    *(v33 + 568) = *(v44 + 568);
    *(v33 + 36) = *(v44 + 36);
    *(v33 + 592) = *(v44 + 592);
    v201 = v33 + 75;
    v202 = v44 + 75;
    v203 = v44[78];

    if (v203)
    {
      if (v203 == 1)
      {
        v204 = *(v44 + 77);
        *v201 = *v202;
        *(v33 + 77) = v204;
        *(v33 + 79) = *(v44 + 79);
LABEL_129:
        v33[81] = v44[81];
        *(v33 + 656) = *(v44 + 656);
        v206 = v33 + 83;
        v207 = v44 + 83;
        v208 = v44[97];
        if (v208 == 1)
        {
          v209 = *(v44 + 97);
          *(v33 + 95) = *(v44 + 95);
          *(v33 + 97) = v209;
          *(v33 + 99) = *(v44 + 99);
          *(v33 + 808) = *(v44 + 808);
          v210 = *(v44 + 89);
          *(v33 + 87) = *(v44 + 87);
          *(v33 + 89) = v210;
          v211 = *(v44 + 93);
          *(v33 + 91) = *(v44 + 91);
          *(v33 + 93) = v211;
          v212 = *(v44 + 85);
          *v206 = *v207;
          *(v33 + 85) = v212;
        }

        else
        {
          *v206 = *v207;
          *(v33 + 672) = *(v44 + 672);
          v33[85] = v44[85];
          *(v33 + 688) = *(v44 + 688);
          *(v33 + 689) = *(v44 + 689);
          *(v33 + 691) = *(v44 + 691);
          *(v33 + 692) = *(v44 + 692);
          v33[87] = v44[87];
          v213 = *(v44 + 45);
          *(v33 + 44) = *(v44 + 44);
          *(v33 + 45) = v213;
          v33[92] = v44[92];
          *(v33 + 372) = *(v44 + 372);
          *(v33 + 47) = *(v44 + 47);
          *(v33 + 768) = *(v44 + 768);
          v33[97] = v208;
          *(v33 + 49) = *(v44 + 49);
          v33[100] = v44[100];
          *(v33 + 808) = *(v44 + 808);
        }

        v33[102] = v44[102];
        v33[103] = v44[103];
        v33[104] = v44[104];

LABEL_133:
        v214 = v33 + 105;
        v215 = v44 + 105;
        v216 = v44[108];
        if (v216)
        {
          if (v216 == 1)
          {
            v217 = *(v44 + 107);
            *v214 = *v215;
            *(v33 + 107) = v217;
            *(v33 + 109) = *(v44 + 109);
            v33[111] = v44[111];
LABEL_141:
            v221 = v44[112];
            v33[112] = v221;
            v33[113] = v44[113];
            v33[114] = v44[114];
            v33[115] = v44[115];
            v33[116] = v44[116];
            v33[117] = v44[117];
            v33[118] = v44[118];
            *(v33 + 476) = *(v44 + 476);
            *(v33 + 954) = *(v44 + 954);
            v222 = type metadata accessor for PlatformItemList.Item();
            v223 = *(v222 + 112);
            v259 = v222;
            __dsta = v33 + v223;
            v224 = v44 + v223;
            v225 = type metadata accessor for CommandOperation();
            v226 = *(v225 - 8);
            v253 = *(v226 + 48);
            v227 = v221;

            v228 = v224;
            if (v253(v224, 1, v225))
            {
              _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
              memcpy(__dsta, v224, *(*(v229 - 8) + 64));
              v3 = v273;
              v76 = v275;
              v81 = v269;
              v6 = v272;
              v82 = v265;
              v80 = v267;
            }

            else
            {
              v250 = v226;
              *__dsta = *v224;
              v230 = *(v225 + 20);
              v231 = &__dsta[v230];
              v232 = &v224[v230];
              v233 = *&v224[v230];
              v234 = *&v228[v230 + 8];
              v235 = v228[v230 + 16];
              outlined copy of Text.Storage(*&v228[v230], v234, v235);
              *v231 = v233;
              *(v231 + 1) = v234;
              v231[16] = v235;
              *(v231 + 3) = *(v232 + 3);
              v236 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v237 = type metadata accessor for UUID();
              v254 = *(*(v237 - 8) + 16);

              v254(&v231[v236], &v232[v236], v237);
              v238 = *(v225 + 24);
              v239 = &__dsta[v238];
              v240 = &v228[v238];
              if (*v240)
              {
                v241 = v240[1];
                *v239 = *v240;
                v239[1] = v241;
              }

              else
              {
                *v239 = *v240;
              }

              v3 = v273;
              v76 = v275;
              v81 = v269;
              v6 = v272;
              v82 = v265;
              v80 = v267;
              (*(v250 + 56))(__dsta, 0, 1, v225);
            }

            *(v76 + v259[29]) = *(v81 + v259[29]);
            *(v76 + v259[30]) = *(v81 + v259[30]);
            *(v76 + v259[31]) = *(v81 + v259[31]);
            *(v76 + v259[32]) = *(v81 + v259[32]);
            *(v76 + v259[33]) = *(v81 + v259[33]);
            *(v76 + v259[34]) = *(v81 + v259[34]);

            goto LABEL_148;
          }

          v33[108] = v216;
          v33[109] = v44[109];
          (**(v216 - 1))(v214, v215);
        }

        else
        {
          v218 = *(v44 + 107);
          *v214 = *v215;
          *(v33 + 107) = v218;
          v33[109] = v44[109];
        }

        v219 = v44[110];
        if (v219)
        {
          v220 = v44[111];
          v33[110] = v219;
          v33[111] = v220;
        }

        else
        {
          *(v33 + 55) = *(v44 + 55);
        }

        goto LABEL_141;
      }

      v33[78] = v203;
      v33[79] = v44[79];
      (**(v203 - 1))((v33 + 75), (v44 + 75), v203);
    }

    else
    {
      v205 = *(v44 + 77);
      *v201 = *v202;
      *(v33 + 77) = v205;
      v33[79] = v44[79];
    }

    v33[80] = v44[80];

    goto LABEL_129;
  }

  v13 = *a2;
  *a1 = *a2;
  a1 = v13 + ((v5 + 16) & ~v5);

  return a1;
}

char *assignWithCopy for ToolbarStorage.Entry(char *a1, char *a2, uint64_t a3)
{
  v4 = a2;
  if (a1 == a2)
  {
    goto LABEL_148;
  }

  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.Entry.Kind);
  v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *v4;
      v10 = a1 + 8;
      if (v4[48] == 1)
      {
        v11 = *(v4 + 4);
        *(a1 + 4) = v11;
        *(a1 + 5) = *(v4 + 5);
        (**(v11 - 8))(v10, (v4 + 8));
        a1[48] = 1;
      }

      else
      {
        v12 = *(v4 + 8);
        v13 = *(v4 + 24);
        *(a1 + 33) = *(v4 + 33);
        *v10 = v12;
        *(a1 + 24) = v13;
      }

      a1[49] = v4[49];
      *(a1 + 7) = *(v4 + 7);
      a1[64] = v4[64];
      a1[65] = v4[65];
      *(a1 + 9) = *(v4 + 9);

      goto LABEL_147;
    case 1:
      *a1 = *v4;
      *(a1 + 1) = *(v4 + 1);
      *(a1 + 2) = *(v4 + 2);
      *(a1 + 3) = *(v4 + 3);
      v9 = *(v4 + 7);

      if (v9)
      {
        *(a1 + 7) = v9;
        *(a1 + 8) = *(v4 + 8);
        (**(v9 - 8))((a1 + 32), (v4 + 32), v9);
        *(a1 + 9) = *(v4 + 9);
      }

      else
      {
        v14 = *(v4 + 2);
        v15 = *(v4 + 4);
        *(a1 + 3) = *(v4 + 3);
        *(a1 + 4) = v15;
        *(a1 + 2) = v14;
      }

      v304 = a3;
      if (v4[120] == 1)
      {
        v16 = *(v4 + 13);
        *(a1 + 13) = v16;
        *(a1 + 14) = *(v4 + 14);
        (**(v16 - 8))((a1 + 80), (v4 + 80));
        a1[120] = 1;
      }

      else
      {
        v17 = *(v4 + 5);
        v18 = *(v4 + 6);
        *(a1 + 105) = *(v4 + 105);
        *(a1 + 5) = v17;
        *(a1 + 6) = v18;
      }

      a1[121] = v4[121];
      *(a1 + 16) = *(v4 + 16);
      a1[136] = v4[136];
      a1[137] = v4[137];
      a1[138] = v4[138];
      *(a1 + 18) = *(v4 + 18);
      *(a1 + 19) = *(v4 + 19);
      v19 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
      v20 = &a1[v19];
      v21 = &v4[v19];
      v22 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
      v23 = *(v22 - 8);
      v24 = *(v23 + 48);

      if (v24(v21, 1, v22))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
        memcpy(v20, v21, *(*(v25 - 8) + 64));
        a3 = v304;
LABEL_147:
        swift_storeEnumTagMultiPayload();
        goto LABEL_148;
      }

      v302 = v20;
      v298 = v23;
      v300 = v22;
      type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v75 = *(v21 + 3);
        v76 = v20;
        *(v20 + 3) = v75;
        *(v20 + 4) = *(v21 + 4);
        (**(v75 - 8))(v20, v21);
        *(v20 + 5) = *(v21 + 5);
        *(v20 + 6) = *(v21 + 6);
        *(v20 + 14) = *(v21 + 14);
        *(v20 + 15) = *(v21 + 15);
        *(v20 + 8) = *(v21 + 8);
        *(v20 + 9) = *(v21 + 9);
        *(v20 + 10) = *(v21 + 10);
        v77 = *(v21 + 11);
        *(v20 + 11) = v77;

        v78 = v77;
        v79 = v22;
LABEL_146:
        swift_storeEnumTagMultiPayload();
        v269 = *(v79 + 20);
        v270 = *&v21[v269];
        *(v76 + v269) = v270;
        v271 = *(v23 + 56);
        v272 = v270;
        v271(v76, 0, 1, v79);
        a3 = v304;
        goto LABEL_147;
      }

      v26 = *v21;
      v27 = v20;
      *v20 = *v21;
      v28 = *(v21 + 1);
      *(v20 + 1) = v28;
      *(v20 + 2) = *(v21 + 2);
      *(v20 + 3) = *(v21 + 3);
      v20[32] = v21[32];
      *(v20 + 5) = *(v21 + 5);
      *(v20 + 6) = *(v21 + 6);
      v20[56] = v21[56];
      v29 = *(v21 + 24);
      v30 = v26;
      v31 = v28;

      if (v29 >> 1 == 4294967294)
      {
        v32 = *(v21 + 4);
        v33 = *(v21 + 5);
        v34 = *(v21 + 7);
        *(v20 + 6) = *(v21 + 6);
        *(v20 + 7) = v34;
        *(v20 + 4) = v32;
        *(v20 + 5) = v33;
        v35 = *(v21 + 8);
        v36 = *(v21 + 9);
        v37 = *(v21 + 11);
        *(v20 + 10) = *(v21 + 10);
        *(v20 + 11) = v37;
        *(v20 + 8) = v35;
        *(v20 + 9) = v36;
        v38 = *(v21 + 12);
        v39 = *(v21 + 13);
        v40 = *(v21 + 14);
        *(v20 + 235) = *(v21 + 235);
        *(v20 + 13) = v39;
        *(v20 + 14) = v40;
        *(v20 + 12) = v38;
      }

      else
      {
        v82 = v21[72];
        if (v82 == 255)
        {
          v176 = *(v21 + 8);
          v20[72] = v21[72];
          *(v20 + 8) = v176;
        }

        else
        {
          v83 = *(v21 + 8);
          outlined copy of GraphicsImage.Contents(v83, v21[72]);
          *(v20 + 8) = v83;
          v20[72] = v82;
        }

        *(v20 + 10) = *(v21 + 10);
        *(v20 + 88) = *(v21 + 88);
        v20[104] = v21[104];
        v177 = *(v21 + 108);
        *(v20 + 121) = *(v21 + 121);
        *(v20 + 108) = v177;
        v178 = *(v21 + 136);
        v179 = *(v21 + 152);
        v20[168] = v21[168];
        *(v20 + 152) = v179;
        *(v20 + 136) = v178;
        v20[169] = v21[169];
        v20[170] = v21[170];
        v20[171] = v21[171];
        v180 = *(v21 + 24);
        if (v180 >> 1 == 0xFFFFFFFF)
        {
          v181 = *(v21 + 12);
          *(v20 + 11) = *(v21 + 11);
          *(v20 + 12) = v181;
        }

        else
        {
          v182 = *(v21 + 22);
          v183 = *(v21 + 23);
          v184 = *(v21 + 25);
          outlined copy of AccessibilityImageLabel(v182, v183, *(v21 + 24));
          *(v302 + 22) = v182;
          *(v302 + 23) = v183;
          *(v302 + 24) = v180;
          *(v302 + 25) = v184;
        }

        *(v302 + 26) = *(v21 + 26);
        *(v302 + 27) = *(v21 + 27);
        v302[224] = v21[224];
        v302[225] = v21[225];
        v185 = *(v21 + 57);
        v302[232] = v21[232];
        *(v302 + 57) = v185;
        v186 = *(v21 + 30);
        *(v302 + 30) = v186;
        *(v302 + 124) = *(v21 + 124);
        v302[250] = v21[250];
        swift_unknownObjectRetain();

        v187 = v186;
      }

      if (*(v21 + 33))
      {
        *(v302 + 32) = *(v21 + 32);
        *(v302 + 33) = *(v21 + 33);
        v188 = *(v21 + 34);

        if (v188 >= 2)
        {
          v189 = v188;
        }

        *(v302 + 34) = v188;
        v190 = *(v21 + 70);
        v302[284] = v21[284];
        *(v302 + 70) = v190;
        v302[285] = v21[285];
        v302[286] = v21[286];
        *(v302 + 36) = *(v21 + 36);
        *(v302 + 37) = *(v21 + 37);
      }

      else
      {
        v191 = *(v21 + 16);
        v192 = *(v21 + 18);
        *(v302 + 17) = *(v21 + 17);
        *(v302 + 18) = v192;
        *(v302 + 16) = v191;
      }

      v193 = *(v21 + 42);
      if (v193 >> 2 == 0xFFFFFFFF)
      {
        v194 = *(v21 + 19);
        v195 = *(v21 + 21);
        *(v302 + 20) = *(v21 + 20);
        *(v302 + 21) = v195;
        *(v302 + 19) = v194;
        v196 = *(v21 + 22);
        v197 = *(v21 + 23);
        v198 = *(v21 + 24);
        *(v302 + 50) = *(v21 + 50);
        *(v302 + 23) = v197;
        *(v302 + 24) = v198;
        *(v302 + 22) = v196;
      }

      else
      {
        v199 = *(v21 + 38);
        v200 = *(v21 + 39);
        v201 = *(v21 + 40);
        v202 = *(v21 + 43);
        v203 = *(v21 + 44);
        v204 = *(v21 + 45);
        v275 = *(v21 + 41);
        v278 = *(v21 + 46);
        v282 = *(v21 + 47);
        v287 = *(v21 + 48);
        __dstc = *(v21 + 49);
        v294 = *(v21 + 50);
        outlined copy of PlatformItemList.Item.SystemItem(v199, v200, v201, v275, v193, v202, v203, v204, v278, v282, v287, __dstc, v294);
        *(v302 + 38) = v199;
        *(v302 + 39) = v200;
        *(v302 + 40) = v201;
        *(v302 + 41) = v275;
        v27 = v302;
        *(v302 + 42) = v193;
        *(v302 + 43) = v202;
        *(v302 + 44) = v203;
        *(v302 + 45) = v204;
        *(v302 + 46) = v278;
        *(v302 + 47) = v282;
        *(v302 + 48) = v287;
        *(v302 + 49) = __dstc;
        *(v302 + 50) = v294;
      }

      if (*(v21 + 52) == 1)
      {
        *(v27 + 51) = *(v21 + 408);
        v205 = *(v21 + 424);
        v206 = *(v21 + 440);
        v207 = *(v21 + 456);
        *(v27 + 472) = v21[472];
        *(v27 + 55) = v206;
        *(v27 + 57) = v207;
        *(v27 + 53) = v205;
      }

      else
      {
        *(v27 + 408) = v21[408];
        *(v27 + 409) = v21[409];
        *(v27 + 410) = v21[410];
        *(v27 + 411) = v21[411];
        *(v27 + 412) = v21[412];
        v208 = *(v21 + 52);
        if (v208)
        {
          v209 = *(v21 + 53);
          v27[52] = v208;
          v27[53] = v209;
        }

        else
        {
          *(v27 + 26) = *(v21 + 26);
        }

        v210 = *(v21 + 54);
        if (v210)
        {
          v211 = *(v21 + 55);
          v27[54] = v210;
          v27[55] = v211;
        }

        else
        {
          *(v27 + 27) = *(v21 + 27);
        }

        v212 = *(v21 + 56);
        if (v212)
        {
          v213 = *(v21 + 57);
          v27[56] = v212;
          v27[57] = v213;
        }

        else
        {
          *(v27 + 28) = *(v21 + 28);
        }

        v27[58] = *(v21 + 58);
        *(v27 + 472) = v21[472];
      }

      v27[60] = *(v21 + 60);
      v27[61] = *(v21 + 61);
      v27[62] = *(v21 + 62);
      *(v27 + 504) = v21[504];
      v214 = *(v21 + 64);

      if (v214)
      {
        v215 = *(v21 + 65);
        v27[64] = v214;
        v27[65] = v215;
      }

      else
      {
        *(v27 + 32) = *(v21 + 32);
      }

      *(v27 + 528) = v21[528];
      if (!*(v21 + 102))
      {
        memcpy(v27 + 67, v21 + 536, 0x130uLL);
        goto LABEL_131;
      }

      v27[67] = *(v21 + 67);
      v27[68] = *(v21 + 68);
      *(v27 + 552) = v21[552];
      v27[70] = *(v21 + 70);
      *(v27 + 568) = v21[568];
      v216 = *(v21 + 36);
      *(v27 + 592) = v21[592];
      *(v27 + 36) = v216;
      v217 = v27 + 75;
      v218 = (v21 + 600);
      v219 = *(v21 + 78);

      if (v219)
      {
        if (v219 == 1)
        {
          v220 = *v218;
          v221 = *(v21 + 632);
          *(v27 + 77) = *(v21 + 616);
          *(v27 + 79) = v221;
          *v217 = v220;
LABEL_127:
          v224 = *(v21 + 81);
          *(v27 + 656) = v21[656];
          v27[81] = v224;
          v225 = v27 + 83;
          v226 = v21 + 664;
          if (*(v21 + 97) == 1)
          {
            v227 = *(v21 + 680);
            *v225 = *v226;
            *(v27 + 85) = v227;
            v228 = *(v21 + 696);
            v229 = *(v21 + 712);
            v230 = *(v21 + 744);
            *(v27 + 91) = *(v21 + 728);
            *(v27 + 93) = v230;
            *(v27 + 87) = v228;
            *(v27 + 89) = v229;
            v231 = *(v21 + 760);
            v232 = *(v21 + 776);
            v233 = *(v21 + 792);
            *(v27 + 808) = v21[808];
            *(v27 + 97) = v232;
            *(v27 + 99) = v233;
            *(v27 + 95) = v231;
          }

          else
          {
            v234 = *v226;
            *(v27 + 672) = v21[672];
            *v225 = v234;
            v235 = *(v21 + 85);
            *(v27 + 688) = v21[688];
            v27[85] = v235;
            *(v27 + 689) = v21[689];
            *(v27 + 690) = v21[690];
            *(v27 + 691) = v21[691];
            *(v27 + 692) = v21[692];
            v27[87] = *(v21 + 87);
            v27[88] = *(v21 + 88);
            v27[89] = *(v21 + 89);
            v27[90] = *(v21 + 90);
            v27[91] = *(v21 + 91);
            v27[92] = *(v21 + 92);
            *(v27 + 744) = v21[744];
            *(v27 + 745) = v21[745];
            v27[94] = *(v21 + 94);
            v27[95] = *(v21 + 95);
            *(v27 + 768) = v21[768];
            v27[97] = *(v21 + 97);
            v236 = *(v21 + 49);
            v27[100] = *(v21 + 100);
            *(v27 + 49) = v236;
            *(v27 + 808) = v21[808];
          }

          v27[102] = *(v21 + 102);
          v27[103] = *(v21 + 103);
          v27[104] = *(v21 + 104);

LABEL_131:
          v237 = v27 + 105;
          v238 = (v21 + 840);
          v239 = *(v21 + 108);
          if (v239)
          {
            if (v239 == 1)
            {
              v240 = *v238;
              v241 = *(v21 + 856);
              v242 = *(v21 + 872);
              v27[111] = *(v21 + 111);
              *(v27 + 107) = v241;
              *(v27 + 109) = v242;
              *v237 = v240;
LABEL_139:
              v247 = *(v21 + 112);
              v27[112] = v247;
              v27[113] = *(v21 + 113);
              v27[114] = *(v21 + 114);
              v27[115] = *(v21 + 115);
              v27[116] = *(v21 + 116);
              v27[117] = *(v21 + 117);
              v27[118] = *(v21 + 118);
              *(v27 + 952) = v21[952];
              *(v27 + 953) = v21[953];
              *(v27 + 954) = v21[954];
              v248 = type metadata accessor for PlatformItemList.Item();
              v249 = *(v248 + 112);
              __dsta = v248;
              v295 = v27 + v249;
              v250 = &v21[v249];
              v251 = type metadata accessor for CommandOperation();
              v252 = *(v251 - 8);
              v279 = *(v252 + 48);
              v253 = v247;

              if (v279(v250, 1, v251))
              {
                _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                memcpy(v295, v250, *(*(v254 - 8) + 64));
                v23 = v298;
                v79 = v300;
                v76 = v302;
              }

              else
              {
                v288 = v252;
                *v295 = *v250;
                v255 = *(v251 + 20);
                v256 = v250;
                v276 = v250;
                v257 = &v295[v255];
                v258 = &v256[v255];
                v259 = v251;
                v260 = *&v256[v255];
                v261 = *&v256[v255 + 8];
                v262 = v256[v255 + 16];
                outlined copy of Text.Storage(v260, v261, v262);
                *v257 = v260;
                *(v257 + 1) = v261;
                v257[16] = v262;
                *(v257 + 3) = *(v258 + 3);
                v263 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                v264 = type metadata accessor for UUID();
                v283 = *(*(v264 - 8) + 16);

                v283(&v257[v263], &v258[v263], v264);
                v265 = *(v259 + 24);
                v266 = &v295[v265];
                v267 = &v276[v265];
                if (*v267)
                {
                  v268 = *(v267 + 1);
                  *v266 = *v267;
                  *(v266 + 1) = v268;
                }

                else
                {
                  *v266 = *v267;
                }

                v23 = v298;
                v79 = v300;
                v76 = v302;
                (*(v288 + 56))(v295, 0, 1, v259);
              }

              *(v76 + __dsta[29]) = v21[__dsta[29]];
              *(v76 + __dsta[30]) = v21[__dsta[30]];
              *(v76 + __dsta[31]) = v21[__dsta[31]];
              *(v76 + __dsta[32]) = v21[__dsta[32]];
              *(v76 + __dsta[33]) = v21[__dsta[33]];
              *(v76 + __dsta[34]) = *&v21[__dsta[34]];

              goto LABEL_146;
            }

            v27[108] = v239;
            v27[109] = *(v21 + 109);
            (**(v239 - 8))(v237, v238);
          }

          else
          {
            v243 = *v238;
            v244 = *(v21 + 856);
            v27[109] = *(v21 + 109);
            *v237 = v243;
            *(v27 + 107) = v244;
          }

          v245 = *(v21 + 110);
          if (v245)
          {
            v246 = *(v21 + 111);
            v27[110] = v245;
            v27[111] = v246;
          }

          else
          {
            *(v27 + 55) = *(v21 + 55);
          }

          goto LABEL_139;
        }

        v27[78] = v219;
        v27[79] = *(v21 + 79);
        (**(v219 - 8))((v27 + 75), (v21 + 600), v219);
      }

      else
      {
        v222 = *v218;
        v223 = *(v21 + 616);
        v27[79] = *(v21 + 79);
        *v217 = v222;
        *(v27 + 77) = v223;
      }

      v27[80] = *(v21 + 80);

      goto LABEL_127;
    case 0:
      *a1 = *v4;
      *(a1 + 1) = *(v4 + 1);
      *(a1 + 1) = *(v4 + 1);
      *(a1 + 2) = *(v4 + 2);
      *(a1 + 3) = *(v4 + 3);
      *(a1 + 4) = *(v4 + 4);
      *(a1 + 5) = *(v4 + 5);
      *(a1 + 6) = *(v4 + 6);
      *(a1 + 7) = *(v4 + 7);
      v8 = *(v4 + 11);

      if (v8)
      {
        *(a1 + 11) = v8;
        *(a1 + 12) = *(v4 + 12);
        (**(v8 - 8))((a1 + 64), (v4 + 64), v8);
        *(a1 + 13) = *(v4 + 13);
      }

      else
      {
        v41 = *(v4 + 4);
        v42 = *(v4 + 6);
        *(a1 + 5) = *(v4 + 5);
        *(a1 + 6) = v42;
        *(a1 + 4) = v41;
      }

      v305 = a3;
      if (v4[152] == 1)
      {
        v43 = *(v4 + 17);
        *(a1 + 17) = v43;
        *(a1 + 18) = *(v4 + 18);
        (**(v43 - 8))((a1 + 112), (v4 + 112));
        a1[152] = 1;
      }

      else
      {
        v44 = *(v4 + 7);
        v45 = *(v4 + 8);
        *(a1 + 137) = *(v4 + 137);
        *(a1 + 7) = v44;
        *(a1 + 8) = v45;
      }

      a1[153] = v4[153];
      a1[154] = v4[154];
      *(a1 + 20) = *(v4 + 20);
      a1[168] = v4[168];
      a1[169] = v4[169];
      a1[170] = v4[170];
      *(a1 + 22) = *(v4 + 22);
      v46 = *(v4 + 26);
      *(a1 + 26) = v46;
      *(a1 + 27) = *(v4 + 27);
      v47 = **(v46 - 8);

      v47(a1 + 184, v4 + 184, v46);
      *(a1 + 28) = *(v4 + 28);
      *(a1 + 29) = *(v4 + 29);
      *(a1 + 60) = *(v4 + 60);
      *(a1 + 61) = *(v4 + 61);
      *(a1 + 31) = *(v4 + 31);
      *(a1 + 32) = *(v4 + 32);
      *(a1 + 33) = *(v4 + 33);
      v48 = *(v4 + 34);
      *(a1 + 34) = v48;
      v49 = *(v4 + 35);
      *(a1 + 35) = v49;
      v301 = type metadata accessor for ToolbarStorage.Item(0);
      v50 = v301[17];
      v303 = &a1[v50];
      v299 = v4;
      v51 = &v4[v50];
      v52 = type metadata accessor for PlatformItemList.Item();
      v53 = *(v52 - 8);
      v296 = v53[6];

      v54 = v48;
      v55 = v49;
      if (v296(v51, 1, v52))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
        memcpy(v303, v51, *(*(v56 - 8) + 64));
LABEL_90:
        v4 = v299;
        swift_weakCopyInit();
        a1[v301[19]] = v299[v301[19]];
        a1[v301[20]] = v299[v301[20]];
        a1[v301[21]] = v299[v301[21]];
        goto LABEL_147;
      }

      v293 = v53;
      v297 = v52;
      v57 = *v51;
      v58 = v303;
      *v303 = *v51;
      v59 = *(v51 + 1);
      *(v303 + 1) = v59;
      *(v303 + 2) = *(v51 + 2);
      *(v303 + 3) = *(v51 + 3);
      v303[32] = v51[32];
      *(v303 + 5) = *(v51 + 5);
      *(v303 + 6) = *(v51 + 6);
      v303[56] = v51[56];
      v60 = *(v51 + 24);
      v61 = v57;
      v62 = v59;

      if (v60 >> 1 == 4294967294)
      {
        v63 = *(v51 + 4);
        v64 = *(v51 + 5);
        v65 = *(v51 + 7);
        *(v303 + 6) = *(v51 + 6);
        *(v303 + 7) = v65;
        *(v303 + 4) = v63;
        *(v303 + 5) = v64;
        v66 = *(v51 + 8);
        v67 = *(v51 + 9);
        v68 = *(v51 + 11);
        *(v303 + 10) = *(v51 + 10);
        *(v303 + 11) = v68;
        *(v303 + 8) = v66;
        *(v303 + 9) = v67;
        v69 = *(v51 + 12);
        v70 = *(v51 + 13);
        v71 = *(v51 + 14);
        *(v303 + 235) = *(v51 + 235);
        *(v303 + 13) = v70;
        *(v303 + 14) = v71;
        *(v303 + 12) = v69;
        if (*(v51 + 33))
        {
LABEL_31:
          *(v303 + 32) = *(v51 + 32);
          *(v303 + 33) = *(v51 + 33);
          v72 = *(v51 + 34);

          if (v72 >= 2)
          {
            v73 = v72;
          }

          *(v303 + 34) = v72;
          v74 = *(v51 + 70);
          v303[284] = v51[284];
          *(v303 + 70) = v74;
          v303[285] = v51[285];
          v303[286] = v51[286];
          *(v303 + 36) = *(v51 + 36);
          *(v303 + 37) = *(v51 + 37);

LABEL_45:
          v98 = *(v51 + 42);
          if (v98 >> 2 == 0xFFFFFFFF)
          {
            v99 = *(v51 + 19);
            v100 = *(v51 + 21);
            *(v303 + 20) = *(v51 + 20);
            *(v303 + 21) = v100;
            *(v303 + 19) = v99;
            v101 = *(v51 + 22);
            v102 = *(v51 + 23);
            v103 = *(v51 + 24);
            *(v303 + 50) = *(v51 + 50);
            *(v303 + 23) = v102;
            *(v303 + 24) = v103;
            *(v303 + 22) = v101;
          }

          else
          {
            v104 = *(v51 + 38);
            v105 = *(v51 + 39);
            v107 = *(v51 + 40);
            v106 = *(v51 + 41);
            v109 = *(v51 + 43);
            v108 = *(v51 + 44);
            v110 = *(v51 + 45);
            v274 = *(v51 + 46);
            v277 = *(v51 + 47);
            v280 = *(v51 + 48);
            v284 = *(v51 + 49);
            __dstb = *(v51 + 50);
            outlined copy of PlatformItemList.Item.SystemItem(v104, v105, v107, v106, v98, v109, v108, v110, v274, v277, v280, v284, __dstb);
            *(v303 + 38) = v104;
            *(v303 + 39) = v105;
            *(v303 + 40) = v107;
            *(v303 + 41) = v106;
            *(v303 + 42) = v98;
            *(v303 + 43) = v109;
            v58 = v303;
            *(v303 + 44) = v108;
            *(v303 + 45) = v110;
            *(v303 + 46) = v274;
            *(v303 + 47) = v277;
            *(v303 + 48) = v280;
            *(v303 + 49) = v284;
            *(v303 + 50) = __dstb;
          }

          if (*(v51 + 52) == 1)
          {
            *(v58 + 51) = *(v51 + 408);
            v111 = *(v51 + 424);
            v112 = *(v51 + 440);
            v113 = *(v51 + 456);
            *(v58 + 472) = v51[472];
            *(v58 + 55) = v112;
            *(v58 + 57) = v113;
            *(v58 + 53) = v111;
          }

          else
          {
            *(v58 + 408) = v51[408];
            *(v58 + 409) = v51[409];
            *(v58 + 410) = v51[410];
            *(v58 + 411) = v51[411];
            *(v58 + 412) = v51[412];
            v114 = *(v51 + 52);
            if (v114)
            {
              v115 = *(v51 + 53);
              v58[52] = v114;
              v58[53] = v115;
            }

            else
            {
              *(v58 + 26) = *(v51 + 26);
            }

            v116 = *(v51 + 54);
            if (v116)
            {
              v117 = *(v51 + 55);
              v58[54] = v116;
              v58[55] = v117;
            }

            else
            {
              *(v58 + 27) = *(v51 + 27);
            }

            v118 = *(v51 + 56);
            if (v118)
            {
              v119 = *(v51 + 57);
              v58[56] = v118;
              v58[57] = v119;
            }

            else
            {
              *(v58 + 28) = *(v51 + 28);
            }

            v58[58] = *(v51 + 58);
            *(v58 + 472) = v51[472];
          }

          v58[60] = *(v51 + 60);
          v58[61] = *(v51 + 61);
          v58[62] = *(v51 + 62);
          *(v58 + 504) = v51[504];
          v120 = *(v51 + 64);

          if (v120)
          {
            v121 = *(v51 + 65);
            v58[64] = v120;
            v58[65] = v121;
          }

          else
          {
            *(v58 + 32) = *(v51 + 32);
          }

          *(v58 + 528) = v51[528];
          if (!*(v51 + 102))
          {
            memcpy(v58 + 67, v51 + 536, 0x130uLL);
            goto LABEL_75;
          }

          v58[67] = *(v51 + 67);
          v58[68] = *(v51 + 68);
          *(v58 + 552) = v51[552];
          v58[70] = *(v51 + 70);
          *(v58 + 568) = v51[568];
          v122 = *(v51 + 36);
          *(v58 + 592) = v51[592];
          *(v58 + 36) = v122;
          v123 = v58 + 75;
          v124 = (v51 + 600);
          v125 = *(v51 + 78);

          if (v125)
          {
            if (v125 == 1)
            {
              v126 = *v124;
              v127 = *(v51 + 632);
              *(v58 + 77) = *(v51 + 616);
              *(v58 + 79) = v127;
              *v123 = v126;
LABEL_71:
              v130 = *(v51 + 81);
              *(v58 + 656) = v51[656];
              v58[81] = v130;
              v131 = v58 + 83;
              v132 = v51 + 664;
              if (*(v51 + 97) == 1)
              {
                v133 = *(v51 + 680);
                *v131 = *v132;
                *(v58 + 85) = v133;
                v134 = *(v51 + 696);
                v135 = *(v51 + 712);
                v136 = *(v51 + 744);
                *(v58 + 91) = *(v51 + 728);
                *(v58 + 93) = v136;
                *(v58 + 87) = v134;
                *(v58 + 89) = v135;
                v137 = *(v51 + 760);
                v138 = *(v51 + 776);
                v139 = *(v51 + 792);
                *(v58 + 808) = v51[808];
                *(v58 + 97) = v138;
                *(v58 + 99) = v139;
                *(v58 + 95) = v137;
              }

              else
              {
                v140 = *v132;
                *(v58 + 672) = v51[672];
                *v131 = v140;
                v141 = *(v51 + 85);
                *(v58 + 688) = v51[688];
                v58[85] = v141;
                *(v58 + 689) = v51[689];
                *(v58 + 690) = v51[690];
                *(v58 + 691) = v51[691];
                *(v58 + 692) = v51[692];
                v58[87] = *(v51 + 87);
                v58[88] = *(v51 + 88);
                v58[89] = *(v51 + 89);
                v58[90] = *(v51 + 90);
                v58[91] = *(v51 + 91);
                v58[92] = *(v51 + 92);
                *(v58 + 744) = v51[744];
                *(v58 + 745) = v51[745];
                v58[94] = *(v51 + 94);
                v58[95] = *(v51 + 95);
                *(v58 + 768) = v51[768];
                v58[97] = *(v51 + 97);
                v142 = *(v51 + 49);
                v58[100] = *(v51 + 100);
                *(v58 + 49) = v142;
                *(v58 + 808) = v51[808];
              }

              v58[102] = *(v51 + 102);
              v58[103] = *(v51 + 103);
              v58[104] = *(v51 + 104);

LABEL_75:
              v143 = v58 + 105;
              v144 = (v51 + 840);
              v145 = *(v51 + 108);
              if (v145)
              {
                if (v145 == 1)
                {
                  v146 = *v144;
                  v147 = *(v51 + 856);
                  v148 = *(v51 + 872);
                  v58[111] = *(v51 + 111);
                  *(v58 + 107) = v147;
                  *(v58 + 109) = v148;
                  *v143 = v146;
LABEL_83:
                  v153 = *(v51 + 112);
                  v58[112] = v153;
                  v58[113] = *(v51 + 113);
                  v58[114] = *(v51 + 114);
                  v58[115] = *(v51 + 115);
                  v58[116] = *(v51 + 116);
                  v58[117] = *(v51 + 117);
                  v58[118] = *(v51 + 118);
                  *(v58 + 952) = v51[952];
                  *(v58 + 953) = v51[953];
                  *(v58 + 954) = v51[954];
                  v154 = v297[28];
                  __dst = v58 + v154;
                  v155 = &v51[v154];
                  v156 = type metadata accessor for CommandOperation();
                  v281 = *(v156 - 8);
                  v285 = *(v281 + 48);
                  v157 = v153;

                  if (v285(v155, 1, v156))
                  {
                    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                    memcpy(__dst, v155, *(*(v158 - 8) + 64));
                    a3 = v305;
                    v159 = v303;
                    v160 = v293;
                    v161 = v297;
                  }

                  else
                  {
                    *__dst = *v155;
                    v162 = *(v156 + 20);
                    v163 = &__dst[v162];
                    v164 = &v155[v162];
                    v165 = *&v155[v162];
                    v166 = *&v155[v162 + 8];
                    v167 = v155[v162 + 16];
                    outlined copy of Text.Storage(v165, *(v164 + 1), v164[16]);
                    *v163 = v165;
                    *(v163 + 1) = v166;
                    v163[16] = v167;
                    *(v163 + 3) = *(v164 + 3);
                    v168 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                    v169 = type metadata accessor for UUID();
                    v286 = v156;
                    v170 = *(*(v169 - 8) + 16);

                    v170(&v163[v168], &v164[v168], v169);
                    v171 = *(v286 + 24);
                    v172 = &__dst[v171];
                    v173 = &v155[v171];
                    if (*v173)
                    {
                      v174 = *(v173 + 1);
                      *v172 = *v173;
                      *(v172 + 1) = v174;
                    }

                    else
                    {
                      *v172 = *v173;
                    }

                    a3 = v305;
                    v159 = v303;
                    v160 = v293;
                    v161 = v297;
                    (*(v281 + 56))(__dst, 0, 1, v286);
                  }

                  *(v159 + v161[29]) = v51[v161[29]];
                  *(v159 + v161[30]) = v51[v161[30]];
                  *(v159 + v161[31]) = v51[v161[31]];
                  *(v159 + v161[32]) = v51[v161[32]];
                  *(v159 + v161[33]) = v51[v161[33]];
                  *(v159 + v161[34]) = *&v51[v161[34]];
                  v175 = v160[7];

                  v175(v159, 0, 1, v161);
                  goto LABEL_90;
                }

                v58[108] = v145;
                v58[109] = *(v51 + 109);
                (**(v145 - 8))(v143, v144);
              }

              else
              {
                v149 = *v144;
                v150 = *(v51 + 856);
                v58[109] = *(v51 + 109);
                *v143 = v149;
                *(v58 + 107) = v150;
              }

              v151 = *(v51 + 110);
              if (v151)
              {
                v152 = *(v51 + 111);
                v58[110] = v151;
                v58[111] = v152;
              }

              else
              {
                *(v58 + 55) = *(v51 + 55);
              }

              goto LABEL_83;
            }

            v58[78] = v125;
            v58[79] = *(v51 + 79);
            (**(v125 - 8))((v58 + 75), (v51 + 600), v125);
          }

          else
          {
            v128 = *v124;
            v129 = *(v51 + 616);
            v58[79] = *(v51 + 79);
            *v123 = v128;
            *(v58 + 77) = v129;
          }

          v58[80] = *(v51 + 80);

          goto LABEL_71;
        }
      }

      else
      {
        v80 = v51[72];
        if (v80 == 255)
        {
          v84 = *(v51 + 8);
          v303[72] = v51[72];
          *(v303 + 8) = v84;
        }

        else
        {
          v81 = *(v51 + 8);
          outlined copy of GraphicsImage.Contents(v81, v51[72]);
          *(v303 + 8) = v81;
          v303[72] = v80;
        }

        *(v303 + 10) = *(v51 + 10);
        *(v303 + 88) = *(v51 + 88);
        v303[104] = v51[104];
        v85 = *(v51 + 108);
        *(v303 + 121) = *(v51 + 121);
        *(v303 + 108) = v85;
        v86 = *(v51 + 136);
        v87 = *(v51 + 152);
        v303[168] = v51[168];
        *(v303 + 152) = v87;
        *(v303 + 136) = v86;
        v303[169] = v51[169];
        v303[170] = v51[170];
        v303[171] = v51[171];
        v88 = *(v51 + 24);
        if (v88 >> 1 == 0xFFFFFFFF)
        {
          v89 = *(v51 + 12);
          *(v303 + 11) = *(v51 + 11);
          *(v303 + 12) = v89;
        }

        else
        {
          v90 = *(v51 + 22);
          v91 = *(v51 + 23);
          v92 = *(v51 + 25);
          outlined copy of AccessibilityImageLabel(v90, v91, *(v51 + 24));
          *(v303 + 22) = v90;
          *(v303 + 23) = v91;
          *(v303 + 24) = v88;
          *(v303 + 25) = v92;
        }

        *(v303 + 26) = *(v51 + 26);
        *(v303 + 27) = *(v51 + 27);
        v303[224] = v51[224];
        v303[225] = v51[225];
        v93 = *(v51 + 57);
        v303[232] = v51[232];
        *(v303 + 57) = v93;
        v94 = *(v51 + 30);
        *(v303 + 30) = v94;
        *(v303 + 124) = *(v51 + 124);
        v303[250] = v51[250];
        swift_unknownObjectRetain();

        v95 = v94;
        if (*(v51 + 33))
        {
          goto LABEL_31;
        }
      }

      v96 = *(v51 + 16);
      v97 = *(v51 + 18);
      *(v303 + 17) = *(v51 + 17);
      *(v303 + 18) = v97;
      *(v303 + 16) = v96;
      goto LABEL_45;
  }

  memcpy(a1, v4, *(*(v6 - 8) + 64));
LABEL_148:
  a1[*(a3 + 20)] = v4[*(a3 + 20)];
  return a1;
}

char *assignWithTake for ToolbarStorage.Entry(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.Entry.Kind);
    v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v21 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v21;
      v22 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v22;
      v23 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v23;
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 105) = *(a2 + 105);
      a1[121] = a2[121];
      *(a1 + 16) = *(a2 + 16);
      a1[136] = a2[136];
      *(a1 + 137) = *(a2 + 137);
      *(a1 + 9) = *(a2 + 9);
      v24 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
      v25 = &a1[v24];
      v26 = &a2[v24];
      v27 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
        memcpy(v25, v26, *(*(v29 - 8) + 64));
      }

      else
      {
        v48 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v49 = *(v26 + 1);
          *v25 = *v26;
          *(v25 + 1) = v49;
          v25[32] = v26[32];
          *(v25 + 40) = *(v26 + 40);
          v25[56] = v26[56];
          v50 = *(v26 + 13);
          *(v25 + 12) = *(v26 + 12);
          *(v25 + 13) = v50;
          *(v25 + 14) = *(v26 + 14);
          *(v25 + 235) = *(v26 + 235);
          v51 = *(v26 + 9);
          *(v25 + 8) = *(v26 + 8);
          *(v25 + 9) = v51;
          v52 = *(v26 + 11);
          *(v25 + 10) = *(v26 + 10);
          *(v25 + 11) = v52;
          v53 = *(v26 + 5);
          *(v25 + 4) = *(v26 + 4);
          *(v25 + 5) = v53;
          v54 = *(v26 + 7);
          *(v25 + 6) = *(v26 + 6);
          *(v25 + 7) = v54;
          v55 = *(v26 + 17);
          *(v25 + 16) = *(v26 + 16);
          *(v25 + 17) = v55;
          v56 = *(v26 + 23);
          *(v25 + 22) = *(v26 + 22);
          *(v25 + 23) = v56;
          *(v25 + 24) = *(v26 + 24);
          *(v25 + 50) = *(v26 + 50);
          v57 = *(v26 + 19);
          *(v25 + 18) = *(v26 + 18);
          *(v25 + 19) = v57;
          v58 = *(v26 + 21);
          *(v25 + 20) = *(v26 + 20);
          *(v25 + 21) = v58;
          v59 = *(v26 + 456);
          *(v25 + 440) = *(v26 + 440);
          *(v25 + 456) = v59;
          v25[472] = v26[472];
          v60 = *(v26 + 424);
          *(v25 + 408) = *(v26 + 408);
          *(v25 + 424) = v60;
          *(v25 + 30) = *(v26 + 30);
          *(v25 + 489) = *(v26 + 489);
          *(v25 + 32) = *(v26 + 32);
          v25[528] = v26[528];
          memcpy(v25 + 536, v26 + 536, 0x130uLL);
          v61 = *(v26 + 856);
          *(v25 + 840) = *(v26 + 840);
          *(v25 + 856) = v61;
          *(v25 + 872) = *(v26 + 872);
          *(v25 + 111) = *(v26 + 111);
          *(v25 + 112) = *(v26 + 112);
          *(v25 + 904) = *(v26 + 904);
          *(v25 + 920) = *(v26 + 920);
          *(v25 + 117) = *(v26 + 117);
          *(v25 + 118) = *(v26 + 118);
          v25[952] = v26[952];
          *(v25 + 953) = *(v26 + 953);
          v62 = type metadata accessor for PlatformItemList.Item();
          v63 = v62[28];
          __dsta = &v25[v63];
          v64 = &v26[v63];
          v65 = type metadata accessor for CommandOperation();
          v81 = *(v65 - 8);
          v85 = v64;
          v66 = v64;
          v67 = v65;
          if ((*(v81 + 48))(v66, 1))
          {
            _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
            memcpy(__dsta, v85, *(*(v68 - 8) + 64));
          }

          else
          {
            *__dsta = *v85;
            v72 = *(v67 + 20);
            v89 = a3;
            v73 = &__dsta[v72];
            v80 = &v85[v72];
            v74 = *&v85[v72 + 16];
            *v73 = *&v85[v72];
            *(v73 + 1) = v74;
            v78 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v75 = type metadata accessor for UUID();
            v76 = &v73[v78];
            a3 = v89;
            (*(*(v75 - 8) + 32))(v76, &v80[v78], v75);
            *&__dsta[*(v67 + 24)] = *&v85[*(v67 + 24)];
            (*(v81 + 56))();
          }

          v25[v62[29]] = v26[v62[29]];
          v25[v62[30]] = v26[v62[30]];
          v25[v62[31]] = v26[v62[31]];
          v25[v62[32]] = v26[v62[32]];
          v25[v62[33]] = v26[v62[33]];
          *&v25[v62[34]] = *&v26[v62[34]];
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v25, v26, *(*(v48 - 8) + 64));
        }

        *&v25[*(v27 + 20)] = *&v26[*(v27 + 20)];
        (*(v28 + 56))(v25, 0, 1, v27);
      }

      goto LABEL_21;
    }

    if (!EnumCaseMultiPayload)
    {
      v8 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v8;
      v9 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v9;
      v10 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v10;
      v11 = *(a2 + 6);
      v12 = *(a2 + 7);
      *(a1 + 137) = *(a2 + 137);
      v13 = *(a2 + 8);
      *(a1 + 7) = v12;
      *(a1 + 8) = v13;
      *(a1 + 6) = v11;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 20) = *(a2 + 20);
      a1[168] = a2[168];
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 22) = *(a2 + 22);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 35) = *(a2 + 35);
      v14 = type metadata accessor for ToolbarStorage.Item(0);
      v15 = v14[17];
      v16 = &a1[v15];
      v17 = &a2[v15];
      v18 = type metadata accessor for PlatformItemList.Item();
      v19 = *(v18 - 1);
      if ((*(v19 + 48))(v17, 1, v18))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
        memcpy(v16, v17, *(*(v20 - 8) + 64));
      }

      else
      {
        v84 = v19;
        v88 = a3;
        v30 = *(v17 + 1);
        *v16 = *v17;
        *(v16 + 1) = v30;
        v16[32] = v17[32];
        *(v16 + 40) = *(v17 + 40);
        v16[56] = v17[56];
        v31 = *(v17 + 13);
        *(v16 + 12) = *(v17 + 12);
        *(v16 + 13) = v31;
        *(v16 + 14) = *(v17 + 14);
        *(v16 + 235) = *(v17 + 235);
        v32 = *(v17 + 9);
        *(v16 + 8) = *(v17 + 8);
        *(v16 + 9) = v32;
        v33 = *(v17 + 11);
        *(v16 + 10) = *(v17 + 10);
        *(v16 + 11) = v33;
        v34 = *(v17 + 5);
        *(v16 + 4) = *(v17 + 4);
        *(v16 + 5) = v34;
        v35 = *(v17 + 7);
        *(v16 + 6) = *(v17 + 6);
        *(v16 + 7) = v35;
        v36 = *(v17 + 17);
        *(v16 + 16) = *(v17 + 16);
        *(v16 + 17) = v36;
        v37 = *(v17 + 23);
        *(v16 + 22) = *(v17 + 22);
        *(v16 + 23) = v37;
        *(v16 + 24) = *(v17 + 24);
        *(v16 + 50) = *(v17 + 50);
        v38 = *(v17 + 19);
        *(v16 + 18) = *(v17 + 18);
        *(v16 + 19) = v38;
        v39 = *(v17 + 21);
        *(v16 + 20) = *(v17 + 20);
        *(v16 + 21) = v39;
        v40 = *(v17 + 456);
        *(v16 + 440) = *(v17 + 440);
        *(v16 + 456) = v40;
        v16[472] = v17[472];
        v41 = *(v17 + 424);
        *(v16 + 408) = *(v17 + 408);
        *(v16 + 424) = v41;
        *(v16 + 30) = *(v17 + 30);
        *(v16 + 489) = *(v17 + 489);
        *(v16 + 32) = *(v17 + 32);
        v16[528] = v17[528];
        memcpy(v16 + 536, v17 + 536, 0x130uLL);
        v42 = *(v17 + 856);
        *(v16 + 840) = *(v17 + 840);
        *(v16 + 856) = v42;
        *(v16 + 872) = *(v17 + 872);
        *(v16 + 111) = *(v17 + 111);
        *(v16 + 112) = *(v17 + 112);
        *(v16 + 904) = *(v17 + 904);
        *(v16 + 920) = *(v17 + 920);
        *(v16 + 117) = *(v17 + 117);
        *(v16 + 118) = *(v17 + 118);
        v16[952] = v17[952];
        *(v16 + 953) = *(v17 + 953);
        v43 = v18[28];
        __dst = &v16[v43];
        v44 = &v17[v43];
        v45 = type metadata accessor for CommandOperation();
        v46 = *(v45 - 8);
        if ((*(v46 + 48))(v44, 1, v45))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
          memcpy(__dst, v44, *(*(v47 - 8) + 64));
        }

        else
        {
          *__dst = *v44;
          v69 = *(v45 + 20);
          v82 = &__dst[v69];
          v83 = &v44[v69];
          v70 = *&v44[v69 + 16];
          *v82 = *&v44[v69];
          *(v82 + 1) = v70;
          v79 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v71 = type metadata accessor for UUID();
          (*(*(v71 - 8) + 32))(&v82[v79], &v83[v79], v71);
          *&__dst[*(v45 + 24)] = *&v44[*(v45 + 24)];
          (*(v46 + 56))();
        }

        a3 = v88;
        v16[v18[29]] = v17[v18[29]];
        v16[v18[30]] = v17[v18[30]];
        v16[v18[31]] = v17[v18[31]];
        v16[v18[32]] = v17[v18[32]];
        v16[v18[33]] = v17[v18[33]];
        *&v16[v18[34]] = *&v17[v18[34]];
        (*(v84 + 56))(v16, 0, 1, v18);
      }

      swift_weakTakeInit();
      a1[v14[19]] = a2[v14[19]];
      a1[v14[20]] = a2[v14[20]];
      a1[v14[21]] = a2[v14[21]];
LABEL_21:
      swift_storeEnumTagMultiPayload();
      goto LABEL_22;
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_22:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t type metadata completion function for ToolbarStorage.GroupItem.CollapsedContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ToolbarStorage.Entry.Kind(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v17 = a1 + 8;
      if (a2[48] == 1)
      {
        v18 = *(a2 + 2);
        *(a1 + 2) = v18;
        (**(v18 - 8))(v17, (a2 + 8));
        a1[48] = 1;
      }

      else
      {
        v21 = *(a2 + 24);
        *v17 = *(a2 + 8);
        *(a1 + 24) = v21;
        *(a1 + 33) = *(a2 + 33);
      }

      a1[49] = a2[49];
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 9) = *(a2 + 9);

      goto LABEL_151;
    case 1:
      v13 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v13;
      v14 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v14;
      v15 = *(a2 + 7);

      if (v15)
      {
        v16 = *(a2 + 8);
        *(a1 + 7) = v15;
        *(a1 + 8) = v16;
        (**(v15 - 8))((a1 + 32), (a2 + 32), v15);
        *(a1 + 9) = *(a2 + 9);
      }

      else
      {
        v22 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v22;
        *(a1 + 4) = *(a2 + 4);
      }

      if (a2[120] == 1)
      {
        v23 = *(a2 + 104);
        *(a1 + 104) = v23;
        (**(v23 - 8))((a1 + 80), (a2 + 80));
        a1[120] = 1;
      }

      else
      {
        v24 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v24;
        *(a1 + 105) = *(a2 + 105);
      }

      a1[121] = a2[121];
      *(a1 + 16) = *(a2 + 16);
      a1[136] = a2[136];
      *(a1 + 137) = *(a2 + 137);
      v25 = *(a2 + 19);
      *(a1 + 18) = *(a2 + 18);
      *(a1 + 19) = v25;
      v26 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
      v27 = &a1[v26];
      v28 = &a2[v26];
      v29 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
      v30 = *(v29 - 8);
      v31 = *(v30 + 48);

      if (v31(v28, 1, v29))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
        memcpy(v27, v28, *(*(v32 - 8) + 64));
LABEL_151:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v264 = a1;
      type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v75 = *(v28 + 24);
        *(v27 + 24) = v75;
        (**(v75 - 8))(v27, v28);
        v76 = *(v28 + 6);
        *(v27 + 5) = *(v28 + 5);
        *(v27 + 6) = v76;
        *(v27 + 7) = *(v28 + 7);
        *(v27 + 8) = *(v28 + 8);
        *(v27 + 72) = *(v28 + 72);
        v77 = *(v28 + 11);
        *(v27 + 11) = v77;

        v78 = v77;
LABEL_150:
        swift_storeEnumTagMultiPayload();
        v239 = *(v29 + 20);
        v240 = *&v28[v239];
        *&v27[v239] = v240;
        v241 = *(v30 + 56);
        v242 = v240;
        v241(v27, 0, 1, v29);
        a1 = v264;
        goto LABEL_151;
      }

      v33 = *v28;
      v34 = *(v28 + 1);
      *v27 = *v28;
      *(v27 + 1) = v34;
      v35 = *(v28 + 3);
      *(v27 + 2) = *(v28 + 2);
      *(v27 + 3) = v35;
      v27[32] = v28[32];
      v36 = *(v28 + 6);
      *(v27 + 5) = *(v28 + 5);
      *(v27 + 6) = v36;
      v27[56] = v28[56];
      v37 = *(v28 + 24);
      v38 = v33;
      v39 = v34;

      v266 = v30;
      if (v37 >> 1 == 4294967294)
      {
        v40 = *(v28 + 13);
        *(v27 + 12) = *(v28 + 12);
        *(v27 + 13) = v40;
        *(v27 + 14) = *(v28 + 14);
        *(v27 + 235) = *(v28 + 235);
        v41 = *(v28 + 9);
        *(v27 + 8) = *(v28 + 8);
        *(v27 + 9) = v41;
        v42 = *(v28 + 11);
        *(v27 + 10) = *(v28 + 10);
        *(v27 + 11) = v42;
        v43 = *(v28 + 5);
        *(v27 + 4) = *(v28 + 4);
        *(v27 + 5) = v43;
        v44 = *(v28 + 7);
        *(v27 + 6) = *(v28 + 6);
        *(v27 + 7) = v44;
      }

      else
      {
        v81 = v28[72];
        if (v81 == 255)
        {
          *(v27 + 8) = *(v28 + 8);
          v27[72] = v28[72];
        }

        else
        {
          v82 = *(v28 + 8);
          outlined copy of GraphicsImage.Contents(v82, v28[72]);
          *(v27 + 8) = v82;
          v27[72] = v81;
          v37 = *(v28 + 24);
        }

        *(v27 + 10) = *(v28 + 10);
        *(v27 + 88) = *(v28 + 88);
        v27[104] = v28[104];
        *(v27 + 108) = *(v28 + 108);
        *(v27 + 121) = *(v28 + 121);
        *(v27 + 136) = *(v28 + 136);
        *(v27 + 152) = *(v28 + 152);
        *(v27 + 84) = *(v28 + 84);
        v27[170] = v28[170];
        v27[171] = v28[171];
        if (v37 >> 1 == 0xFFFFFFFF)
        {
          v163 = *(v28 + 12);
          *(v27 + 11) = *(v28 + 11);
          *(v27 + 12) = v163;
        }

        else
        {
          v164 = *(v28 + 22);
          v165 = *(v28 + 23);
          v166 = *(v28 + 25);
          outlined copy of AccessibilityImageLabel(v164, v165, v37);
          *(v27 + 22) = v164;
          *(v27 + 23) = v165;
          *(v27 + 24) = v37;
          *(v27 + 25) = v166;
        }

        v167 = *(v28 + 27);
        *(v27 + 26) = *(v28 + 26);
        *(v27 + 27) = v167;
        *(v27 + 112) = *(v28 + 112);
        *(v27 + 57) = *(v28 + 57);
        v27[232] = v28[232];
        v168 = *(v28 + 30);
        *(v27 + 30) = v168;
        *(v27 + 124) = *(v28 + 124);
        v27[250] = v28[250];
        swift_unknownObjectRetain();

        v169 = v168;
      }

      v170 = *(v28 + 33);
      if (v170)
      {
        *(v27 + 32) = *(v28 + 32);
        *(v27 + 33) = v170;
        v171 = *(v28 + 34);

        if (v171 >= 2)
        {
          v172 = v171;
        }

        *(v27 + 34) = v171;
        *(v27 + 70) = *(v28 + 70);
        v27[284] = v28[284];
        *(v27 + 285) = *(v28 + 285);
        v173 = *(v28 + 37);
        *(v27 + 36) = *(v28 + 36);
        *(v27 + 37) = v173;
      }

      else
      {
        v174 = *(v28 + 17);
        *(v27 + 16) = *(v28 + 16);
        *(v27 + 17) = v174;
        *(v27 + 18) = *(v28 + 18);
      }

      v175 = *(v28 + 42);
      v269 = v29;
      if (v175 >> 2 == 0xFFFFFFFF)
      {
        v176 = *(v28 + 24);
        *(v27 + 23) = *(v28 + 23);
        *(v27 + 24) = v176;
        *(v27 + 50) = *(v28 + 50);
        v177 = *(v28 + 20);
        *(v27 + 19) = *(v28 + 19);
        *(v27 + 20) = v177;
        v178 = *(v28 + 22);
        *(v27 + 21) = *(v28 + 21);
        *(v27 + 22) = v178;
      }

      else
      {
        v179 = *(v28 + 38);
        v180 = *(v28 + 39);
        v181 = *(v28 + 40);
        v182 = *(v28 + 41);
        v184 = *(v28 + 43);
        v183 = *(v28 + 44);
        v185 = *(v28 + 45);
        v245 = *(v28 + 46);
        v250 = *(v28 + 47);
        __dstc = *(v28 + 48);
        v258 = *(v28 + 49);
        v261 = *(v28 + 50);
        outlined copy of PlatformItemList.Item.SystemItem(v179, v180, v181, v182, v175, v184, v183, v185, v245, v250, __dstc, v258, v261);
        *(v27 + 38) = v179;
        *(v27 + 39) = v180;
        *(v27 + 40) = v181;
        *(v27 + 41) = v182;
        *(v27 + 42) = v175;
        *(v27 + 43) = v184;
        *(v27 + 44) = v183;
        *(v27 + 45) = v185;
        *(v27 + 46) = v245;
        *(v27 + 47) = v250;
        *(v27 + 48) = __dstc;
        *(v27 + 49) = v258;
        *(v27 + 50) = v261;
      }

      v186 = *(v28 + 52);
      if (v186 == 1)
      {
        v187 = *(v28 + 456);
        *(v27 + 440) = *(v28 + 440);
        *(v27 + 456) = v187;
        v27[472] = v28[472];
        v188 = *(v28 + 424);
        *(v27 + 408) = *(v28 + 408);
        *(v27 + 424) = v188;
      }

      else
      {
        *(v27 + 102) = *(v28 + 102);
        v27[412] = v28[412];
        if (v186)
        {
          v189 = *(v28 + 53);
          *(v27 + 52) = v186;
          *(v27 + 53) = v189;
        }

        else
        {
          *(v27 + 26) = *(v28 + 26);
        }

        v190 = *(v28 + 54);
        if (v190)
        {
          v191 = *(v28 + 55);
          *(v27 + 54) = v190;
          *(v27 + 55) = v191;
        }

        else
        {
          *(v27 + 27) = *(v28 + 27);
        }

        v192 = *(v28 + 56);
        if (v192)
        {
          v193 = *(v28 + 57);
          *(v27 + 56) = v192;
          *(v27 + 57) = v193;
        }

        else
        {
          *(v27 + 28) = *(v28 + 28);
        }

        *(v27 + 58) = *(v28 + 58);
        v27[472] = v28[472];
      }

      v194 = *(v28 + 61);
      *(v27 + 60) = *(v28 + 60);
      *(v27 + 61) = v194;
      *(v27 + 62) = *(v28 + 62);
      v27[504] = v28[504];
      v195 = *(v28 + 64);

      if (v195)
      {
        v196 = *(v28 + 65);
        *(v27 + 64) = v195;
        *(v27 + 65) = v196;
      }

      else
      {
        *(v27 + 32) = *(v28 + 32);
      }

      v27[528] = v28[528];
      if (!*(v28 + 102))
      {
        memcpy(v27 + 536, v28 + 536, 0x130uLL);
        goto LABEL_135;
      }

      *(v27 + 67) = *(v28 + 67);
      *(v27 + 68) = *(v28 + 68);
      v27[552] = v28[552];
      *(v27 + 70) = *(v28 + 70);
      v27[568] = v28[568];
      *(v27 + 36) = *(v28 + 36);
      v27[592] = v28[592];
      v197 = v27 + 600;
      v198 = v28 + 600;
      v199 = *(v28 + 78);

      if (v199)
      {
        if (v199 == 1)
        {
          v200 = *(v28 + 616);
          *v197 = *v198;
          *(v27 + 616) = v200;
          *(v27 + 632) = *(v28 + 632);
LABEL_131:
          *(v27 + 81) = *(v28 + 81);
          v27[656] = v28[656];
          v202 = v27 + 664;
          v203 = v28 + 664;
          v204 = *(v28 + 97);
          if (v204 == 1)
          {
            v205 = *(v28 + 776);
            *(v27 + 760) = *(v28 + 760);
            *(v27 + 776) = v205;
            *(v27 + 792) = *(v28 + 792);
            v27[808] = v28[808];
            v206 = *(v28 + 712);
            *(v27 + 696) = *(v28 + 696);
            *(v27 + 712) = v206;
            v207 = *(v28 + 744);
            *(v27 + 728) = *(v28 + 728);
            *(v27 + 744) = v207;
            v208 = *(v28 + 680);
            *v202 = *v203;
            *(v27 + 680) = v208;
          }

          else
          {
            *v202 = *v203;
            v27[672] = v28[672];
            *(v27 + 85) = *(v28 + 85);
            v27[688] = v28[688];
            *(v27 + 689) = *(v28 + 689);
            v27[691] = v28[691];
            v27[692] = v28[692];
            *(v27 + 87) = *(v28 + 87);
            v209 = *(v28 + 45);
            *(v27 + 44) = *(v28 + 44);
            *(v27 + 45) = v209;
            *(v27 + 92) = *(v28 + 92);
            *(v27 + 372) = *(v28 + 372);
            *(v27 + 47) = *(v28 + 47);
            v27[768] = v28[768];
            *(v27 + 97) = v204;
            *(v27 + 49) = *(v28 + 49);
            *(v27 + 100) = *(v28 + 100);
            v27[808] = v28[808];
          }

          *(v27 + 102) = *(v28 + 102);
          *(v27 + 103) = *(v28 + 103);
          *(v27 + 104) = *(v28 + 104);

LABEL_135:
          v210 = v27 + 840;
          v211 = v28 + 840;
          v212 = *(v28 + 108);
          if (v212)
          {
            if (v212 == 1)
            {
              v213 = *(v28 + 856);
              *v210 = *v211;
              *(v27 + 856) = v213;
              *(v27 + 872) = *(v28 + 872);
              *(v27 + 111) = *(v28 + 111);
LABEL_143:
              v217 = *(v28 + 112);
              *(v27 + 112) = v217;
              *(v27 + 113) = *(v28 + 113);
              *(v27 + 114) = *(v28 + 114);
              *(v27 + 115) = *(v28 + 115);
              *(v27 + 116) = *(v28 + 116);
              *(v27 + 117) = *(v28 + 117);
              *(v27 + 118) = *(v28 + 118);
              *(v27 + 476) = *(v28 + 476);
              v27[954] = v28[954];
              v218 = type metadata accessor for PlatformItemList.Item();
              v219 = *(v218 + 112);
              v259 = v218;
              v262 = &v27[v219];
              v220 = &v28[v219];
              v221 = type metadata accessor for CommandOperation();
              v222 = *(v221 - 8);
              v251 = v222[6];
              v223 = v217;

              if (v251(v220, 1, v221))
              {
                _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                memcpy(v262, v220, *(*(v224 - 8) + 64));
                v30 = v266;
                v29 = v269;
              }

              else
              {
                __dsta = v222;
                *v262 = *v220;
                v225 = *(v221 + 20);
                v226 = v220;
                v246 = v220;
                v227 = &v262[v225];
                v228 = &v226[v225];
                v229 = v221;
                v230 = *&v226[v225];
                v231 = *&v226[v225 + 8];
                v232 = v226[v225 + 16];
                outlined copy of Text.Storage(v230, v231, v232);
                *v227 = v230;
                *(v227 + 1) = v231;
                v227[16] = v232;
                *(v227 + 3) = *(v228 + 3);
                v233 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                v234 = type metadata accessor for UUID();
                v252 = *(*(v234 - 8) + 16);

                v252(&v227[v233], &v228[v233], v234);
                v235 = *(v229 + 24);
                v236 = &v262[v235];
                v237 = &v246[v235];
                if (*v237)
                {
                  v238 = *(v237 + 1);
                  *v236 = *v237;
                  *(v236 + 1) = v238;
                }

                else
                {
                  *v236 = *v237;
                }

                v30 = v266;
                v29 = v269;
                __dsta[7](v262, 0, 1, v229);
              }

              v27[v259[29]] = v28[v259[29]];
              v27[v259[30]] = v28[v259[30]];
              v27[v259[31]] = v28[v259[31]];
              v27[v259[32]] = v28[v259[32]];
              v27[v259[33]] = v28[v259[33]];
              *&v27[v259[34]] = *&v28[v259[34]];

              goto LABEL_150;
            }

            *(v27 + 108) = v212;
            *(v27 + 109) = *(v28 + 109);
            (**(v212 - 8))(v210, v211);
          }

          else
          {
            v214 = *(v28 + 856);
            *v210 = *v211;
            *(v27 + 856) = v214;
            *(v27 + 109) = *(v28 + 109);
          }

          v215 = *(v28 + 110);
          if (v215)
          {
            v216 = *(v28 + 111);
            *(v27 + 110) = v215;
            *(v27 + 111) = v216;
          }

          else
          {
            *(v27 + 55) = *(v28 + 55);
          }

          goto LABEL_143;
        }

        *(v27 + 78) = v199;
        *(v27 + 79) = *(v28 + 79);
        (**(v199 - 8))((v27 + 600), (v28 + 600), v199);
      }

      else
      {
        v201 = *(v28 + 616);
        *v197 = *v198;
        *(v27 + 616) = v201;
        *(v27 + 79) = *(v28 + 79);
      }

      *(v27 + 80) = *(v28 + 80);

      goto LABEL_131;
    case 0:
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 1) = *(a2 + 1);
      v8 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v8;
      v9 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v9;
      v10 = *(a2 + 11);

      if (v10)
      {
        v11 = *(a2 + 12);
        *(a1 + 11) = v10;
        *(a1 + 12) = v11;
        (**(v10 - 8))((a1 + 64), (a2 + 64), v10);
        *(a1 + 13) = *(a2 + 13);
      }

      else
      {
        v45 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v45;
        *(a1 + 6) = *(a2 + 6);
      }

      if (a2[152] == 1)
      {
        v46 = *(a2 + 136);
        *(a1 + 136) = v46;
        (**(v46 - 8))((a1 + 112), (a2 + 112));
        a1[152] = 1;
      }

      else
      {
        v47 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v47;
        *(a1 + 137) = *(a2 + 137);
      }

      *(a1 + 153) = *(a2 + 153);
      *(a1 + 20) = *(a2 + 20);
      a1[168] = a2[168];
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 22) = *(a2 + 22);
      v48 = *(a2 + 13);
      *(a1 + 13) = v48;
      v49 = v48;
      v50 = **(v48 - 8);

      v50(a1 + 184, a2 + 184, v49);
      v51 = *(a2 + 29);
      *(a1 + 28) = *(a2 + 28);
      *(a1 + 29) = v51;
      *(a1 + 30) = *(a2 + 30);
      *(a1 + 31) = *(a2 + 31);
      *(a1 + 16) = *(a2 + 16);
      v52 = *(a2 + 34);
      v53 = *(a2 + 35);
      *(a1 + 34) = v52;
      *(a1 + 35) = v53;
      v263 = type metadata accessor for ToolbarStorage.Item(0);
      v54 = v263[17];
      v265 = a1;
      v267 = &a1[v54];
      v268 = &a2[v54];
      v55 = type metadata accessor for PlatformItemList.Item();
      v56 = *(v55 - 8);
      v57 = *(v56 + 48);

      v58 = v52;
      v59 = v53;
      if (v57(v268, 1, v55))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
        memcpy(v267, v268, *(*(v60 - 8) + 64));
LABEL_94:
        swift_weakCopyInit();
        a1[v263[19]] = a2[v263[19]];
        a1[v263[20]] = a2[v263[20]];
        a1[v263[21]] = a2[v263[21]];
        goto LABEL_151;
      }

      v257 = v56;
      v260 = v55;
      v61 = *v268;
      v62 = v268[1];
      v63 = v267;
      *v267 = *v268;
      v267[1] = v62;
      v64 = v268[3];
      v267[2] = v268[2];
      v267[3] = v64;
      *(v267 + 32) = *(v268 + 32);
      v65 = v268[6];
      v267[5] = v268[5];
      v267[6] = v65;
      *(v267 + 56) = *(v268 + 56);
      v66 = v268[24];
      v67 = v61;
      v68 = v62;

      if (v66 >> 1 == 4294967294)
      {
        v69 = *(v268 + 13);
        *(v267 + 12) = *(v268 + 12);
        *(v267 + 13) = v69;
        *(v267 + 14) = *(v268 + 14);
        *(v267 + 235) = *(v268 + 235);
        v70 = *(v268 + 9);
        *(v267 + 8) = *(v268 + 8);
        *(v267 + 9) = v70;
        v71 = *(v268 + 11);
        *(v267 + 10) = *(v268 + 10);
        *(v267 + 11) = v71;
        v72 = *(v268 + 5);
        *(v267 + 4) = *(v268 + 4);
        *(v267 + 5) = v72;
        v73 = *(v268 + 7);
        *(v267 + 6) = *(v268 + 6);
        *(v267 + 7) = v73;
        v74 = v268;
      }

      else
      {
        v79 = *(v268 + 72);
        v74 = v268;
        if (v79 == 255)
        {
          v267[8] = v268[8];
          *(v267 + 72) = *(v268 + 72);
        }

        else
        {
          v80 = v268[8];
          outlined copy of GraphicsImage.Contents(v80, *(v268 + 72));
          v267[8] = v80;
          *(v267 + 72) = v79;
          v66 = v268[24];
        }

        v267[10] = v268[10];
        *(v267 + 11) = *(v268 + 11);
        *(v267 + 104) = *(v268 + 104);
        *(v267 + 108) = *(v268 + 108);
        *(v267 + 121) = *(v268 + 121);
        *(v267 + 17) = *(v268 + 17);
        *(v267 + 19) = *(v268 + 19);
        *(v267 + 84) = *(v268 + 84);
        *(v267 + 170) = *(v268 + 170);
        *(v267 + 171) = *(v268 + 171);
        if (v66 >> 1 == 0xFFFFFFFF)
        {
          v83 = *(v268 + 12);
          *(v267 + 11) = *(v268 + 11);
          *(v267 + 12) = v83;
        }

        else
        {
          v84 = v268[22];
          v85 = v268[23];
          v86 = v268[25];
          outlined copy of AccessibilityImageLabel(v84, v85, v66);
          v267[22] = v84;
          v267[23] = v85;
          v74 = v268;
          v267[24] = v66;
          v267[25] = v86;
        }

        v87 = v74[27];
        v267[26] = v74[26];
        v267[27] = v87;
        *(v267 + 112) = *(v74 + 112);
        *(v267 + 57) = *(v74 + 57);
        *(v267 + 232) = *(v74 + 232);
        v88 = v74[30];
        v267[30] = v88;
        *(v267 + 124) = *(v74 + 124);
        *(v267 + 250) = *(v74 + 250);
        swift_unknownObjectRetain();

        v89 = v88;
      }

      v90 = v74[33];
      if (v90)
      {
        v267[32] = v74[32];
        v267[33] = v90;
        v91 = v74[34];

        if (v91 >= 2)
        {
          v92 = v91;
        }

        v267[34] = v91;
        *(v267 + 70) = *(v74 + 70);
        *(v267 + 284) = *(v74 + 284);
        *(v267 + 285) = *(v74 + 285);
        v93 = v74[37];
        v267[36] = v74[36];
        v267[37] = v93;
      }

      else
      {
        v94 = *(v74 + 17);
        *(v267 + 16) = *(v74 + 16);
        *(v267 + 17) = v94;
        *(v267 + 18) = *(v74 + 18);
      }

      v95 = v74[42];
      if (v95 >> 2 == 0xFFFFFFFF)
      {
        v96 = *(v74 + 24);
        *(v267 + 23) = *(v74 + 23);
        *(v267 + 24) = v96;
        v267[50] = v74[50];
        v97 = *(v74 + 20);
        *(v267 + 19) = *(v74 + 19);
        *(v267 + 20) = v97;
        v98 = *(v74 + 22);
        *(v267 + 21) = *(v74 + 21);
        *(v267 + 22) = v98;
      }

      else
      {
        v99 = v74[38];
        v100 = v74[39];
        v101 = v268[40];
        v102 = v268[41];
        v103 = v268[43];
        v104 = v268[44];
        v105 = v268[45];
        v106 = v268[46];
        v243 = v268[47];
        v244 = v268[48];
        v247 = v268[49];
        __dstb = v268[50];
        outlined copy of PlatformItemList.Item.SystemItem(v99, v100, v101, v102, v95, v103, v104, v105, v106, v243, v244, v247, __dstb);
        v267[38] = v99;
        v267[39] = v100;
        v267[40] = v101;
        v74 = v268;
        v267[41] = v102;
        v63 = v267;
        v267[42] = v95;
        v267[43] = v103;
        v267[44] = v104;
        v267[45] = v105;
        v267[46] = v106;
        v267[47] = v243;
        v267[48] = v244;
        v267[49] = v247;
        v267[50] = __dstb;
      }

      v107 = v74[52];
      if (v107 == 1)
      {
        v108 = *(v74 + 57);
        *(v63 + 55) = *(v74 + 55);
        *(v63 + 57) = v108;
        *(v63 + 472) = *(v74 + 472);
        v109 = *(v74 + 53);
        *(v63 + 51) = *(v74 + 51);
        *(v63 + 53) = v109;
      }

      else
      {
        *(v63 + 102) = *(v74 + 102);
        *(v63 + 412) = *(v74 + 412);
        if (v107)
        {
          v110 = v74[53];
          v63[52] = v107;
          v63[53] = v110;
        }

        else
        {
          *(v63 + 26) = *(v74 + 26);
        }

        v111 = v74[54];
        if (v111)
        {
          v112 = v74[55];
          v63[54] = v111;
          v63[55] = v112;
        }

        else
        {
          *(v63 + 27) = *(v74 + 27);
        }

        v113 = v74[56];
        if (v113)
        {
          v114 = v74[57];
          v63[56] = v113;
          v63[57] = v114;
        }

        else
        {
          *(v63 + 28) = *(v74 + 28);
        }

        v63[58] = v74[58];
        *(v63 + 472) = *(v74 + 472);
      }

      v115 = v74[61];
      v63[60] = v74[60];
      v63[61] = v115;
      v63[62] = v74[62];
      *(v63 + 504) = *(v74 + 504);
      v116 = v74[64];

      if (v116)
      {
        v117 = v74[65];
        v63[64] = v116;
        v63[65] = v117;
      }

      else
      {
        *(v63 + 32) = *(v74 + 32);
      }

      *(v63 + 528) = *(v74 + 528);
      if (!v74[102])
      {
        memcpy(v63 + 67, v74 + 67, 0x130uLL);
        goto LABEL_79;
      }

      v63[67] = v74[67];
      v63[68] = v74[68];
      *(v63 + 552) = *(v74 + 552);
      v63[70] = v74[70];
      *(v63 + 568) = *(v74 + 568);
      *(v63 + 36) = *(v74 + 36);
      *(v63 + 592) = *(v74 + 592);
      v118 = v63 + 75;
      v119 = v74 + 75;
      v120 = v74[78];

      if (v120)
      {
        if (v120 == 1)
        {
          v121 = v119[1];
          *v118 = *v119;
          *(v63 + 77) = v121;
          *(v63 + 79) = v119[2];
          v74 = v268;
LABEL_75:
          v63[81] = v74[81];
          *(v63 + 656) = *(v74 + 656);
          v124 = v63 + 83;
          v125 = v74 + 83;
          v126 = v74[97];
          if (v126 == 1)
          {
            v127 = *(v74 + 97);
            *(v63 + 95) = *(v74 + 95);
            *(v63 + 97) = v127;
            *(v63 + 99) = *(v74 + 99);
            *(v63 + 808) = *(v74 + 808);
            v128 = *(v74 + 89);
            *(v63 + 87) = *(v74 + 87);
            *(v63 + 89) = v128;
            v129 = *(v74 + 93);
            *(v63 + 91) = *(v74 + 91);
            *(v63 + 93) = v129;
            v130 = *(v74 + 85);
            *v124 = *v125;
            *(v63 + 85) = v130;
          }

          else
          {
            *v124 = *v125;
            *(v63 + 672) = *(v74 + 672);
            v63[85] = v74[85];
            *(v63 + 688) = *(v74 + 688);
            *(v63 + 689) = *(v74 + 689);
            *(v63 + 691) = *(v74 + 691);
            *(v63 + 692) = *(v74 + 692);
            v63[87] = v74[87];
            v131 = *(v74 + 45);
            *(v63 + 44) = *(v74 + 44);
            *(v63 + 45) = v131;
            v63[92] = v74[92];
            *(v63 + 372) = *(v74 + 372);
            *(v63 + 47) = *(v74 + 47);
            *(v63 + 768) = *(v74 + 768);
            v63[97] = v126;
            *(v63 + 49) = *(v74 + 49);
            v63[100] = v74[100];
            *(v63 + 808) = *(v74 + 808);
          }

          v63[102] = v74[102];
          v63[103] = v74[103];
          v63[104] = v74[104];

LABEL_79:
          v132 = v63 + 105;
          v133 = v74 + 105;
          v134 = v74[108];
          if (v134)
          {
            if (v134 == 1)
            {
              v135 = *(v74 + 107);
              *v132 = *v133;
              *(v63 + 107) = v135;
              *(v63 + 109) = *(v74 + 109);
              v63[111] = v74[111];
LABEL_87:
              v139 = v74[112];
              v63[112] = v139;
              v63[113] = v74[113];
              v63[114] = v74[114];
              v63[115] = v74[115];
              v63[116] = v74[116];
              v63[117] = v74[117];
              v63[118] = v74[118];
              *(v63 + 476) = *(v74 + 476);
              *(v63 + 954) = *(v74 + 954);
              v140 = v260[28];
              __dst = v63 + v140;
              v141 = v74 + v140;
              v142 = type metadata accessor for CommandOperation();
              v143 = *(v142 - 8);
              v248 = *(v143 + 48);
              v144 = v139;

              if (v248(v141, 1, v142))
              {
                _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                memcpy(__dst, v141, *(*(v145 - 8) + 64));
                a1 = v265;
                v147 = v257;
                v146 = v260;
                v148 = v268;
              }

              else
              {
                v249 = v142;
                *__dst = *v141;
                v149 = *(v142 + 20);
                v150 = &__dst[v149];
                v151 = &v141[v149];
                v152 = *&v141[v149];
                v153 = *&v141[v149 + 8];
                v154 = v141[v149 + 16];
                outlined copy of Text.Storage(v152, v153, v154);
                *v150 = v152;
                *(v150 + 1) = v153;
                v150[16] = v154;
                *(v150 + 3) = *(v151 + 3);
                v155 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                v156 = type metadata accessor for UUID();
                v157 = *(*(v156 - 8) + 16);

                v157(&v150[v155], &v151[v155], v156);
                v158 = *(v249 + 24);
                v159 = &__dst[v158];
                v160 = &v141[v158];
                if (*v160)
                {
                  v161 = v160[1];
                  *v159 = *v160;
                  v159[1] = v161;
                }

                else
                {
                  *v159 = *v160;
                }

                a1 = v265;
                v147 = v257;
                v146 = v260;
                v148 = v268;
                (*(v143 + 56))(__dst, 0, 1, v249);
              }

              *(v267 + v146[29]) = *(v148 + v146[29]);
              *(v267 + v146[30]) = *(v148 + v146[30]);
              *(v267 + v146[31]) = *(v148 + v146[31]);
              *(v267 + v146[32]) = *(v148 + v146[32]);
              *(v267 + v146[33]) = *(v148 + v146[33]);
              *(v267 + v146[34]) = *(v148 + v146[34]);
              v162 = *(v147 + 56);

              v162(v267, 0, 1, v146);
              goto LABEL_94;
            }

            v63[108] = v134;
            v63[109] = v74[109];
            (**(v134 - 1))(v132, v133);
          }

          else
          {
            v136 = *(v74 + 107);
            *v132 = *v133;
            *(v63 + 107) = v136;
            v63[109] = v74[109];
          }

          v137 = v74[110];
          if (v137)
          {
            v138 = v74[111];
            v63[110] = v137;
            v63[111] = v138;
          }

          else
          {
            *(v63 + 55) = *(v74 + 55);
          }

          goto LABEL_87;
        }

        v63[78] = v120;
        v123 = v268;
        v63[79] = v268[79];
        (**(v120 - 1))((v63 + 75), v119, v120);
      }

      else
      {
        v122 = v119[1];
        *v118 = *v119;
        *(v63 + 77) = v122;
        v63[79] = *(v119 + 4);
        v123 = v268;
      }

      v63[80] = v123[80];

      v74 = v123;
      goto LABEL_75;
  }

  v19 = *(v6 + 64);

  return memcpy(a1, a2, v19);
}

char *assignWithCopy for ToolbarStorage.Entry.Kind(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v3 = *a2;
      v9 = v3 + 8;
      if (a2[48] == 1)
      {
        v10 = *(a2 + 4);
        *(v3 + 4) = v10;
        *(v3 + 5) = *(a2 + 5);
        (**(v10 - 8))(v9, (a2 + 8));
        v3[48] = 1;
      }

      else
      {
        v13 = *(a2 + 8);
        v14 = *(a2 + 24);
        *(v3 + 33) = *(a2 + 33);
        *v9 = v13;
        *(v3 + 24) = v14;
      }

      v3[49] = a2[49];
      *(v3 + 7) = *(a2 + 7);
      v3[64] = a2[64];
      v3[65] = a2[65];
      *(v3 + 9) = *(a2 + 9);

      goto LABEL_149;
    case 1:
      *v3 = *a2;
      *(v3 + 1) = *(a2 + 1);
      *(v3 + 2) = *(a2 + 2);
      *(v3 + 3) = *(a2 + 3);
      v8 = *(a2 + 7);

      if (v8)
      {
        *(v3 + 7) = v8;
        *(v3 + 8) = *(a2 + 8);
        (**(v8 - 8))((v3 + 32), (a2 + 32), v8);
        *(v3 + 9) = *(a2 + 9);
      }

      else
      {
        v15 = *(a2 + 2);
        v16 = *(a2 + 4);
        *(v3 + 3) = *(a2 + 3);
        *(v3 + 4) = v16;
        *(v3 + 2) = v15;
      }

      if (a2[120] == 1)
      {
        v17 = *(a2 + 13);
        *(v3 + 13) = v17;
        *(v3 + 14) = *(a2 + 14);
        (**(v17 - 8))((v3 + 80), (a2 + 80));
        v3[120] = 1;
      }

      else
      {
        v18 = *(a2 + 5);
        v19 = *(a2 + 6);
        *(v3 + 105) = *(a2 + 105);
        *(v3 + 5) = v18;
        *(v3 + 6) = v19;
      }

      v3[121] = a2[121];
      *(v3 + 16) = *(a2 + 16);
      v3[136] = a2[136];
      v3[137] = a2[137];
      v3[138] = a2[138];
      *(v3 + 18) = *(a2 + 18);
      *(v3 + 19) = *(a2 + 19);
      v20 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
      v21 = &v3[v20];
      v22 = &a2[v20];
      v23 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);

      if (v25(v22, 1, v23))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
        memcpy(v21, v22, *(*(v26 - 8) + 64));
LABEL_149:
        swift_storeEnumTagMultiPayload();
        return v3;
      }

      type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v75 = *(v22 + 3);
        *(v21 + 3) = v75;
        *(v21 + 4) = *(v22 + 4);
        (**(v75 - 8))(v21, v22);
        *(v21 + 5) = *(v22 + 5);
        *(v21 + 6) = *(v22 + 6);
        *(v21 + 14) = *(v22 + 14);
        *(v21 + 15) = *(v22 + 15);
        *(v21 + 8) = *(v22 + 8);
        *(v21 + 9) = *(v22 + 9);
        *(v21 + 10) = *(v22 + 10);
        v76 = *(v22 + 11);
        *(v21 + 11) = v76;

        v77 = v76;
LABEL_148:
        swift_storeEnumTagMultiPayload();
        v266 = *(v23 + 20);
        v267 = *&v22[v266];
        *&v21[v266] = v267;
        v268 = *(v24 + 56);
        v269 = v267;
        v268(v21, 0, 1, v23);
        goto LABEL_149;
      }

      v27 = *v22;
      *v21 = *v22;
      v28 = *(v22 + 1);
      *(v21 + 1) = v28;
      *(v21 + 2) = *(v22 + 2);
      *(v21 + 3) = *(v22 + 3);
      v21[32] = v22[32];
      *(v21 + 5) = *(v22 + 5);
      *(v21 + 6) = *(v22 + 6);
      v21[56] = v22[56];
      v29 = *(v22 + 24);
      v30 = v27;
      v31 = v28;

      v296 = v23;
      v294 = v24;
      if (v29 >> 1 == 4294967294)
      {
        v32 = *(v22 + 4);
        v33 = *(v22 + 5);
        v34 = *(v22 + 7);
        *(v21 + 6) = *(v22 + 6);
        *(v21 + 7) = v34;
        *(v21 + 4) = v32;
        *(v21 + 5) = v33;
        v35 = *(v22 + 8);
        v36 = *(v22 + 9);
        v37 = *(v22 + 11);
        *(v21 + 10) = *(v22 + 10);
        *(v21 + 11) = v37;
        *(v21 + 8) = v35;
        *(v21 + 9) = v36;
        v38 = *(v22 + 12);
        v39 = *(v22 + 13);
        v40 = *(v22 + 14);
        *(v21 + 235) = *(v22 + 235);
        *(v21 + 13) = v39;
        *(v21 + 14) = v40;
        *(v21 + 12) = v38;
      }

      else
      {
        v80 = v22[72];
        if (v80 == 255)
        {
          v174 = *(v22 + 8);
          v21[72] = v22[72];
          *(v21 + 8) = v174;
        }

        else
        {
          v81 = *(v22 + 8);
          outlined copy of GraphicsImage.Contents(v81, v22[72]);
          *(v21 + 8) = v81;
          v21[72] = v80;
        }

        *(v21 + 10) = *(v22 + 10);
        *(v21 + 88) = *(v22 + 88);
        v21[104] = v22[104];
        v175 = *(v22 + 108);
        *(v21 + 121) = *(v22 + 121);
        *(v21 + 108) = v175;
        v176 = *(v22 + 136);
        v177 = *(v22 + 152);
        v21[168] = v22[168];
        *(v21 + 152) = v177;
        *(v21 + 136) = v176;
        v21[169] = v22[169];
        v21[170] = v22[170];
        v21[171] = v22[171];
        v178 = *(v22 + 24);
        if (v178 >> 1 == 0xFFFFFFFF)
        {
          v179 = *(v22 + 12);
          *(v21 + 11) = *(v22 + 11);
          *(v21 + 12) = v179;
        }

        else
        {
          v180 = *(v22 + 22);
          v181 = *(v22 + 23);
          v182 = *(v22 + 25);
          outlined copy of AccessibilityImageLabel(v180, v181, *(v22 + 24));
          *(v21 + 22) = v180;
          *(v21 + 23) = v181;
          *(v21 + 24) = v178;
          *(v21 + 25) = v182;
        }

        *(v21 + 26) = *(v22 + 26);
        *(v21 + 27) = *(v22 + 27);
        v21[224] = v22[224];
        v21[225] = v22[225];
        v183 = *(v22 + 57);
        v21[232] = v22[232];
        *(v21 + 57) = v183;
        v184 = *(v22 + 30);
        *(v21 + 30) = v184;
        *(v21 + 124) = *(v22 + 124);
        v21[250] = v22[250];
        swift_unknownObjectRetain();

        v185 = v184;
      }

      if (*(v22 + 33))
      {
        *(v21 + 32) = *(v22 + 32);
        *(v21 + 33) = *(v22 + 33);
        v186 = *(v22 + 34);

        if (v186 >= 2)
        {
          v187 = v186;
        }

        *(v21 + 34) = v186;
        v188 = *(v22 + 70);
        v21[284] = v22[284];
        *(v21 + 70) = v188;
        v21[285] = v22[285];
        v21[286] = v22[286];
        *(v21 + 36) = *(v22 + 36);
        *(v21 + 37) = *(v22 + 37);
      }

      else
      {
        v189 = *(v22 + 16);
        v190 = *(v22 + 18);
        *(v21 + 17) = *(v22 + 17);
        *(v21 + 18) = v190;
        *(v21 + 16) = v189;
      }

      v191 = *(v22 + 42);
      if (v191 >> 2 == 0xFFFFFFFF)
      {
        v192 = *(v22 + 19);
        v193 = *(v22 + 21);
        *(v21 + 20) = *(v22 + 20);
        *(v21 + 21) = v193;
        *(v21 + 19) = v192;
        v194 = *(v22 + 22);
        v195 = *(v22 + 23);
        v196 = *(v22 + 24);
        *(v21 + 50) = *(v22 + 50);
        *(v21 + 23) = v195;
        *(v21 + 24) = v196;
        *(v21 + 22) = v194;
      }

      else
      {
        v197 = *(v22 + 38);
        v198 = *(v22 + 39);
        v199 = *(v22 + 40);
        v200 = *(v22 + 43);
        v201 = *(v22 + 44);
        v202 = *(v22 + 45);
        v272 = *(v22 + 41);
        v275 = *(v22 + 46);
        v280 = *(v22 + 47);
        __dstc = *(v22 + 48);
        v287 = *(v22 + 49);
        v291 = *(v22 + 50);
        outlined copy of PlatformItemList.Item.SystemItem(v197, v198, v199, v272, v191, v200, v201, v202, v275, v280, __dstc, v287, v291);
        *(v21 + 38) = v197;
        *(v21 + 39) = v198;
        *(v21 + 40) = v199;
        *(v21 + 41) = v272;
        *(v21 + 42) = v191;
        *(v21 + 43) = v200;
        *(v21 + 44) = v201;
        *(v21 + 45) = v202;
        *(v21 + 46) = v275;
        *(v21 + 47) = v280;
        *(v21 + 48) = __dstc;
        *(v21 + 49) = v287;
        *(v21 + 50) = v291;
      }

      if (*(v22 + 52) == 1)
      {
        *(v21 + 408) = *(v22 + 408);
        v203 = *(v22 + 424);
        v204 = *(v22 + 440);
        v205 = *(v22 + 456);
        v21[472] = v22[472];
        *(v21 + 440) = v204;
        *(v21 + 456) = v205;
        *(v21 + 424) = v203;
      }

      else
      {
        v21[408] = v22[408];
        v21[409] = v22[409];
        v21[410] = v22[410];
        v21[411] = v22[411];
        v21[412] = v22[412];
        v206 = *(v22 + 52);
        if (v206)
        {
          v207 = *(v22 + 53);
          *(v21 + 52) = v206;
          *(v21 + 53) = v207;
        }

        else
        {
          *(v21 + 26) = *(v22 + 26);
        }

        v208 = *(v22 + 54);
        if (v208)
        {
          v209 = *(v22 + 55);
          *(v21 + 54) = v208;
          *(v21 + 55) = v209;
        }

        else
        {
          *(v21 + 27) = *(v22 + 27);
        }

        v210 = *(v22 + 56);
        if (v210)
        {
          v211 = *(v22 + 57);
          *(v21 + 56) = v210;
          *(v21 + 57) = v211;
        }

        else
        {
          *(v21 + 28) = *(v22 + 28);
        }

        *(v21 + 58) = *(v22 + 58);
        v21[472] = v22[472];
      }

      *(v21 + 60) = *(v22 + 60);
      *(v21 + 61) = *(v22 + 61);
      *(v21 + 62) = *(v22 + 62);
      v21[504] = v22[504];
      v212 = *(v22 + 64);

      if (v212)
      {
        v213 = *(v22 + 65);
        *(v21 + 64) = v212;
        *(v21 + 65) = v213;
      }

      else
      {
        *(v21 + 32) = *(v22 + 32);
      }

      v21[528] = v22[528];
      if (!*(v22 + 102))
      {
        memcpy(v21 + 536, v22 + 536, 0x130uLL);
        goto LABEL_133;
      }

      *(v21 + 67) = *(v22 + 67);
      *(v21 + 68) = *(v22 + 68);
      v21[552] = v22[552];
      *(v21 + 70) = *(v22 + 70);
      v21[568] = v22[568];
      v214 = *(v22 + 36);
      v21[592] = v22[592];
      *(v21 + 36) = v214;
      v215 = v21 + 600;
      v216 = (v22 + 600);
      v217 = *(v22 + 78);

      if (v217)
      {
        if (v217 == 1)
        {
          v218 = *v216;
          v219 = *(v22 + 632);
          *(v21 + 616) = *(v22 + 616);
          *(v21 + 632) = v219;
          *v215 = v218;
LABEL_129:
          v222 = *(v22 + 81);
          v21[656] = v22[656];
          *(v21 + 81) = v222;
          v223 = v21 + 664;
          v224 = v22 + 664;
          if (*(v22 + 97) == 1)
          {
            v225 = *(v22 + 680);
            *v223 = *v224;
            *(v21 + 680) = v225;
            v226 = *(v22 + 696);
            v227 = *(v22 + 712);
            v228 = *(v22 + 744);
            *(v21 + 728) = *(v22 + 728);
            *(v21 + 744) = v228;
            *(v21 + 696) = v226;
            *(v21 + 712) = v227;
            v229 = *(v22 + 760);
            v230 = *(v22 + 776);
            v231 = *(v22 + 792);
            v21[808] = v22[808];
            *(v21 + 776) = v230;
            *(v21 + 792) = v231;
            *(v21 + 760) = v229;
          }

          else
          {
            v232 = *v224;
            v21[672] = v22[672];
            *v223 = v232;
            v233 = *(v22 + 85);
            v21[688] = v22[688];
            *(v21 + 85) = v233;
            v21[689] = v22[689];
            v21[690] = v22[690];
            v21[691] = v22[691];
            v21[692] = v22[692];
            *(v21 + 87) = *(v22 + 87);
            *(v21 + 88) = *(v22 + 88);
            *(v21 + 89) = *(v22 + 89);
            *(v21 + 90) = *(v22 + 90);
            *(v21 + 91) = *(v22 + 91);
            *(v21 + 92) = *(v22 + 92);
            v21[744] = v22[744];
            v21[745] = v22[745];
            *(v21 + 94) = *(v22 + 94);
            *(v21 + 95) = *(v22 + 95);
            v21[768] = v22[768];
            *(v21 + 97) = *(v22 + 97);
            v234 = *(v22 + 49);
            *(v21 + 100) = *(v22 + 100);
            *(v21 + 49) = v234;
            v21[808] = v22[808];
          }

          *(v21 + 102) = *(v22 + 102);
          *(v21 + 103) = *(v22 + 103);
          *(v21 + 104) = *(v22 + 104);

LABEL_133:
          v235 = v21 + 840;
          v236 = (v22 + 840);
          v237 = *(v22 + 108);
          if (v237)
          {
            if (v237 == 1)
            {
              v238 = *v236;
              v239 = *(v22 + 856);
              v240 = *(v22 + 872);
              *(v21 + 111) = *(v22 + 111);
              *(v21 + 856) = v239;
              *(v21 + 872) = v240;
              *v235 = v238;
LABEL_141:
              v245 = *(v22 + 112);
              *(v21 + 112) = v245;
              *(v21 + 113) = *(v22 + 113);
              *(v21 + 114) = *(v22 + 114);
              *(v21 + 115) = *(v22 + 115);
              *(v21 + 116) = *(v22 + 116);
              *(v21 + 117) = *(v22 + 117);
              *(v21 + 118) = *(v22 + 118);
              v21[952] = v22[952];
              v21[953] = v22[953];
              v21[954] = v22[954];
              v246 = type metadata accessor for PlatformItemList.Item();
              v247 = *(v246 + 112);
              v288 = v246;
              v292 = &v21[v247];
              v248 = &v22[v247];
              v249 = type metadata accessor for CommandOperation();
              v250 = *(v249 - 8);
              v276 = v250[6];
              v251 = v245;

              if (v276(v248, 1, v249))
              {
                _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                memcpy(v292, v248, *(*(v252 - 8) + 64));
                v23 = v296;
                v24 = v294;
              }

              else
              {
                v281 = v248;
                __dsta = v250;
                *v292 = *v248;
                v253 = *(v249 + 20);
                v254 = &v292[v253];
                v255 = &v248[v253];
                v256 = v249;
                v257 = *&v248[v253];
                v258 = *(v255 + 1);
                v259 = v255[16];
                outlined copy of Text.Storage(v257, v258, v259);
                *v254 = v257;
                *(v254 + 1) = v258;
                v254[16] = v259;
                *(v254 + 3) = *(v255 + 3);
                v260 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                v261 = type metadata accessor for UUID();
                v277 = *(*(v261 - 8) + 16);

                v277(&v254[v260], &v255[v260], v261);
                v262 = *(v256 + 24);
                v263 = &v292[v262];
                v264 = &v281[v262];
                if (*v264)
                {
                  v265 = *(v264 + 1);
                  *v263 = *v264;
                  *(v263 + 1) = v265;
                }

                else
                {
                  *v263 = *v264;
                }

                v23 = v296;
                v24 = v294;
                __dsta[7](v292, 0, 1, v256);
              }

              v21[v288[29]] = v22[v288[29]];
              v21[v288[30]] = v22[v288[30]];
              v21[v288[31]] = v22[v288[31]];
              v21[v288[32]] = v22[v288[32]];
              v21[v288[33]] = v22[v288[33]];
              *&v21[v288[34]] = *&v22[v288[34]];

              goto LABEL_148;
            }

            *(v21 + 108) = v237;
            *(v21 + 109) = *(v22 + 109);
            (**(v237 - 8))(v235, v236);
          }

          else
          {
            v241 = *v236;
            v242 = *(v22 + 856);
            *(v21 + 109) = *(v22 + 109);
            *v235 = v241;
            *(v21 + 856) = v242;
          }

          v243 = *(v22 + 110);
          if (v243)
          {
            v244 = *(v22 + 111);
            *(v21 + 110) = v243;
            *(v21 + 111) = v244;
          }

          else
          {
            *(v21 + 55) = *(v22 + 55);
          }

          goto LABEL_141;
        }

        *(v21 + 78) = v217;
        *(v21 + 79) = *(v22 + 79);
        (**(v217 - 8))((v21 + 600), (v22 + 600), v217);
      }

      else
      {
        v220 = *v216;
        v221 = *(v22 + 616);
        *(v21 + 79) = *(v22 + 79);
        *v215 = v220;
        *(v21 + 616) = v221;
      }

      *(v21 + 80) = *(v22 + 80);

      goto LABEL_129;
    case 0:
      *v3 = *a2;
      *(v3 + 1) = *(a2 + 1);
      *(v3 + 1) = *(a2 + 1);
      *(v3 + 2) = *(a2 + 2);
      *(v3 + 3) = *(a2 + 3);
      *(v3 + 4) = *(a2 + 4);
      *(v3 + 5) = *(a2 + 5);
      *(v3 + 6) = *(a2 + 6);
      *(v3 + 7) = *(a2 + 7);
      v7 = *(a2 + 11);

      if (v7)
      {
        *(v3 + 11) = v7;
        *(v3 + 12) = *(a2 + 12);
        (**(v7 - 8))((v3 + 64), (a2 + 64), v7);
        *(v3 + 13) = *(a2 + 13);
      }

      else
      {
        v41 = *(a2 + 4);
        v42 = *(a2 + 6);
        *(v3 + 5) = *(a2 + 5);
        *(v3 + 6) = v42;
        *(v3 + 4) = v41;
      }

      if (a2[152] == 1)
      {
        v43 = *(a2 + 17);
        *(v3 + 17) = v43;
        *(v3 + 18) = *(a2 + 18);
        (**(v43 - 8))((v3 + 112), (a2 + 112));
        v3[152] = 1;
      }

      else
      {
        v44 = *(a2 + 7);
        v45 = *(a2 + 8);
        *(v3 + 137) = *(a2 + 137);
        *(v3 + 7) = v44;
        *(v3 + 8) = v45;
      }

      v3[153] = a2[153];
      v3[154] = a2[154];
      *(v3 + 20) = *(a2 + 20);
      v3[168] = a2[168];
      v3[169] = a2[169];
      v3[170] = a2[170];
      *(v3 + 22) = *(a2 + 22);
      v46 = *(a2 + 26);
      *(v3 + 26) = v46;
      *(v3 + 27) = *(a2 + 27);
      v47 = **(v46 - 8);

      v47(v3 + 184, a2 + 184, v46);
      *(v3 + 28) = *(a2 + 28);
      *(v3 + 29) = *(a2 + 29);
      *(v3 + 60) = *(a2 + 60);
      *(v3 + 61) = *(a2 + 61);
      *(v3 + 31) = *(a2 + 31);
      *(v3 + 32) = *(a2 + 32);
      *(v3 + 33) = *(a2 + 33);
      v48 = *(a2 + 34);
      *(v3 + 34) = v48;
      v49 = *(a2 + 35);
      *(v3 + 35) = v49;
      v293 = v3;
      v295 = type metadata accessor for ToolbarStorage.Item(0);
      v50 = v295[17];
      v297 = &v3[v50];
      v51 = &a2[v50];
      v52 = type metadata accessor for PlatformItemList.Item();
      v53 = *(v52 - 8);
      v289 = *(v53 + 48);

      v54 = v48;
      v55 = v49;
      if (v289(v51, 1, v52))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
        memcpy(v297, v51, *(*(v56 - 8) + 64));
        v3 = v293;
LABEL_92:
        swift_weakCopyInit();
        v3[v295[19]] = a2[v295[19]];
        v3[v295[20]] = a2[v295[20]];
        v3[v295[21]] = a2[v295[21]];
        goto LABEL_149;
      }

      v286 = v53;
      v290 = v52;
      v57 = *v51;
      v58 = v297;
      *v297 = *v51;
      v59 = *(v51 + 1);
      *(v297 + 1) = v59;
      *(v297 + 2) = *(v51 + 2);
      *(v297 + 3) = *(v51 + 3);
      v297[32] = v51[32];
      *(v297 + 5) = *(v51 + 5);
      *(v297 + 6) = *(v51 + 6);
      v297[56] = v51[56];
      v60 = *(v51 + 24);
      v61 = v57;
      v62 = v59;

      if (v60 >> 1 == 4294967294)
      {
        v63 = *(v51 + 4);
        v64 = *(v51 + 5);
        v65 = *(v51 + 7);
        *(v297 + 6) = *(v51 + 6);
        *(v297 + 7) = v65;
        *(v297 + 4) = v63;
        *(v297 + 5) = v64;
        v66 = *(v51 + 8);
        v67 = *(v51 + 9);
        v68 = *(v51 + 11);
        *(v297 + 10) = *(v51 + 10);
        *(v297 + 11) = v68;
        *(v297 + 8) = v66;
        *(v297 + 9) = v67;
        v69 = *(v51 + 12);
        v70 = *(v51 + 13);
        v71 = *(v51 + 14);
        *(v297 + 235) = *(v51 + 235);
        *(v297 + 13) = v70;
        *(v297 + 14) = v71;
        *(v297 + 12) = v69;
        if (*(v51 + 33))
        {
LABEL_33:
          *(v297 + 32) = *(v51 + 32);
          *(v297 + 33) = *(v51 + 33);
          v72 = *(v51 + 34);

          if (v72 >= 2)
          {
            v73 = v72;
          }

          *(v297 + 34) = v72;
          v74 = *(v51 + 70);
          v297[284] = v51[284];
          *(v297 + 70) = v74;
          v297[285] = v51[285];
          v297[286] = v51[286];
          *(v297 + 36) = *(v51 + 36);
          *(v297 + 37) = *(v51 + 37);

LABEL_47:
          v96 = *(v51 + 42);
          if (v96 >> 2 == 0xFFFFFFFF)
          {
            v97 = *(v51 + 19);
            v98 = *(v51 + 21);
            *(v297 + 20) = *(v51 + 20);
            *(v297 + 21) = v98;
            *(v297 + 19) = v97;
            v99 = *(v51 + 22);
            v100 = *(v51 + 23);
            v101 = *(v51 + 24);
            *(v297 + 50) = *(v51 + 50);
            *(v297 + 23) = v100;
            *(v297 + 24) = v101;
            *(v297 + 22) = v99;
          }

          else
          {
            v102 = *(v51 + 38);
            v103 = *(v51 + 39);
            v105 = *(v51 + 40);
            v104 = *(v51 + 41);
            v107 = *(v51 + 43);
            v106 = *(v51 + 44);
            v108 = *(v51 + 45);
            v270 = *(v51 + 46);
            v271 = *(v51 + 47);
            v273 = *(v51 + 48);
            v278 = *(v51 + 49);
            __dstb = *(v51 + 50);
            outlined copy of PlatformItemList.Item.SystemItem(v102, v103, v105, v104, v96, v107, v106, v108, v270, v271, v273, v278, __dstb);
            *(v297 + 38) = v102;
            *(v297 + 39) = v103;
            *(v297 + 40) = v105;
            *(v297 + 41) = v104;
            v58 = v297;
            *(v297 + 42) = v96;
            *(v297 + 43) = v107;
            *(v297 + 44) = v106;
            *(v297 + 45) = v108;
            *(v297 + 46) = v270;
            *(v297 + 47) = v271;
            *(v297 + 48) = v273;
            *(v297 + 49) = v278;
            *(v297 + 50) = __dstb;
          }

          if (*(v51 + 52) == 1)
          {
            *(v58 + 51) = *(v51 + 408);
            v109 = *(v51 + 424);
            v110 = *(v51 + 440);
            v111 = *(v51 + 456);
            *(v58 + 472) = v51[472];
            *(v58 + 55) = v110;
            *(v58 + 57) = v111;
            *(v58 + 53) = v109;
          }

          else
          {
            *(v58 + 408) = v51[408];
            *(v58 + 409) = v51[409];
            *(v58 + 410) = v51[410];
            *(v58 + 411) = v51[411];
            *(v58 + 412) = v51[412];
            v112 = *(v51 + 52);
            if (v112)
            {
              v113 = *(v51 + 53);
              v58[52] = v112;
              v58[53] = v113;
            }

            else
            {
              *(v58 + 26) = *(v51 + 26);
            }

            v114 = *(v51 + 54);
            if (v114)
            {
              v115 = *(v51 + 55);
              v58[54] = v114;
              v58[55] = v115;
            }

            else
            {
              *(v58 + 27) = *(v51 + 27);
            }

            v116 = *(v51 + 56);
            if (v116)
            {
              v117 = *(v51 + 57);
              v58[56] = v116;
              v58[57] = v117;
            }

            else
            {
              *(v58 + 28) = *(v51 + 28);
            }

            v58[58] = *(v51 + 58);
            *(v58 + 472) = v51[472];
          }

          v58[60] = *(v51 + 60);
          v58[61] = *(v51 + 61);
          v58[62] = *(v51 + 62);
          *(v58 + 504) = v51[504];
          v118 = *(v51 + 64);

          if (v118)
          {
            v119 = *(v51 + 65);
            v58[64] = v118;
            v58[65] = v119;
          }

          else
          {
            *(v58 + 32) = *(v51 + 32);
          }

          *(v58 + 528) = v51[528];
          if (!*(v51 + 102))
          {
            memcpy(v58 + 67, v51 + 536, 0x130uLL);
            goto LABEL_77;
          }

          v58[67] = *(v51 + 67);
          v58[68] = *(v51 + 68);
          *(v58 + 552) = v51[552];
          v58[70] = *(v51 + 70);
          *(v58 + 568) = v51[568];
          v120 = *(v51 + 36);
          *(v58 + 592) = v51[592];
          *(v58 + 36) = v120;
          v121 = v58 + 75;
          v122 = (v51 + 600);
          v123 = *(v51 + 78);

          if (v123)
          {
            if (v123 == 1)
            {
              v124 = *v122;
              v125 = *(v51 + 632);
              *(v58 + 77) = *(v51 + 616);
              *(v58 + 79) = v125;
              *v121 = v124;
LABEL_73:
              v128 = *(v51 + 81);
              *(v58 + 656) = v51[656];
              v58[81] = v128;
              v129 = v58 + 83;
              v130 = v51 + 664;
              if (*(v51 + 97) == 1)
              {
                v131 = *(v51 + 680);
                *v129 = *v130;
                *(v58 + 85) = v131;
                v132 = *(v51 + 696);
                v133 = *(v51 + 712);
                v134 = *(v51 + 744);
                *(v58 + 91) = *(v51 + 728);
                *(v58 + 93) = v134;
                *(v58 + 87) = v132;
                *(v58 + 89) = v133;
                v135 = *(v51 + 760);
                v136 = *(v51 + 776);
                v137 = *(v51 + 792);
                *(v58 + 808) = v51[808];
                *(v58 + 97) = v136;
                *(v58 + 99) = v137;
                *(v58 + 95) = v135;
              }

              else
              {
                v138 = *v130;
                *(v58 + 672) = v51[672];
                *v129 = v138;
                v139 = *(v51 + 85);
                *(v58 + 688) = v51[688];
                v58[85] = v139;
                *(v58 + 689) = v51[689];
                *(v58 + 690) = v51[690];
                *(v58 + 691) = v51[691];
                *(v58 + 692) = v51[692];
                v58[87] = *(v51 + 87);
                v58[88] = *(v51 + 88);
                v58[89] = *(v51 + 89);
                v58[90] = *(v51 + 90);
                v58[91] = *(v51 + 91);
                v58[92] = *(v51 + 92);
                *(v58 + 744) = v51[744];
                *(v58 + 745) = v51[745];
                v58[94] = *(v51 + 94);
                v58[95] = *(v51 + 95);
                *(v58 + 768) = v51[768];
                v58[97] = *(v51 + 97);
                v140 = *(v51 + 49);
                v58[100] = *(v51 + 100);
                *(v58 + 49) = v140;
                *(v58 + 808) = v51[808];
              }

              v58[102] = *(v51 + 102);
              v58[103] = *(v51 + 103);
              v58[104] = *(v51 + 104);

LABEL_77:
              v141 = v58 + 105;
              v142 = (v51 + 840);
              v143 = *(v51 + 108);
              if (v143)
              {
                if (v143 == 1)
                {
                  v144 = *v142;
                  v145 = *(v51 + 856);
                  v146 = *(v51 + 872);
                  v58[111] = *(v51 + 111);
                  *(v58 + 107) = v145;
                  *(v58 + 109) = v146;
                  *v141 = v144;
LABEL_85:
                  v151 = *(v51 + 112);
                  v58[112] = v151;
                  v58[113] = *(v51 + 113);
                  v58[114] = *(v51 + 114);
                  v58[115] = *(v51 + 115);
                  v58[116] = *(v51 + 116);
                  v58[117] = *(v51 + 117);
                  v58[118] = *(v51 + 118);
                  *(v58 + 952) = v51[952];
                  *(v58 + 953) = v51[953];
                  *(v58 + 954) = v51[954];
                  v152 = v290[28];
                  __dst = v58 + v152;
                  v153 = &v51[v152];
                  v154 = type metadata accessor for CommandOperation();
                  v274 = *(v154 - 8);
                  v279 = *(v274 + 48);
                  v155 = v151;

                  if (v279(v153, 1, v154))
                  {
                    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                    memcpy(__dst, v153, *(*(v156 - 8) + 64));
                    v157 = v297;
                    v158 = v290;
                    v3 = v293;
                    v159 = v286;
                  }

                  else
                  {
                    *__dst = *v153;
                    v160 = *(v154 + 20);
                    v161 = &__dst[v160];
                    v162 = &v153[v160];
                    v163 = *&v153[v160];
                    v164 = *&v153[v160 + 8];
                    v165 = v153[v160 + 16];
                    outlined copy of Text.Storage(v163, *(v162 + 1), v162[16]);
                    *v161 = v163;
                    *(v161 + 1) = v164;
                    v161[16] = v165;
                    *(v161 + 3) = *(v162 + 3);
                    v166 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                    v167 = type metadata accessor for UUID();
                    v168 = *(*(v167 - 8) + 16);

                    v168(&v161[v166], &v162[v166], v167);
                    v169 = *(v154 + 24);
                    v170 = &__dst[v169];
                    v171 = &v153[v169];
                    if (*v171)
                    {
                      v172 = *(v171 + 1);
                      *v170 = *v171;
                      *(v170 + 1) = v172;
                    }

                    else
                    {
                      *v170 = *v171;
                    }

                    v157 = v297;
                    v159 = v286;
                    v158 = v290;
                    (*(v274 + 56))(__dst, 0, 1, v154);
                    v3 = v293;
                  }

                  *(v157 + v158[29]) = v51[v158[29]];
                  *(v157 + v158[30]) = v51[v158[30]];
                  *(v157 + v158[31]) = v51[v158[31]];
                  *(v157 + v158[32]) = v51[v158[32]];
                  *(v157 + v158[33]) = v51[v158[33]];
                  *(v157 + v158[34]) = *&v51[v158[34]];
                  v173 = *(v159 + 56);

                  v173(v157, 0, 1, v158);
                  goto LABEL_92;
                }

                v58[108] = v143;
                v58[109] = *(v51 + 109);
                (**(v143 - 8))(v141, v142);
              }

              else
              {
                v147 = *v142;
                v148 = *(v51 + 856);
                v58[109] = *(v51 + 109);
                *v141 = v147;
                *(v58 + 107) = v148;
              }

              v149 = *(v51 + 110);
              if (v149)
              {
                v150 = *(v51 + 111);
                v58[110] = v149;
                v58[111] = v150;
              }

              else
              {
                *(v58 + 55) = *(v51 + 55);
              }

              goto LABEL_85;
            }

            v58[78] = v123;
            v58[79] = *(v51 + 79);
            (**(v123 - 8))((v58 + 75), (v51 + 600), v123);
          }

          else
          {
            v126 = *v122;
            v127 = *(v51 + 616);
            v58[79] = *(v51 + 79);
            *v121 = v126;
            *(v58 + 77) = v127;
          }

          v58[80] = *(v51 + 80);

          goto LABEL_73;
        }
      }

      else
      {
        v78 = v51[72];
        if (v78 == 255)
        {
          v82 = *(v51 + 8);
          v297[72] = v51[72];
          *(v297 + 8) = v82;
        }

        else
        {
          v79 = *(v51 + 8);
          outlined copy of GraphicsImage.Contents(v79, v51[72]);
          *(v297 + 8) = v79;
          v297[72] = v78;
        }

        *(v297 + 10) = *(v51 + 10);
        *(v297 + 88) = *(v51 + 88);
        v297[104] = v51[104];
        v83 = *(v51 + 108);
        *(v297 + 121) = *(v51 + 121);
        *(v297 + 108) = v83;
        v84 = *(v51 + 136);
        v85 = *(v51 + 152);
        v297[168] = v51[168];
        *(v297 + 152) = v85;
        *(v297 + 136) = v84;
        v297[169] = v51[169];
        v297[170] = v51[170];
        v297[171] = v51[171];
        v86 = *(v51 + 24);
        if (v86 >> 1 == 0xFFFFFFFF)
        {
          v87 = *(v51 + 12);
          *(v297 + 11) = *(v51 + 11);
          *(v297 + 12) = v87;
        }

        else
        {
          v88 = *(v51 + 22);
          v89 = *(v51 + 23);
          v90 = *(v51 + 25);
          outlined copy of AccessibilityImageLabel(v88, v89, *(v51 + 24));
          *(v297 + 22) = v88;
          *(v297 + 23) = v89;
          *(v297 + 24) = v86;
          *(v297 + 25) = v90;
        }

        *(v297 + 26) = *(v51 + 26);
        *(v297 + 27) = *(v51 + 27);
        v297[224] = v51[224];
        v297[225] = v51[225];
        v91 = *(v51 + 57);
        v297[232] = v51[232];
        *(v297 + 57) = v91;
        v92 = *(v51 + 30);
        *(v297 + 30) = v92;
        *(v297 + 124) = *(v51 + 124);
        v297[250] = v51[250];
        swift_unknownObjectRetain();

        v93 = v92;
        if (*(v51 + 33))
        {
          goto LABEL_33;
        }
      }

      v94 = *(v51 + 16);
      v95 = *(v51 + 18);
      *(v297 + 17) = *(v51 + 17);
      *(v297 + 18) = v95;
      *(v297 + 16) = v94;
      goto LABEL_47;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(v3, a2, v11);
}

char *initializeWithTake for ToolbarStorage.Entry.Kind(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v20 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v20;
    v21 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v21;
    v22 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v22;
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 105) = *(a2 + 105);
    a1[121] = a2[121];
    *(a1 + 16) = *(a2 + 16);
    a1[136] = a2[136];
    *(a1 + 137) = *(a2 + 137);
    *(a1 + 9) = *(a2 + 9);
    v23 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
    v24 = &a1[v23];
    v25 = &a2[v23];
    v26 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
      memcpy(v24, v25, *(*(v28 - 8) + 64));
    }

    else
    {
      v49 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = *(v25 + 1);
        *v24 = *v25;
        *(v24 + 1) = v50;
        v24[32] = v25[32];
        *(v24 + 40) = *(v25 + 40);
        v24[56] = v25[56];
        v51 = *(v25 + 13);
        *(v24 + 12) = *(v25 + 12);
        *(v24 + 13) = v51;
        *(v24 + 14) = *(v25 + 14);
        *(v24 + 235) = *(v25 + 235);
        v52 = *(v25 + 9);
        *(v24 + 8) = *(v25 + 8);
        *(v24 + 9) = v52;
        v53 = *(v25 + 11);
        *(v24 + 10) = *(v25 + 10);
        *(v24 + 11) = v53;
        v54 = *(v25 + 5);
        *(v24 + 4) = *(v25 + 4);
        *(v24 + 5) = v54;
        v55 = *(v25 + 7);
        *(v24 + 6) = *(v25 + 6);
        *(v24 + 7) = v55;
        v56 = *(v25 + 17);
        *(v24 + 16) = *(v25 + 16);
        *(v24 + 17) = v56;
        v57 = *(v25 + 23);
        *(v24 + 22) = *(v25 + 22);
        *(v24 + 23) = v57;
        *(v24 + 24) = *(v25 + 24);
        *(v24 + 50) = *(v25 + 50);
        v58 = *(v25 + 19);
        *(v24 + 18) = *(v25 + 18);
        *(v24 + 19) = v58;
        v59 = *(v25 + 21);
        *(v24 + 20) = *(v25 + 20);
        *(v24 + 21) = v59;
        v60 = *(v25 + 456);
        *(v24 + 440) = *(v25 + 440);
        *(v24 + 456) = v60;
        v24[472] = v25[472];
        v61 = *(v25 + 424);
        *(v24 + 408) = *(v25 + 408);
        *(v24 + 424) = v61;
        *(v24 + 30) = *(v25 + 30);
        *(v24 + 489) = *(v25 + 489);
        *(v24 + 32) = *(v25 + 32);
        v24[528] = v25[528];
        memcpy(v24 + 536, v25 + 536, 0x130uLL);
        v62 = *(v25 + 856);
        *(v24 + 840) = *(v25 + 840);
        *(v24 + 856) = v62;
        *(v24 + 872) = *(v25 + 872);
        *(v24 + 111) = *(v25 + 111);
        *(v24 + 112) = *(v25 + 112);
        *(v24 + 904) = *(v25 + 904);
        *(v24 + 920) = *(v25 + 920);
        *(v24 + 117) = *(v25 + 117);
        *(v24 + 118) = *(v25 + 118);
        v24[952] = v25[952];
        *(v24 + 953) = *(v25 + 953);
        v63 = type metadata accessor for PlatformItemList.Item();
        v64 = v63[28];
        __dsta = &v24[v64];
        v65 = &v25[v64];
        v66 = type metadata accessor for CommandOperation();
        v67 = *(v66 - 8);
        if ((*(v67 + 48))(v65, 1, v66))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
          memcpy(__dsta, v65, *(*(v68 - 8) + 64));
        }

        else
        {
          *__dsta = *v65;
          v72 = *(v66 + 20);
          v78 = &__dsta[v72];
          v80 = &v65[v72];
          v73 = *&v65[v72 + 16];
          *v78 = *&v65[v72];
          *(v78 + 1) = v73;
          v76 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v74 = type metadata accessor for UUID();
          (*(*(v74 - 8) + 32))(&v78[v76], &v80[v76], v74);
          *&__dsta[*(v66 + 24)] = *&v65[*(v66 + 24)];
          (*(v67 + 56))();
        }

        v24[v63[29]] = v25[v63[29]];
        v24[v63[30]] = v25[v63[30]];
        v24[v63[31]] = v25[v63[31]];
        v24[v63[32]] = v25[v63[32]];
        v24[v63[33]] = v25[v63[33]];
        *&v24[v63[34]] = *&v25[v63[34]];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v24, v25, *(*(v49 - 8) + 64));
      }

      *&v24[*(v26 + 20)] = *&v25[*(v26 + 20)];
      (*(v27 + 56))(v24, 0, 1, v26);
    }

    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v9;
    v10 = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a1 + 137) = *(a2 + 137);
    v12 = *(a2 + 8);
    *(a1 + 7) = v11;
    *(a1 + 8) = v12;
    *(a1 + 6) = v10;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 20) = *(a2 + 20);
    a1[168] = a2[168];
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 35) = *(a2 + 35);
    v13 = type metadata accessor for ToolbarStorage.Item(0);
    v14 = v13[17];
    v15 = &a1[v14];
    v16 = &a2[v14];
    v17 = type metadata accessor for PlatformItemList.Item();
    v18 = *(v17 - 1);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v81 = v18;
      v31 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v31;
      v15[32] = v16[32];
      *(v15 + 40) = *(v16 + 40);
      v15[56] = v16[56];
      v32 = *(v16 + 13);
      *(v15 + 12) = *(v16 + 12);
      *(v15 + 13) = v32;
      *(v15 + 14) = *(v16 + 14);
      *(v15 + 235) = *(v16 + 235);
      v33 = *(v16 + 9);
      *(v15 + 8) = *(v16 + 8);
      *(v15 + 9) = v33;
      v34 = *(v16 + 11);
      *(v15 + 10) = *(v16 + 10);
      *(v15 + 11) = v34;
      v35 = *(v16 + 5);
      *(v15 + 4) = *(v16 + 4);
      *(v15 + 5) = v35;
      v36 = *(v16 + 7);
      *(v15 + 6) = *(v16 + 6);
      *(v15 + 7) = v36;
      v37 = *(v16 + 17);
      *(v15 + 16) = *(v16 + 16);
      *(v15 + 17) = v37;
      v38 = *(v16 + 23);
      *(v15 + 22) = *(v16 + 22);
      *(v15 + 23) = v38;
      *(v15 + 24) = *(v16 + 24);
      *(v15 + 50) = *(v16 + 50);
      v39 = *(v16 + 19);
      *(v15 + 18) = *(v16 + 18);
      *(v15 + 19) = v39;
      v40 = *(v16 + 21);
      *(v15 + 20) = *(v16 + 20);
      *(v15 + 21) = v40;
      v41 = *(v16 + 456);
      *(v15 + 440) = *(v16 + 440);
      *(v15 + 456) = v41;
      v15[472] = v16[472];
      v42 = *(v16 + 424);
      *(v15 + 408) = *(v16 + 408);
      *(v15 + 424) = v42;
      *(v15 + 30) = *(v16 + 30);
      *(v15 + 489) = *(v16 + 489);
      *(v15 + 32) = *(v16 + 32);
      v15[528] = v16[528];
      memcpy(v15 + 536, v16 + 536, 0x130uLL);
      v43 = *(v16 + 856);
      *(v15 + 840) = *(v16 + 840);
      *(v15 + 856) = v43;
      *(v15 + 872) = *(v16 + 872);
      *(v15 + 111) = *(v16 + 111);
      *(v15 + 112) = *(v16 + 112);
      *(v15 + 904) = *(v16 + 904);
      *(v15 + 920) = *(v16 + 920);
      *(v15 + 117) = *(v16 + 117);
      *(v15 + 118) = *(v16 + 118);
      v15[952] = v16[952];
      *(v15 + 953) = *(v16 + 953);
      v44 = v17[28];
      __dst = &v15[v44];
      v45 = &v16[v44];
      v46 = type metadata accessor for CommandOperation();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v45, 1, v46))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v45, *(*(v48 - 8) + 64));
      }

      else
      {
        *__dst = *v45;
        v69 = *(v46 + 20);
        v77 = &__dst[v69];
        v79 = &v45[v69];
        v70 = *&v45[v69 + 16];
        *v77 = *&v45[v69];
        *(v77 + 1) = v70;
        v75 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v71 = type metadata accessor for UUID();
        (*(*(v71 - 8) + 32))(&v77[v75], &v79[v75], v71);
        *&__dst[*(v46 + 24)] = *&v45[*(v46 + 24)];
        (*(v47 + 56))();
      }

      v15[v17[29]] = v16[v17[29]];
      v15[v17[30]] = v16[v17[30]];
      v15[v17[31]] = v16[v17[31]];
      v15[v17[32]] = v16[v17[32]];
      v15[v17[33]] = v16[v17[33]];
      *&v15[v17[34]] = *&v16[v17[34]];
      (*(v81 + 56))(v15, 0, 1, v17);
    }

    swift_weakTakeInit();
    a1[v13[19]] = a2[v13[19]];
    a1[v13[20]] = a2[v13[20]];
    a1[v13[21]] = a2[v13[21]];
LABEL_22:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v29 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v29);
}

char *assignWithTake for ToolbarStorage.Entry.Kind(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v20 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v20;
    v21 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v21;
    v22 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v22;
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 105) = *(a2 + 105);
    a1[121] = a2[121];
    *(a1 + 16) = *(a2 + 16);
    a1[136] = a2[136];
    *(a1 + 137) = *(a2 + 137);
    *(a1 + 9) = *(a2 + 9);
    v23 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
    v24 = &a1[v23];
    v25 = &a2[v23];
    v26 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
      memcpy(v24, v25, *(*(v28 - 8) + 64));
    }

    else
    {
      v49 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = *(v25 + 1);
        *v24 = *v25;
        *(v24 + 1) = v50;
        v24[32] = v25[32];
        *(v24 + 40) = *(v25 + 40);
        v24[56] = v25[56];
        v51 = *(v25 + 13);
        *(v24 + 12) = *(v25 + 12);
        *(v24 + 13) = v51;
        *(v24 + 14) = *(v25 + 14);
        *(v24 + 235) = *(v25 + 235);
        v52 = *(v25 + 9);
        *(v24 + 8) = *(v25 + 8);
        *(v24 + 9) = v52;
        v53 = *(v25 + 11);
        *(v24 + 10) = *(v25 + 10);
        *(v24 + 11) = v53;
        v54 = *(v25 + 5);
        *(v24 + 4) = *(v25 + 4);
        *(v24 + 5) = v54;
        v55 = *(v25 + 7);
        *(v24 + 6) = *(v25 + 6);
        *(v24 + 7) = v55;
        v56 = *(v25 + 17);
        *(v24 + 16) = *(v25 + 16);
        *(v24 + 17) = v56;
        v57 = *(v25 + 23);
        *(v24 + 22) = *(v25 + 22);
        *(v24 + 23) = v57;
        *(v24 + 24) = *(v25 + 24);
        *(v24 + 50) = *(v25 + 50);
        v58 = *(v25 + 19);
        *(v24 + 18) = *(v25 + 18);
        *(v24 + 19) = v58;
        v59 = *(v25 + 21);
        *(v24 + 20) = *(v25 + 20);
        *(v24 + 21) = v59;
        v60 = *(v25 + 456);
        *(v24 + 440) = *(v25 + 440);
        *(v24 + 456) = v60;
        v24[472] = v25[472];
        v61 = *(v25 + 424);
        *(v24 + 408) = *(v25 + 408);
        *(v24 + 424) = v61;
        *(v24 + 30) = *(v25 + 30);
        *(v24 + 489) = *(v25 + 489);
        *(v24 + 32) = *(v25 + 32);
        v24[528] = v25[528];
        memcpy(v24 + 536, v25 + 536, 0x130uLL);
        v62 = *(v25 + 856);
        *(v24 + 840) = *(v25 + 840);
        *(v24 + 856) = v62;
        *(v24 + 872) = *(v25 + 872);
        *(v24 + 111) = *(v25 + 111);
        *(v24 + 112) = *(v25 + 112);
        *(v24 + 904) = *(v25 + 904);
        *(v24 + 920) = *(v25 + 920);
        *(v24 + 117) = *(v25 + 117);
        *(v24 + 118) = *(v25 + 118);
        v24[952] = v25[952];
        *(v24 + 953) = *(v25 + 953);
        v63 = type metadata accessor for PlatformItemList.Item();
        v64 = v63[28];
        __dsta = &v24[v64];
        v65 = &v25[v64];
        v66 = type metadata accessor for CommandOperation();
        v67 = *(v66 - 8);
        if ((*(v67 + 48))(v65, 1, v66))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
          memcpy(__dsta, v65, *(*(v68 - 8) + 64));
        }

        else
        {
          *__dsta = *v65;
          v72 = *(v66 + 20);
          v78 = &__dsta[v72];
          v80 = &v65[v72];
          v73 = *&v65[v72 + 16];
          *v78 = *&v65[v72];
          *(v78 + 1) = v73;
          v76 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v74 = type metadata accessor for UUID();
          (*(*(v74 - 8) + 32))(&v78[v76], &v80[v76], v74);
          *&__dsta[*(v66 + 24)] = *&v65[*(v66 + 24)];
          (*(v67 + 56))();
        }

        v24[v63[29]] = v25[v63[29]];
        v24[v63[30]] = v25[v63[30]];
        v24[v63[31]] = v25[v63[31]];
        v24[v63[32]] = v25[v63[32]];
        v24[v63[33]] = v25[v63[33]];
        *&v24[v63[34]] = *&v25[v63[34]];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v24, v25, *(*(v49 - 8) + 64));
      }

      *&v24[*(v26 + 20)] = *&v25[*(v26 + 20)];
      (*(v27 + 56))(v24, 0, 1, v26);
    }

    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v9;
    v10 = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a1 + 137) = *(a2 + 137);
    v12 = *(a2 + 8);
    *(a1 + 7) = v11;
    *(a1 + 8) = v12;
    *(a1 + 6) = v10;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 20) = *(a2 + 20);
    a1[168] = a2[168];
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 35) = *(a2 + 35);
    v13 = type metadata accessor for ToolbarStorage.Item(0);
    v14 = v13[17];
    v15 = &a1[v14];
    v16 = &a2[v14];
    v17 = type metadata accessor for PlatformItemList.Item();
    v18 = *(v17 - 1);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v81 = v18;
      v31 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v31;
      v15[32] = v16[32];
      *(v15 + 40) = *(v16 + 40);
      v15[56] = v16[56];
      v32 = *(v16 + 13);
      *(v15 + 12) = *(v16 + 12);
      *(v15 + 13) = v32;
      *(v15 + 14) = *(v16 + 14);
      *(v15 + 235) = *(v16 + 235);
      v33 = *(v16 + 9);
      *(v15 + 8) = *(v16 + 8);
      *(v15 + 9) = v33;
      v34 = *(v16 + 11);
      *(v15 + 10) = *(v16 + 10);
      *(v15 + 11) = v34;
      v35 = *(v16 + 5);
      *(v15 + 4) = *(v16 + 4);
      *(v15 + 5) = v35;
      v36 = *(v16 + 7);
      *(v15 + 6) = *(v16 + 6);
      *(v15 + 7) = v36;
      v37 = *(v16 + 17);
      *(v15 + 16) = *(v16 + 16);
      *(v15 + 17) = v37;
      v38 = *(v16 + 23);
      *(v15 + 22) = *(v16 + 22);
      *(v15 + 23) = v38;
      *(v15 + 24) = *(v16 + 24);
      *(v15 + 50) = *(v16 + 50);
      v39 = *(v16 + 19);
      *(v15 + 18) = *(v16 + 18);
      *(v15 + 19) = v39;
      v40 = *(v16 + 21);
      *(v15 + 20) = *(v16 + 20);
      *(v15 + 21) = v40;
      v41 = *(v16 + 456);
      *(v15 + 440) = *(v16 + 440);
      *(v15 + 456) = v41;
      v15[472] = v16[472];
      v42 = *(v16 + 424);
      *(v15 + 408) = *(v16 + 408);
      *(v15 + 424) = v42;
      *(v15 + 30) = *(v16 + 30);
      *(v15 + 489) = *(v16 + 489);
      *(v15 + 32) = *(v16 + 32);
      v15[528] = v16[528];
      memcpy(v15 + 536, v16 + 536, 0x130uLL);
      v43 = *(v16 + 856);
      *(v15 + 840) = *(v16 + 840);
      *(v15 + 856) = v43;
      *(v15 + 872) = *(v16 + 872);
      *(v15 + 111) = *(v16 + 111);
      *(v15 + 112) = *(v16 + 112);
      *(v15 + 904) = *(v16 + 904);
      *(v15 + 920) = *(v16 + 920);
      *(v15 + 117) = *(v16 + 117);
      *(v15 + 118) = *(v16 + 118);
      v15[952] = v16[952];
      *(v15 + 953) = *(v16 + 953);
      v44 = v17[28];
      __dst = &v15[v44];
      v45 = &v16[v44];
      v46 = type metadata accessor for CommandOperation();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v45, 1, v46))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v45, *(*(v48 - 8) + 64));
      }

      else
      {
        *__dst = *v45;
        v69 = *(v46 + 20);
        v77 = &__dst[v69];
        v79 = &v45[v69];
        v70 = *&v45[v69 + 16];
        *v77 = *&v45[v69];
        *(v77 + 1) = v70;
        v75 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v71 = type metadata accessor for UUID();
        (*(*(v71 - 8) + 32))(&v77[v75], &v79[v75], v71);
        *&__dst[*(v46 + 24)] = *&v45[*(v46 + 24)];
        (*(v47 + 56))();
      }

      v15[v17[29]] = v16[v17[29]];
      v15[v17[30]] = v16[v17[30]];
      v15[v17[31]] = v16[v17[31]];
      v15[v17[32]] = v16[v17[32]];
      v15[v17[33]] = v16[v17[33]];
      *&v15[v17[34]] = *&v16[v17[34]];
      (*(v81 + 56))(v15, 0, 1, v17);
    }

    swift_weakTakeInit();
    a1[v13[19]] = a2[v13[19]];
    a1[v13[20]] = a2[v13[20]];
    a1[v13[21]] = a2[v13[21]];
LABEL_23:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v29 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v29);
}

uint64_t ToolbarStorage.NavigationProperties.merge(_:)(uint64_t a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  if (*(v1 + 8) == 255)
  {
    v6 = *a1;
    *v1 = *a1;
    v7 = *(a1 + 8);
    *(v1 + 8) = v7;
    outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties?(v6, v7);
  }

  if (*(v1 + 24) == 254)
  {
    v8 = *(a1 + 16);
    *(v1 + 16) = v8;
    v9 = *(a1 + 24);
    *(v1 + 24) = v9;
    outlined copy of ToolbarStorage.NavigationProperties.Actions?(v8, v9);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectWeakLoadStrong();
    *(v1 + 40) = *(a1 + 40);
    swift_unknownObjectWeakAssign();
  }

  swift_unknownObjectRelease();
  if (!*(v1 + 48))
  {
    v10 = *(a1 + 48);
    *(v1 + 48) = v10;
    v11 = v10;
  }

  v12 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v13 = *(v12 + 32);
  outlined init with copy of ToolbarItemPlacement.Role?(v1 + v13, v5, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], _s7SwiftUI16CommandOperationVSgMaTm_2);
  v14 = type metadata accessor for PlatformItemList.Item();
  v15 = (*(*(v14 - 8) + 48))(v5, 1, v14);
  result = _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(v5, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  if (v15 == 1)
  {
    return outlined assign with copy of PlatformItemList.Item?(a1 + *(v12 + 32), v1 + v13);
  }

  return result;
}

uint64_t ToolbarStorage.GroupItem.init(spacer:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = (a1 + 8);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  v21 = v7;
  if (v6)
  {
    v8 = "@UIActivityViewController8@?0";
  }

  else
  {
    v8 = "swiftui-fixed-spacer";
  }

  v20 = v8 | 0x8000000000000000;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  outlined init with copy of ToolbarItemPlacement.Role(v4, a2 + 80);
  v9 = a1[49];
  v10 = *(a1 + 7);
  v11 = a1[64];
  v12 = a1[65];
  v13 = *(a1 + 9);
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.GroupItem.GroupSubItem>, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem, MEMORY[0x1E69E6F90]);
  v14 = *(type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18CD63400;
  outlined init with copy of ToolbarStorage.SpacerItem(a1, v16 + v15);
  swift_storeEnumTagMultiPayload();

  outlined destroy of ToolbarStorage.SpacerItem(a1);
  v17 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
  v18 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  result = (*(*(v18 - 8) + 56))(a2 + v17, 1, 1, v18);
  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 121) = v9;
  *(a2 + 128) = v10;
  *(a2 + 136) = v11;
  *(a2 + 137) = v12;
  *(a2 + 138) = 3;
  *(a2 + 144) = v13;
  *(a2 + 152) = v16;
  return result;
}

uint64_t specialized isPlacementValid #1 (_:) in ToolbarStorage.merge(_:options:)(uint64_t a1, char a2, char **a3)
{
  v6 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v9 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v12 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  outlined init with copy of ToolbarStorage.Entry(a1, v14, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v14, v8, type metadata accessor for ToolbarStorage.GroupItem);
      outlined init with copy of ToolbarItemPlacement.Role((v8 + 80), v37);
      v17 = type metadata accessor for ToolbarStorage.GroupItem;
      v18 = v8;
    }

    else
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v14, v11, type metadata accessor for ToolbarStorage.Item);
      outlined init with copy of ToolbarItemPlacement.Role((v11 + 112), v37);
      v17 = type metadata accessor for ToolbarStorage.Item;
      v18 = v11;
    }

    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v18, v17);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v19 = v14[3];
    *&v34[16] = v14[2];
    v35 = v19;
    v36 = v14[4];
    v20 = v14[1];
    v33 = *v14;
    *v34 = v20;
    outlined init with copy of ToolbarItemPlacement.Role(&v33 + 8, v37);
    outlined destroy of ToolbarStorage.SpacerItem(&v33);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      *v37 = 29;
      memset(&v37[8], 0, 32);
      v16 = 2;
    }

    else
    {
      memset(v37, 0, 40);
      v16 = -1;
    }

    v37[40] = v16;
  }

  if (v37[40] != 255)
  {
    v33 = *v37;
    *v34 = *&v37[16];
    *&v34[9] = *&v37[25];
    if (a2)
    {
      *v37 = 26;
      memset(&v37[8], 0, 32);
      v37[40] = 2;
      v22 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v33, v37);
      outlined destroy of ToolbarItemPlacement.Role(v37);
      if (v22)
      {
        goto LABEL_19;
      }

      *v37 = 25;
      memset(&v37[8], 0, 32);
      v37[40] = 2;
      v23 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v33, v37);
      outlined destroy of ToolbarItemPlacement.Role(v37);
      if ((a2 & 2) == 0)
      {
        goto LABEL_24;
      }

      if (v23)
      {
LABEL_19:
        v21 = 0;
        if ((a2 & 4) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }
    }

    else if ((a2 & 2) == 0)
    {
      v21 = 1;
      if ((a2 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    *v37 = 21;
    memset(&v37[8], 0, 32);
    v37[40] = 2;
    v23 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v33, v37);
    outlined destroy of ToolbarItemPlacement.Role(v37);
LABEL_24:
    v21 = v23 ^ 1;
    if ((a2 & 4) == 0)
    {
LABEL_36:
      outlined destroy of ToolbarItemPlacement.Role(&v33);
      return v21 & 1;
    }

LABEL_25:
    outlined init with copy of ToolbarItemPlacement.Role(&v33, v37);
    if (v37[40])
    {
      if (v37[40] == 1)
      {
        outlined destroy of ToolbarItemPlacement.Role(v37);
      }

      else if (*&v37[24] | *&v37[32] | *v37 | *&v37[16] | *&v37[8])
      {
        v24 = *&v37[24] | *&v37[32] | *&v37[16] | *&v37[8];
        if (((*v37 - 1) > 0x12 || v24) && (*v37 & 0xFFFFFFFFFFFFFFFELL) == 0x14 && !v24)
        {
          goto LABEL_36;
        }
      }
    }

    outlined init with copy of ToolbarItemPlacement.Role(&v33, v37);
    swift_beginAccess();
    v25 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      *a3 = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
    }

    *(v25 + 2) = v28 + 1;
    v29 = &v25[48 * v28];
    v30 = *v37;
    v31 = *&v37[16];
    *(v29 + 57) = *&v37[25];
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    *a3 = v25;
    swift_endAccess();
    goto LABEL_36;
  }

  outlined destroy of ToolbarItemPlacement.Role?(v37, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
  v21 = 0;
  return v21 & 1;
}

uint64_t closure #1 in ToolbarStorage.merge(_:options:)(uint64_t a1, uint64_t a2)
{
  ToolbarStorage.Entry.placement.getter(v16);
  outlined init with copy of ToolbarItemPlacement.Role(a2, v15);
  v3 = MEMORY[0x1E69E6720];
  outlined init with copy of ToolbarItemPlacement.Role?(v16, v12, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
  outlined init with copy of ToolbarItemPlacement.Role?(v15, &v13, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v3, _s7SwiftUI7BindingVySiGMaTm_0);
  if (v12[40] == 255)
  {
    v6 = MEMORY[0x1E69E6720];
    outlined destroy of ToolbarItemPlacement.Role?(v15, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
    outlined destroy of ToolbarItemPlacement.Role?(v16, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v6);
    if (v14[24] == 255)
    {
      outlined destroy of ToolbarItemPlacement.Role?(v12, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
      v4 = 1;
      return v4 & 1;
    }

LABEL_7:
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v12, type metadata accessor for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?));
    v4 = 0;
    return v4 & 1;
  }

  outlined init with copy of ToolbarItemPlacement.Role?(v12, v11, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
  if (v14[24] == 255)
  {
    v7 = MEMORY[0x1E69E6720];
    outlined destroy of ToolbarItemPlacement.Role?(v15, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
    outlined destroy of ToolbarItemPlacement.Role?(v16, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v7);
    outlined destroy of ToolbarItemPlacement.Role(v11);
    goto LABEL_7;
  }

  v9 = v13;
  v10[0] = *v14;
  *(v10 + 9) = *&v14[9];
  v4 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v11, &v9);
  outlined destroy of ToolbarItemPlacement.Role(&v9);
  v5 = MEMORY[0x1E69E6720];
  outlined destroy of ToolbarItemPlacement.Role?(v15, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
  outlined destroy of ToolbarItemPlacement.Role?(v16, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v5);
  outlined destroy of ToolbarItemPlacement.Role(v11);
  outlined destroy of ToolbarItemPlacement.Role?(v12, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v5);
  return v4 & 1;
}

uint64_t ToolbarStorage.Entry.description.getter()
{
  v1 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry(v0, v9, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v9, v3, type metadata accessor for ToolbarStorage.GroupItem);
      if (v3[1])
      {
        v11 = *v3;
      }

      else
      {
        v11 = 0x20676E697373696DLL;
      }

      v14 = type metadata accessor for ToolbarStorage.GroupItem;
      v15 = v3;
    }

    else
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v9, v6, type metadata accessor for ToolbarStorage.Item);
      if (*(v6 + 5))
      {
        v11 = *(v6 + 4);
      }

      else
      {
        v11 = 0x20676E697373696DLL;
      }

      v14 = type metadata accessor for ToolbarStorage.Item;
      v15 = v6;
    }

    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v15, v14);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v12 = v9[1];
    v17[0] = *v9;
    v17[1] = v12;
    v13 = v9[3];
    v17[2] = v9[2];
    v17[3] = v13;
    v17[4] = v9[4];
    if (LOBYTE(v17[0]))
    {
      v11 = 0xD000000000000017;
    }

    else
    {
      v11 = 0xD000000000000014;
    }

    outlined destroy of ToolbarStorage.SpacerItem(v17);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x2D69757466697773;
  }

  else
  {
    return 0xD000000000000010;
  }

  return v11;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolbarStorage.Entry.Kind()
{
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ToolbarStorage.Entry(v3, v2, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v2, type metadata accessor for ToolbarStorage.Entry.Kind);
      return 0x70756F7267;
    }

    else
    {
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v2, type metadata accessor for ToolbarStorage.Entry.Kind);
      return 1835365481;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v2, type metadata accessor for ToolbarStorage.Entry.Kind);
    return 0x726563617073;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x686372616573;
  }

  else
  {
    return 0x746E656D75636F64;
  }
}

Swift::Int ToolbarStorage.Entry.ID.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  outlined init with copy of ToolbarItemPlacement.Role?(v0 + 40, &v4, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
  if (v5[24] == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = v4;
    v3[0] = *v5;
    *(v3 + 9) = *&v5[9];
    Hasher._combine(_:)(1u);
    ToolbarItemPlacement.Role.hash(into:)();
    outlined destroy of ToolbarItemPlacement.Role(&v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ToolbarStorage.Entry.ID()
{
  AnyHashable.hash(into:)();
  outlined init with copy of ToolbarItemPlacement.Role?(v0 + 40, &v3, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
  if (v4[24] == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = v3;
    v2[0] = *v4;
    *(v2 + 9) = *&v4[9];
    Hasher._combine(_:)(1u);
    ToolbarItemPlacement.Role.hash(into:)();
    outlined destroy of ToolbarItemPlacement.Role(&v1);
  }
}

uint64_t ToolbarStorage.GroupItem.GroupSubItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry(v2, v9, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v9[3];
    v22[2] = v9[2];
    v22[3] = v10;
    v22[4] = v9[4];
    v11 = v9[1];
    v22[0] = *v9;
    v22[1] = v11;
    _ViewList_ID.init(implicitID:)();
    v12 = v20;
    v13 = v21;
    if (LOBYTE(v22[0]))
    {
      v14 = 0xD000000000000017;
    }

    else
    {
      v14 = 0xD000000000000014;
    }

    if (LOBYTE(v22[0]))
    {
      v15 = "swiftui-fixed-spacer";
    }

    else
    {
      v15 = "@UIActivityViewController8@?0";
    }

    v16 = v15 | 0x8000000000000000;
    result = outlined destroy of ToolbarStorage.SpacerItem(v22);
    v18 = 0uLL;
  }

  else
  {
    _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v9, v6, type metadata accessor for ToolbarStorage.Item);
    v12 = *v6;
    v13 = *(v6 + 1);
    v19 = *(v6 + 1);
    v14 = *(v6 + 4);
    v16 = *(v6 + 5);

    result = outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v6, type metadata accessor for ToolbarStorage.Item);
    v18 = v19;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v18;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  return result;
}

Swift::Int ToolbarStorage.ID.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  Hasher.init(_seed:)();
  _ViewList_ID.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance SearchContentKey(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = MEMORY[0x1E69E6720];
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ToolbarItemPlacement.Role?(a1, &v11 - v6, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v4, _s7SwiftUI16CommandOperationVSgMaTm_2);
  v8 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(v7, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem);
  }

  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(a1, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem);
  v9 = _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(v7, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem);
  return a2(v9);
}

uint64_t protocol witness for Identifiable.id.getter in conformance ToolbarStorage.Item@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
}

uint64_t outlined assign with copy of PlatformItemList.Item?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x18D00E9C0](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x18D00E9C0](v4, v6);
    v15 = MEMORY[0x18D00E9C0](v10, v6);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for ToolbarStorage.Entry(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v12;
    v37 = v9;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        outlined init with copy of ToolbarStorage.Entry(v23 + v24 * v19, v39, type metadata accessor for ToolbarStorage.Entry);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v25, type metadata accessor for ToolbarStorage.Entry);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = outlined init with copy of ToolbarStorage.Entry(v23 + v24 * v43, v36, type metadata accessor for ToolbarStorage.Entry);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            outlined init with copy of ToolbarStorage.Entry(v23 + v42, v37, type metadata accessor for ToolbarStorage.Entry);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = outlined assign with take of ToolbarStorage.GroupItem.GroupSubItem(v37, v16 + v41 + v31, type metadata accessor for ToolbarStorage.Entry);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = outlined assign with take of ToolbarStorage.GroupItem.GroupSubItem(v36, v33 + v32, type metadata accessor for ToolbarStorage.Entry);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void type metadata accessor for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?)()
{
  if (!lazy cache variable for type metadata for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?))
  {
    _s7SwiftUI7BindingVySiGMaTm_0(255, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?));
    }
  }
}

uint64_t outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      if (*(a2 + 48) == 1)
      {
        v6 = *(a2 + 2);
        *(a1 + 32) = v6;
        (**(v6 - 8))(a1 + 8, (a2 + 1));
        *(a1 + 48) = 1;
      }

      else
      {
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 33) = *(a2 + 33);
      }

      *(a1 + 49) = *(a2 + 49);
      *(a1 + 56) = a2[7];
      *(a1 + 64) = *(a2 + 32);
      *(a1 + 72) = a2[9];

      goto LABEL_72;
    }

    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 1);
    v8 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v8;
    v9 = a2[7];
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v9;
    v10 = a2[11];

    if (v10)
    {
      v11 = a2[12];
      *(a1 + 88) = v10;
      *(a1 + 96) = v11;
      (**(v10 - 8))(a1 + 64, (a2 + 8), v10);
      *(a1 + 104) = a2[13];
    }

    else
    {
      v12 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v12;
      *(a1 + 96) = *(a2 + 6);
    }

    if (*(a2 + 152) == 1)
    {
      v13 = *(a2 + 17);
      *(a1 + 136) = v13;
      (**(v13 - 8))(a1 + 112, (a2 + 14));
      *(a1 + 152) = 1;
    }

    else
    {
      v14 = *(a2 + 8);
      *(a1 + 112) = *(a2 + 7);
      *(a1 + 128) = v14;
      *(a1 + 137) = *(a2 + 137);
    }

    *(a1 + 153) = *(a2 + 153);
    *(a1 + 160) = a2[20];
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 176) = a2[22];
    v15 = *(a2 + 13);
    *(a1 + 208) = v15;
    v16 = v15;
    v17 = **(v15 - 8);

    v17(a1 + 184, a2 + 23, v16);
    v18 = a2[29];
    *(a1 + 224) = a2[28];
    *(a1 + 232) = v18;
    *(a1 + 240) = a2[30];
    *(a1 + 248) = a2[31];
    *(a1 + 256) = *(a2 + 16);
    v19 = a2[34];
    v20 = a2[35];
    *(a1 + 272) = v19;
    *(a1 + 280) = v20;
    v133 = type metadata accessor for ToolbarStorage.Item(0);
    v21 = v133[17];
    v134 = (a1 + v21);
    v22 = (a2 + v21);
    v23 = type metadata accessor for PlatformItemList.Item();
    v130 = *(v23 - 8);
    v131 = *(v130 + 48);

    v24 = v19;
    v25 = v20;
    if (v131(v22, 1, v23))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v134, v22, *(*(v26 - 8) + 64));
LABEL_71:
      swift_weakCopyInit();
      *(a1 + v133[19]) = *(a2 + v133[19]);
      *(a1 + v133[20]) = *(a2 + v133[20]);
      *(a1 + v133[21]) = *(a2 + v133[21]);
LABEL_72:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v129 = v23;
    v27 = *v22;
    v28 = v22[1];
    v29 = v134;
    *v134 = *v22;
    v134[1] = v28;
    v30 = v22[3];
    v134[2] = v22[2];
    v134[3] = v30;
    *(v134 + 32) = *(v22 + 32);
    v31 = v22[6];
    v134[5] = v22[5];
    v134[6] = v31;
    *(v134 + 56) = *(v22 + 56);
    v32 = v22[24];
    v33 = v27;
    v34 = v28;

    if (v32 >> 1 == 4294967294)
    {
      v35 = *(v22 + 13);
      *(v134 + 12) = *(v22 + 12);
      *(v134 + 13) = v35;
      *(v134 + 14) = *(v22 + 14);
      *(v134 + 235) = *(v22 + 235);
      v36 = *(v22 + 9);
      *(v134 + 8) = *(v22 + 8);
      *(v134 + 9) = v36;
      v37 = *(v22 + 11);
      *(v134 + 10) = *(v22 + 10);
      *(v134 + 11) = v37;
      v38 = *(v22 + 5);
      *(v134 + 4) = *(v22 + 4);
      *(v134 + 5) = v38;
      v39 = *(v22 + 7);
      *(v134 + 6) = *(v22 + 6);
      *(v134 + 7) = v39;
      v40 = v22[33];
      if (v40)
      {
LABEL_18:
        v134[32] = v22[32];
        v134[33] = v40;
        v41 = v22[34];

        if (v41 >= 2)
        {
          v42 = v41;
        }

        v134[34] = v41;
        *(v134 + 70) = *(v22 + 70);
        *(v134 + 284) = *(v22 + 284);
        *(v134 + 285) = *(v22 + 285);
        v43 = v22[37];
        v134[36] = v22[36];
        v134[37] = v43;

LABEL_29:
        v54 = v22[42];
        v132 = v22;
        if (v54 >> 2 == 0xFFFFFFFF)
        {
          v55 = *(v22 + 24);
          *(v134 + 23) = *(v22 + 23);
          *(v134 + 24) = v55;
          v134[50] = v22[50];
          v56 = *(v22 + 20);
          *(v134 + 19) = *(v22 + 19);
          *(v134 + 20) = v56;
          v57 = *(v22 + 22);
          *(v134 + 21) = *(v22 + 21);
          *(v134 + 22) = v57;
        }

        else
        {
          v58 = v22[38];
          v59 = v22[39];
          v61 = v22[40];
          v60 = v22[41];
          v62 = v22[43];
          v63 = v22[44];
          v64 = v22[45];
          v121 = v132[46];
          v122 = v132[47];
          v123 = v132[48];
          v125 = v132[49];
          __dsta = v132[50];
          outlined copy of PlatformItemList.Item.SystemItem(v58, v59, v61, v60, v54, v62, v63, v64, v121, v122, v123, v125, __dsta);
          v134[38] = v58;
          v134[39] = v59;
          v134[40] = v61;
          v134[41] = v60;
          v29 = v134;
          v134[42] = v54;
          v134[43] = v62;
          v134[44] = v63;
          v134[45] = v64;
          v134[46] = v121;
          v134[47] = v122;
          v22 = v132;
          v134[48] = v123;
          v134[49] = v125;
          v134[50] = __dsta;
        }

        v65 = v22[52];
        if (v65 == 1)
        {
          v66 = *(v22 + 57);
          *(v29 + 55) = *(v22 + 55);
          *(v29 + 57) = v66;
          *(v29 + 472) = *(v22 + 472);
          v67 = *(v22 + 53);
          *(v29 + 51) = *(v22 + 51);
          *(v29 + 53) = v67;
          goto LABEL_42;
        }

        *(v29 + 102) = *(v22 + 102);
        *(v29 + 412) = *(v22 + 412);
        if (v65)
        {
          v68 = v22[53];
          v29[52] = v65;
          v29[53] = v68;

          v69 = v22[54];
          if (v69)
          {
            goto LABEL_36;
          }
        }

        else
        {
          *(v29 + 26) = *(v22 + 26);
          v69 = v22[54];
          if (v69)
          {
LABEL_36:
            v70 = v22[55];
            v29[54] = v69;
            v29[55] = v70;

            v71 = v22[56];
            if (v71)
            {
LABEL_37:
              v72 = v22[57];
              v29[56] = v71;
              v29[57] = v72;

LABEL_41:
              v29[58] = v22[58];
              *(v29 + 472) = *(v22 + 472);
LABEL_42:
              v73 = v22[61];
              v29[60] = v22[60];
              v29[61] = v73;
              v29[62] = v22[62];
              *(v29 + 504) = *(v22 + 504);
              v74 = v22[64];

              if (v74)
              {
                v75 = v22[65];
                v29[64] = v74;
                v29[65] = v75;
              }

              else
              {
                *(v29 + 32) = *(v22 + 32);
              }

              *(v29 + 528) = *(v22 + 528);
              if (!v22[102])
              {
                memcpy(v29 + 67, v22 + 67, 0x130uLL);
                goto LABEL_57;
              }

              v29[67] = v22[67];
              v29[68] = v22[68];
              *(v29 + 552) = *(v22 + 552);
              v29[70] = v22[70];
              *(v29 + 568) = *(v22 + 568);
              *(v29 + 36) = *(v22 + 36);
              *(v29 + 592) = *(v22 + 592);
              v76 = v29 + 75;
              v77 = v22 + 75;
              v78 = v22[78];

              if (v78)
              {
                if (v78 == 1)
                {
                  v79 = *(v22 + 77);
                  *v76 = *v77;
                  *(v29 + 77) = v79;
                  *(v29 + 79) = *(v22 + 79);
LABEL_53:
                  v29[81] = v22[81];
                  *(v29 + 656) = *(v22 + 656);
                  v81 = v29 + 83;
                  v82 = v22 + 83;
                  v83 = v22[97];
                  if (v83 == 1)
                  {
                    v84 = *(v22 + 97);
                    *(v29 + 95) = *(v22 + 95);
                    *(v29 + 97) = v84;
                    *(v29 + 99) = *(v22 + 99);
                    *(v29 + 808) = *(v22 + 808);
                    v85 = *(v22 + 89);
                    *(v29 + 87) = *(v22 + 87);
                    *(v29 + 89) = v85;
                    v86 = *(v22 + 93);
                    *(v29 + 91) = *(v22 + 91);
                    *(v29 + 93) = v86;
                    v87 = *(v22 + 85);
                    *v81 = *v82;
                    *(v29 + 85) = v87;
                  }

                  else
                  {
                    *v81 = *v82;
                    *(v29 + 672) = *(v22 + 672);
                    v29[85] = v22[85];
                    *(v29 + 688) = *(v22 + 688);
                    *(v29 + 689) = *(v22 + 689);
                    *(v29 + 691) = *(v22 + 691);
                    *(v29 + 692) = *(v22 + 692);
                    v29[87] = v22[87];
                    v88 = *(v22 + 45);
                    *(v29 + 44) = *(v22 + 44);
                    *(v29 + 45) = v88;
                    v29[92] = v22[92];
                    *(v29 + 372) = *(v22 + 372);
                    *(v29 + 47) = *(v22 + 47);
                    *(v29 + 768) = *(v22 + 768);
                    v29[97] = v83;
                    *(v29 + 49) = *(v22 + 49);
                    v29[100] = v22[100];
                    *(v29 + 808) = *(v22 + 808);
                  }

                  v29[102] = v22[102];
                  v29[103] = v22[103];
                  v29[104] = v22[104];

LABEL_57:
                  v89 = v29 + 105;
                  v90 = v22 + 105;
                  v91 = v22[108];
                  if (v91)
                  {
                    if (v91 == 1)
                    {
                      v92 = *(v22 + 107);
                      *v89 = *v90;
                      *(v29 + 107) = v92;
                      *(v29 + 109) = *(v22 + 109);
                      v29[111] = v22[111];
LABEL_64:
                      v96 = v22;
                      v97 = v22[112];
                      v29[112] = v97;
                      v29[113] = v96[113];
                      v29[114] = v96[114];
                      v29[115] = v96[115];
                      v29[116] = v96[116];
                      v29[117] = v96[117];
                      v29[118] = v96[118];
                      *(v29 + 476) = *(v96 + 476);
                      *(v29 + 954) = *(v96 + 954);
                      v98 = v129[28];
                      __dst = v29 + v98;
                      v99 = v96 + v98;
                      v100 = type metadata accessor for CommandOperation();
                      v124 = *(v100 - 8);
                      v126 = *(v124 + 48);
                      v101 = v97;

                      if (v126(v99, 1, v100))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v99, *(*(v102 - 8) + 64));
                        v103 = v134;
                        v104 = v129;
                        v105 = v130;
                      }

                      else
                      {
                        *__dst = *v99;
                        v106 = *(v100 + 20);
                        v107 = &__dst[v106];
                        v108 = &v99[v106];
                        v109 = *&v99[v106];
                        v110 = *&v99[v106 + 8];
                        v111 = v99[v106 + 16];
                        outlined copy of Text.Storage(v109, *(v108 + 1), v108[16]);
                        *v107 = v109;
                        *(v107 + 1) = v110;
                        v107[16] = v111;
                        *(v107 + 3) = *(v108 + 3);
                        v112 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v113 = type metadata accessor for UUID();
                        v114 = *(*(v113 - 8) + 16);

                        v114(&v107[v112], &v108[v112], v113);
                        v115 = *(v100 + 24);
                        v116 = &__dst[v115];
                        v117 = &v99[v115];
                        if (*v117)
                        {
                          v118 = v117[1];
                          *v116 = *v117;
                          v116[1] = v118;
                        }

                        else
                        {
                          *v116 = *v117;
                        }

                        v103 = v134;
                        v104 = v129;
                        v105 = v130;
                        (*(v124 + 56))(__dst, 0, 1, v100);
                      }

                      *(v103 + v104[29]) = *(v132 + v104[29]);
                      *(v103 + v104[30]) = *(v132 + v104[30]);
                      *(v103 + v104[31]) = *(v132 + v104[31]);
                      *(v103 + v104[32]) = *(v132 + v104[32]);
                      *(v103 + v104[33]) = *(v132 + v104[33]);
                      *(v103 + v104[34]) = *(v132 + v104[34]);
                      v119 = *(v105 + 56);

                      v119(v103, 0, 1, v104);
                      goto LABEL_71;
                    }

                    v29[108] = v91;
                    v29[109] = v22[109];
                    (**(v91 - 1))(v89, v90);
                    v94 = v22[110];
                    if (!v94)
                    {
LABEL_63:
                      *(v29 + 55) = *(v22 + 55);
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    v93 = *(v22 + 107);
                    *v89 = *v90;
                    *(v29 + 107) = v93;
                    v29[109] = v22[109];
                    v94 = v22[110];
                    if (!v94)
                    {
                      goto LABEL_63;
                    }
                  }

                  v95 = v22[111];
                  v29[110] = v94;
                  v29[111] = v95;

                  goto LABEL_64;
                }

                v29[78] = v78;
                v29[79] = v22[79];
                (**(v78 - 1))((v29 + 75), (v22 + 75), v78);
              }

              else
              {
                v80 = *(v22 + 77);
                *v76 = *v77;
                *(v29 + 77) = v80;
                v29[79] = v22[79];
              }

              v29[80] = v22[80];

              goto LABEL_53;
            }

LABEL_40:
            *(v29 + 28) = *(v22 + 28);
            goto LABEL_41;
          }
        }

        *(v29 + 27) = *(v22 + 27);
        v71 = v22[56];
        if (v71)
        {
          goto LABEL_37;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v44 = *(v22 + 72);
      if (v44 == 255)
      {
        v134[8] = v22[8];
        *(v134 + 72) = *(v22 + 72);
      }

      else
      {
        v45 = v22[8];
        outlined copy of GraphicsImage.Contents(v45, *(v22 + 72));
        v134[8] = v45;
        *(v134 + 72) = v44;
        v32 = v22[24];
      }

      v134[10] = v22[10];
      *(v134 + 11) = *(v22 + 11);
      *(v134 + 104) = *(v22 + 104);
      *(v134 + 108) = *(v22 + 108);
      *(v134 + 121) = *(v22 + 121);
      *(v134 + 17) = *(v22 + 17);
      *(v134 + 19) = *(v22 + 19);
      *(v134 + 84) = *(v22 + 84);
      *(v134 + 170) = *(v22 + 170);
      *(v134 + 171) = *(v22 + 171);
      if (v32 >> 1 == 0xFFFFFFFF)
      {
        v46 = *(v22 + 12);
        *(v134 + 11) = *(v22 + 11);
        *(v134 + 12) = v46;
      }

      else
      {
        v47 = v22[22];
        v48 = v22[23];
        v49 = v22[25];
        outlined copy of AccessibilityImageLabel(v47, v48, v32);
        v134[22] = v47;
        v134[23] = v48;
        v134[24] = v32;
        v134[25] = v49;
      }

      v50 = v22[27];
      v134[26] = v22[26];
      v134[27] = v50;
      *(v134 + 112) = *(v22 + 112);
      *(v134 + 57) = *(v22 + 57);
      *(v134 + 232) = *(v22 + 232);
      v51 = v22[30];
      v134[30] = v51;
      *(v134 + 124) = *(v22 + 124);
      *(v134 + 250) = *(v22 + 250);
      swift_unknownObjectRetain();

      v52 = v51;
      v40 = v22[33];
      if (v40)
      {
        goto LABEL_18;
      }
    }

    v53 = *(v22 + 17);
    *(v134 + 16) = *(v22 + 16);
    *(v134 + 17) = v53;
    *(v134 + 18) = *(v22 + 18);
    goto LABEL_29;
  }

  v7 = *a2;
  *a1 = *a2;
  a1 = v7 + ((v5 + 16) & ~v5);

  return a1;
}

uint64_t assignWithCopy for ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      v4 = (a1 + 8);
      if (*(a2 + 48) == 1)
      {
        v5 = *(a2 + 32);
        *(a1 + 32) = v5;
        *(a1 + 40) = *(a2 + 40);
        (**(v5 - 8))(v4, a2 + 8);
        *(a1 + 48) = 1;
      }

      else
      {
        v7 = *(a2 + 8);
        v8 = *(a2 + 24);
        *(a1 + 33) = *(a2 + 33);
        *v4 = v7;
        *(a1 + 24) = v8;
      }

      *(a1 + 49) = *(a2 + 49);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 65) = *(a2 + 65);
      *(a1 + 72) = *(a2 + 72);

      goto LABEL_71;
    }

    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    v6 = *(a2 + 88);

    if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64, v6);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      v9 = *(a2 + 64);
      v10 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v10;
      *(a1 + 64) = v9;
    }

    if (*(a2 + 152) == 1)
    {
      v11 = *(a2 + 136);
      *(a1 + 136) = v11;
      *(a1 + 144) = *(a2 + 144);
      (**(v11 - 8))(a1 + 112, a2 + 112);
      *(a1 + 152) = 1;
    }

    else
    {
      v12 = *(a2 + 112);
      v13 = *(a2 + 128);
      *(a1 + 137) = *(a2 + 137);
      *(a1 + 112) = v12;
      *(a1 + 128) = v13;
    }

    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 176) = *(a2 + 176);
    v14 = *(a2 + 208);
    *(a1 + 208) = v14;
    *(a1 + 216) = *(a2 + 216);
    v15 = **(v14 - 8);

    v15(a1 + 184, a2 + 184, v14);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 244) = *(a2 + 244);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    v16 = *(a2 + 272);
    *(a1 + 272) = v16;
    v17 = *(a2 + 280);
    *(a1 + 280) = v17;
    v149 = type metadata accessor for ToolbarStorage.Item(0);
    v18 = v149[17];
    v150 = (a1 + v18);
    v19 = a2 + v18;
    v20 = type metadata accessor for PlatformItemList.Item();
    v146 = *(v20 - 8);
    v147 = *(v146 + 48);

    v21 = v16;
    v22 = v17;
    if (v147(v19, 1, v20))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v150, v19, *(*(v23 - 8) + 64));
LABEL_70:
      swift_weakCopyInit();
      *(a1 + v149[19]) = *(a2 + v149[19]);
      *(a1 + v149[20]) = *(a2 + v149[20]);
      *(a1 + v149[21]) = *(a2 + v149[21]);
LABEL_71:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v148 = v20;
    v24 = *v19;
    v25 = v150;
    *v150 = *v19;
    v26 = *(v19 + 8);
    v150[1] = v26;
    v150[2] = *(v19 + 16);
    v150[3] = *(v19 + 24);
    *(v150 + 32) = *(v19 + 32);
    v150[5] = *(v19 + 40);
    v150[6] = *(v19 + 48);
    *(v150 + 56) = *(v19 + 56);
    v27 = *(v19 + 192);
    v28 = v24;
    v29 = v26;

    if (v27 >> 1 == 4294967294)
    {
      v30 = *(v19 + 64);
      v31 = *(v19 + 80);
      v32 = *(v19 + 112);
      *(v150 + 6) = *(v19 + 96);
      *(v150 + 7) = v32;
      *(v150 + 4) = v30;
      *(v150 + 5) = v31;
      v33 = *(v19 + 128);
      v34 = *(v19 + 144);
      v35 = *(v19 + 176);
      *(v150 + 10) = *(v19 + 160);
      *(v150 + 11) = v35;
      *(v150 + 8) = v33;
      *(v150 + 9) = v34;
      v36 = *(v19 + 192);
      v37 = *(v19 + 208);
      v38 = *(v19 + 224);
      *(v150 + 235) = *(v19 + 235);
      *(v150 + 13) = v37;
      *(v150 + 14) = v38;
      *(v150 + 12) = v36;
      if (*(v19 + 264))
      {
LABEL_17:
        v150[32] = *(v19 + 256);
        v150[33] = *(v19 + 264);
        v39 = *(v19 + 272);

        if (v39 >= 2)
        {
          v40 = v39;
        }

        v150[34] = v39;
        v41 = *(v19 + 280);
        *(v150 + 284) = *(v19 + 284);
        *(v150 + 70) = v41;
        *(v150 + 285) = *(v19 + 285);
        *(v150 + 286) = *(v19 + 286);
        v150[36] = *(v19 + 288);
        v150[37] = *(v19 + 296);

LABEL_28:
        v58 = *(v19 + 336);
        if (v58 >> 2 == 0xFFFFFFFF)
        {
          v59 = *(v19 + 304);
          v60 = *(v19 + 336);
          *(v150 + 20) = *(v19 + 320);
          *(v150 + 21) = v60;
          *(v150 + 19) = v59;
          v61 = *(v19 + 352);
          v62 = *(v19 + 368);
          v63 = *(v19 + 384);
          v150[50] = *(v19 + 400);
          *(v150 + 23) = v62;
          *(v150 + 24) = v63;
          *(v150 + 22) = v61;
        }

        else
        {
          v64 = *(v19 + 304);
          v65 = *(v19 + 312);
          v66 = *(v19 + 328);
          v67 = *(v19 + 344);
          v68 = *(v19 + 352);
          v69 = *(v19 + 360);
          v134 = *(v19 + 320);
          v135 = *(v19 + 368);
          v137 = *(v19 + 376);
          v139 = *(v19 + 384);
          __dsta = *(v19 + 392);
          v144 = *(v19 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v64, v65, v134, v66, v58, v67, v68, v69, v135, v137, v139, __dsta, v144);
          v150[38] = v64;
          v150[39] = v65;
          v150[40] = v134;
          v150[41] = v66;
          v150[42] = v58;
          v150[43] = v67;
          v25 = v150;
          v150[44] = v68;
          v150[45] = v69;
          v150[46] = v135;
          v150[47] = v137;
          v150[48] = v139;
          v150[49] = __dsta;
          v150[50] = v144;
        }

        if (*(v19 + 416) == 1)
        {
          *(v25 + 51) = *(v19 + 408);
          v70 = *(v19 + 424);
          v71 = *(v19 + 440);
          v72 = *(v19 + 456);
          *(v25 + 472) = *(v19 + 472);
          *(v25 + 55) = v71;
          *(v25 + 57) = v72;
          *(v25 + 53) = v70;
          goto LABEL_41;
        }

        *(v25 + 408) = *(v19 + 408);
        *(v25 + 409) = *(v19 + 409);
        *(v25 + 410) = *(v19 + 410);
        *(v25 + 411) = *(v19 + 411);
        *(v25 + 412) = *(v19 + 412);
        v73 = *(v19 + 416);
        if (v73)
        {
          v74 = *(v19 + 424);
          v25[52] = v73;
          v25[53] = v74;

          v75 = *(v19 + 432);
          if (v75)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *(v25 + 26) = *(v19 + 416);
          v75 = *(v19 + 432);
          if (v75)
          {
LABEL_35:
            v76 = *(v19 + 440);
            v25[54] = v75;
            v25[55] = v76;

            v77 = *(v19 + 448);
            if (v77)
            {
LABEL_36:
              v78 = *(v19 + 456);
              v25[56] = v77;
              v25[57] = v78;

LABEL_40:
              v25[58] = *(v19 + 464);
              *(v25 + 472) = *(v19 + 472);
LABEL_41:
              v25[60] = *(v19 + 480);
              v25[61] = *(v19 + 488);
              v25[62] = *(v19 + 496);
              *(v25 + 504) = *(v19 + 504);
              v79 = *(v19 + 512);

              if (v79)
              {
                v80 = *(v19 + 520);
                v25[64] = v79;
                v25[65] = v80;
              }

              else
              {
                *(v25 + 32) = *(v19 + 512);
              }

              *(v25 + 528) = *(v19 + 528);
              if (!*(v19 + 816))
              {
                memcpy(v25 + 67, (v19 + 536), 0x130uLL);
                goto LABEL_56;
              }

              v25[67] = *(v19 + 536);
              v25[68] = *(v19 + 544);
              *(v25 + 552) = *(v19 + 552);
              v25[70] = *(v19 + 560);
              *(v25 + 568) = *(v19 + 568);
              v81 = *(v19 + 576);
              *(v25 + 592) = *(v19 + 592);
              *(v25 + 36) = v81;
              v82 = v25 + 75;
              v83 = (v19 + 600);
              v84 = *(v19 + 624);

              if (v84)
              {
                if (v84 == 1)
                {
                  v85 = *v83;
                  v86 = *(v19 + 632);
                  *(v25 + 77) = *(v19 + 616);
                  *(v25 + 79) = v86;
                  *v82 = v85;
LABEL_52:
                  v89 = *(v19 + 648);
                  *(v25 + 656) = *(v19 + 656);
                  v25[81] = v89;
                  v90 = v25 + 83;
                  v91 = (v19 + 664);
                  if (*(v19 + 776) == 1)
                  {
                    v92 = *(v19 + 680);
                    *v90 = *v91;
                    *(v25 + 85) = v92;
                    v93 = *(v19 + 696);
                    v94 = *(v19 + 712);
                    v95 = *(v19 + 744);
                    *(v25 + 91) = *(v19 + 728);
                    *(v25 + 93) = v95;
                    *(v25 + 87) = v93;
                    *(v25 + 89) = v94;
                    v96 = *(v19 + 760);
                    v97 = *(v19 + 776);
                    v98 = *(v19 + 792);
                    *(v25 + 808) = *(v19 + 808);
                    *(v25 + 97) = v97;
                    *(v25 + 99) = v98;
                    *(v25 + 95) = v96;
                  }

                  else
                  {
                    v99 = *v91;
                    *(v25 + 672) = *(v19 + 672);
                    *v90 = v99;
                    v100 = *(v19 + 680);
                    *(v25 + 688) = *(v19 + 688);
                    v25[85] = v100;
                    *(v25 + 689) = *(v19 + 689);
                    *(v25 + 690) = *(v19 + 690);
                    *(v25 + 691) = *(v19 + 691);
                    *(v25 + 692) = *(v19 + 692);
                    v25[87] = *(v19 + 696);
                    v25[88] = *(v19 + 704);
                    v25[89] = *(v19 + 712);
                    v25[90] = *(v19 + 720);
                    v25[91] = *(v19 + 728);
                    v25[92] = *(v19 + 736);
                    *(v25 + 744) = *(v19 + 744);
                    *(v25 + 745) = *(v19 + 745);
                    v25[94] = *(v19 + 752);
                    v25[95] = *(v19 + 760);
                    *(v25 + 768) = *(v19 + 768);
                    v25[97] = *(v19 + 776);
                    v101 = *(v19 + 784);
                    v25[100] = *(v19 + 800);
                    *(v25 + 49) = v101;
                    *(v25 + 808) = *(v19 + 808);
                  }

                  v25[102] = *(v19 + 816);
                  v25[103] = *(v19 + 824);
                  v25[104] = *(v19 + 832);

LABEL_56:
                  v102 = v25 + 105;
                  v103 = (v19 + 840);
                  v104 = *(v19 + 864);
                  if (v104)
                  {
                    if (v104 == 1)
                    {
                      v105 = *v103;
                      v106 = *(v19 + 856);
                      v107 = *(v19 + 872);
                      v25[111] = *(v19 + 888);
                      *(v25 + 107) = v106;
                      *(v25 + 109) = v107;
                      *v102 = v105;
LABEL_63:
                      v112 = *(v19 + 896);
                      v25[112] = v112;
                      v25[113] = *(v19 + 904);
                      v25[114] = *(v19 + 912);
                      v25[115] = *(v19 + 920);
                      v25[116] = *(v19 + 928);
                      v25[117] = *(v19 + 936);
                      v25[118] = *(v19 + 944);
                      *(v25 + 952) = *(v19 + 952);
                      *(v25 + 953) = *(v19 + 953);
                      *(v25 + 954) = *(v19 + 954);
                      v113 = v148[28];
                      __dst = v25 + v113;
                      v145 = (v19 + v113);
                      v114 = type metadata accessor for CommandOperation();
                      v138 = *(v114 - 8);
                      v140 = *(v138 + 48);
                      v115 = v112;

                      if (v140(v145, 1, v114))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v145, *(*(v116 - 8) + 64));
                        v117 = v150;
                        v119 = v146;
                        v118 = v148;
                      }

                      else
                      {
                        *__dst = *v145;
                        v120 = *(v114 + 20);
                        v121 = &__dst[v120];
                        v141 = v114;
                        v122 = &v145[v120];
                        v123 = *&v145[v120];
                        v124 = *&v145[v120 + 8];
                        v125 = v145[v120 + 16];
                        outlined copy of Text.Storage(v123, *(v122 + 1), v122[16]);
                        *v121 = v123;
                        *(v121 + 1) = v124;
                        v121[16] = v125;
                        *(v121 + 3) = *(v122 + 3);
                        v126 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v127 = type metadata accessor for UUID();
                        v136 = *(*(v127 - 8) + 16);

                        v136(&v121[v126], &v122[v126], v127);
                        v128 = *(v141 + 24);
                        v129 = &__dst[v128];
                        v130 = &v145[v128];
                        if (*v130)
                        {
                          v131 = v130[1];
                          *v129 = *v130;
                          v129[1] = v131;
                        }

                        else
                        {
                          *v129 = *v130;
                        }

                        v117 = v150;
                        v119 = v146;
                        v118 = v148;
                        (*(v138 + 56))(__dst, 0, 1, v141);
                      }

                      *(v117 + v118[29]) = *(v19 + v118[29]);
                      *(v117 + v118[30]) = *(v19 + v118[30]);
                      *(v117 + v118[31]) = *(v19 + v118[31]);
                      *(v117 + v118[32]) = *(v19 + v118[32]);
                      *(v117 + v118[33]) = *(v19 + v118[33]);
                      *(v117 + v118[34]) = *(v19 + v118[34]);
                      v132 = *(v119 + 56);

                      v132(v117, 0, 1, v118);
                      goto LABEL_70;
                    }

                    v25[108] = v104;
                    v25[109] = *(v19 + 872);
                    (**(v104 - 8))(v102, v103);
                    v110 = *(v19 + 880);
                    if (!v110)
                    {
LABEL_62:
                      *(v25 + 55) = *(v19 + 880);
                      goto LABEL_63;
                    }
                  }

                  else
                  {
                    v108 = *v103;
                    v109 = *(v19 + 856);
                    v25[109] = *(v19 + 872);
                    *v102 = v108;
                    *(v25 + 107) = v109;
                    v110 = *(v19 + 880);
                    if (!v110)
                    {
                      goto LABEL_62;
                    }
                  }

                  v111 = *(v19 + 888);
                  v25[110] = v110;
                  v25[111] = v111;

                  goto LABEL_63;
                }

                v25[78] = v84;
                v25[79] = *(v19 + 632);
                (**(v84 - 8))((v25 + 75), v19 + 600, v84);
              }

              else
              {
                v87 = *v83;
                v88 = *(v19 + 616);
                v25[79] = *(v19 + 632);
                *v82 = v87;
                *(v25 + 77) = v88;
              }

              v25[80] = *(v19 + 640);

              goto LABEL_52;
            }

LABEL_39:
            *(v25 + 28) = *(v19 + 448);
            goto LABEL_40;
          }
        }

        *(v25 + 27) = *(v19 + 432);
        v77 = *(v19 + 448);
        if (v77)
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v42 = *(v19 + 72);
      if (v42 == 255)
      {
        v44 = *(v19 + 64);
        *(v150 + 72) = *(v19 + 72);
        v150[8] = v44;
      }

      else
      {
        v43 = *(v19 + 64);
        outlined copy of GraphicsImage.Contents(v43, *(v19 + 72));
        v150[8] = v43;
        *(v150 + 72) = v42;
      }

      v150[10] = *(v19 + 80);
      *(v150 + 11) = *(v19 + 88);
      *(v150 + 104) = *(v19 + 104);
      v45 = *(v19 + 108);
      *(v150 + 121) = *(v19 + 121);
      *(v150 + 108) = v45;
      v46 = *(v19 + 136);
      v47 = *(v19 + 152);
      *(v150 + 168) = *(v19 + 168);
      *(v150 + 19) = v47;
      *(v150 + 17) = v46;
      *(v150 + 169) = *(v19 + 169);
      *(v150 + 170) = *(v19 + 170);
      *(v150 + 171) = *(v19 + 171);
      v48 = *(v19 + 192);
      if (v48 >> 1 == 0xFFFFFFFF)
      {
        v49 = *(v19 + 192);
        *(v150 + 11) = *(v19 + 176);
        *(v150 + 12) = v49;
      }

      else
      {
        v50 = *(v19 + 176);
        v51 = *(v19 + 184);
        v52 = *(v19 + 200);
        outlined copy of AccessibilityImageLabel(v50, v51, *(v19 + 192));
        v150[22] = v50;
        v150[23] = v51;
        v150[24] = v48;
        v150[25] = v52;
      }

      v150[26] = *(v19 + 208);
      v150[27] = *(v19 + 216);
      *(v150 + 224) = *(v19 + 224);
      *(v150 + 225) = *(v19 + 225);
      v53 = *(v19 + 228);
      *(v150 + 232) = *(v19 + 232);
      *(v150 + 57) = v53;
      v54 = *(v19 + 240);
      v150[30] = v54;
      *(v150 + 124) = *(v19 + 248);
      *(v150 + 250) = *(v19 + 250);
      swift_unknownObjectRetain();

      v55 = v54;
      if (*(v19 + 264))
      {
        goto LABEL_17;
      }
    }

    v56 = *(v19 + 256);
    v57 = *(v19 + 288);
    *(v150 + 17) = *(v19 + 272);
    *(v150 + 18) = v57;
    *(v150 + 16) = v56;
    goto LABEL_28;
  }

  return a1;
}

char *assignWithTake for ToolbarStorage.GroupItem.GroupSubItem(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v8;
    v9 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v9;
    v10 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v10;
    v11 = *(a2 + 6);
    v12 = *(a2 + 7);
    *(a1 + 137) = *(a2 + 137);
    v13 = *(a2 + 8);
    *(a1 + 7) = v12;
    *(a1 + 8) = v13;
    *(a1 + 6) = v11;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 20) = *(a2 + 20);
    a1[168] = a2[168];
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 35) = *(a2 + 35);
    v14 = type metadata accessor for ToolbarStorage.Item(0);
    v15 = v14[17];
    v16 = &a1[v15];
    v17 = &a2[v15];
    v18 = type metadata accessor for PlatformItemList.Item();
    v19 = *(v18 - 1);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v45 = v19;
      v21 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v21;
      v16[32] = v17[32];
      *(v16 + 40) = *(v17 + 40);
      v16[56] = v17[56];
      v22 = *(v17 + 13);
      *(v16 + 12) = *(v17 + 12);
      *(v16 + 13) = v22;
      *(v16 + 14) = *(v17 + 14);
      *(v16 + 235) = *(v17 + 235);
      v23 = *(v17 + 9);
      *(v16 + 8) = *(v17 + 8);
      *(v16 + 9) = v23;
      v24 = *(v17 + 11);
      *(v16 + 10) = *(v17 + 10);
      *(v16 + 11) = v24;
      v25 = *(v17 + 5);
      *(v16 + 4) = *(v17 + 4);
      *(v16 + 5) = v25;
      v26 = *(v17 + 7);
      *(v16 + 6) = *(v17 + 6);
      *(v16 + 7) = v26;
      v27 = *(v17 + 17);
      *(v16 + 16) = *(v17 + 16);
      *(v16 + 17) = v27;
      v28 = *(v17 + 23);
      *(v16 + 22) = *(v17 + 22);
      *(v16 + 23) = v28;
      *(v16 + 24) = *(v17 + 24);
      *(v16 + 50) = *(v17 + 50);
      v29 = *(v17 + 19);
      *(v16 + 18) = *(v17 + 18);
      *(v16 + 19) = v29;
      v30 = *(v17 + 21);
      *(v16 + 20) = *(v17 + 20);
      *(v16 + 21) = v30;
      v31 = *(v17 + 456);
      *(v16 + 440) = *(v17 + 440);
      *(v16 + 456) = v31;
      v16[472] = v17[472];
      v32 = *(v17 + 424);
      *(v16 + 408) = *(v17 + 408);
      *(v16 + 424) = v32;
      *(v16 + 30) = *(v17 + 30);
      *(v16 + 489) = *(v17 + 489);
      *(v16 + 32) = *(v17 + 32);
      v16[528] = v17[528];
      memcpy(v16 + 536, v17 + 536, 0x130uLL);
      v33 = *(v17 + 856);
      *(v16 + 840) = *(v17 + 840);
      *(v16 + 856) = v33;
      *(v16 + 872) = *(v17 + 872);
      *(v16 + 111) = *(v17 + 111);
      *(v16 + 112) = *(v17 + 112);
      *(v16 + 904) = *(v17 + 904);
      *(v16 + 920) = *(v17 + 920);
      *(v16 + 117) = *(v17 + 117);
      *(v16 + 118) = *(v17 + 118);
      v16[952] = v17[952];
      *(v16 + 953) = *(v17 + 953);
      v34 = v18[28];
      __dst = &v16[v34];
      v35 = &v17[v34];
      v36 = type metadata accessor for CommandOperation();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v35, 1, v36))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v35, *(*(v38 - 8) + 64));
      }

      else
      {
        *__dst = *v35;
        v39 = *(v36 + 20);
        v43 = &__dst[v39];
        v44 = &v35[v39];
        v40 = *&v35[v39 + 16];
        *v43 = *&v35[v39];
        *(v43 + 1) = v40;
        v42 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v41 = type metadata accessor for UUID();
        (*(*(v41 - 8) + 32))(&v43[v42], &v44[v42], v41);
        *&__dst[*(v36 + 24)] = *&v35[*(v36 + 24)];
        (*(v37 + 56))();
      }

      v16[v18[29]] = v17[v18[29]];
      v16[v18[30]] = v17[v18[30]];
      v16[v18[31]] = v17[v18[31]];
      v16[v18[32]] = v17[v18[32]];
      v16[v18[33]] = v17[v18[33]];
      *&v16[v18[34]] = *&v17[v18[34]];
      (*(v45 + 56))(v16, 0, 1, v18);
    }

    swift_weakTakeInit();
    a1[v14[19]] = a2[v14[19]];
    a1[v14[20]] = a2[v14[20]];
    a1[v14[21]] = a2[v14[21]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t assignWithCopy for ToolbarStorage.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for ToolbarStorage.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t destroy for ToolbarStorage.SpacerItem(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }
}

uint64_t initializeWithCopy for ToolbarStorage.SpacerItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    (**(v5 - 8))(v4, a2 + 8);
    *(a1 + 48) = 1;
  }

  else
  {
    v6 = *(a2 + 24);
    *v4 = *(a2 + 8);
    v4[1] = v6;
    *(v4 + 25) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for ToolbarStorage.SpacerItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    if (*(a2 + 48) == 1)
    {
      v5 = *(a2 + 32);
      *(a1 + 32) = v5;
      *(a1 + 40) = *(a2 + 40);
      (**(v5 - 8))(v4, a2 + 8);
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = *(a2 + 8);
      v7 = *(a2 + 24);
      *(v4 + 25) = *(a2 + 33);
      *v4 = v6;
      v4[1] = v7;
    }
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for ToolbarStorage.SpacerItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarStorage.SpacerItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for ToolbarStorage.SpacerItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t assignWithTake for SectionStyleConfiguration(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      *result = *a2;
      v4 = result;

      *(v4 + 8) = v3;

      *(v4 + 16) = *(a2 + 16);
      return v4;
    }

    else
    {
      v5 = result;
      outlined destroy of Binding<Bool>(result);
      *v5 = *a2;
      *(v5 + 16) = *(a2 + 16);
      return v5;
    }
  }

  else
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SectionStyleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SectionStyleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t View.sectionStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SectionStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t ResolvedSectionStyle.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = xmmword_18CD79D60;
  return outlined copy of Binding<Int>?(a1, a2);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedSectionStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedSectionStyle and conformance ResolvedSectionStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type SectionStyleModifier<DefaultSectionStyle> and conformance SectionStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type SectionStyleModifier<DefaultSectionStyle> and conformance SectionStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type SectionStyleModifier<DefaultSectionStyle> and conformance SectionStyleModifier<A>)
  {
    type metadata accessor for SectionStyleModifier<DefaultSectionStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleModifier<DefaultSectionStyle> and conformance SectionStyleModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _TraitWritingModifier<IsExpandedTraitKey>(255, a2, a3, a4, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>>, StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>>, StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>>, StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>>, StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>>, StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>>, type metadata accessor for ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>>, type metadata accessor for StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>);
    lazy protocol witness table accessor for type ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>>, StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>>, StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>()
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>)
  {
    type metadata accessor for StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>();
    lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
    lazy protocol witness table accessor for type StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>> and conformance <> StaticIf<A, B, C>();
    v0 = type metadata accessor for StaticSourceWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>);
    }
  }
}

void type metadata accessor for StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>()
{
  if (!lazy cache variable for type metadata for StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>)
  {
    type metadata accessor for _TraitWritingModifier<IsExpandedTraitKey>(255, &lazy cache variable for type metadata for AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier, &type metadata for SectionStyleConfiguration.Header, &protocol witness table for SectionStyleConfiguration.Header, type metadata accessor for AccessibilitySectionHeaderModifier.ChildModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>();
    lazy protocol witness table accessor for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling();
    lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>()
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>();
    lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
    lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for StaticSourceWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticSourceWriter<SectionStyleConfiguration.RawContent, ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>)
  {
    type metadata accessor for _TraitWritingModifier<IsExpandedTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SectionActionsTraitKey>, &type metadata for SectionActionsTraitKey, &protocol witness table for SectionActionsTraitKey, MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<IsExpandedTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>>();
    lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<SectionActionsTraitKey>, &type metadata for SectionActionsTraitKey, &protocol witness table for SectionActionsTraitKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.RawContent, _TraitWritingModifier<SectionActionsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>>(255);
    lazy protocol witness table accessor for type Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer> and conformance <> Section<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticSourceWriter<SectionStyleConfiguration.Header, StaticIf<AccessibilityCustomSectionHeaderStyling, SectionStyleConfiguration.Header, ModifiedContent<SectionStyleConfiguration.Header, AccessibilitySectionHeaderModifier<SectionStyleConfiguration.Header>.ChildModifier>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t View.accessibilityScrollStatus(_:isEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3 & 1;
  v11[3] = a4;
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  return View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.ScrollableStatusKey, v11, a5, a6, &type metadata for AccessibilityProperties.ScrollableStatusKey, a7);
}

uint64_t View.accessibilityScrollStatus(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13 & 1;
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v13 & 1;
  v17[3] = v15;
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.ScrollableStatusKey, v17, a5, a6, &type metadata for AccessibilityProperties.ScrollableStatusKey, a7);
  outlined consume of Text.Storage(v10, v12, v14);
}

uint64_t View.accessibilityScrollStatus<A>(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14 & 1;
  v18[0] = v11;
  v18[1] = v12;
  v18[2] = v14 & 1;
  v18[3] = v16;
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.ScrollableStatusKey, v18, a2, a3, &type metadata for AccessibilityProperties.ScrollableStatusKey, a5);
  outlined consume of Text.Storage(v11, v13, v15);
}

uint64_t ModifiedContent<>.accessibilityScrollStatus(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3 & 1;
  v11[3] = a4;
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(&type metadata for AccessibilityProperties.ScrollableStatusKey, v11, a5, a6, a7);
}

uint64_t ModifiedContent<>.accessibilityScrollStatus(_:isEnabled:)@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9 & 1;
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v9 & 1;
  v13[3] = v11;
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(&type metadata for AccessibilityProperties.ScrollableStatusKey, v13, a1, a2, a3);
  outlined consume of Text.Storage(v6, v8, v10);
}

uint64_t ModifiedContent<>.accessibilityScrollStatus<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13 & 1;
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v13 & 1;
  v17[3] = v15;
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(&type metadata for AccessibilityProperties.ScrollableStatusKey, v17, a2, a3, a4);
  outlined consume of Text.Storage(v10, v12, v14);
}

uint64_t View.navigationSplitViewColumnVisibilityGesture(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.splitViewColumnGestureBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationSplitViewColumnVisibilityGestureBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationSplitViewColumnVisibilityGestureBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.splitViewColumnGestureBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationSplitViewColumnVisibilityGestureBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationSplitViewColumnVisibilityGestureBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.splitViewColumnGestureBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationSplitViewColumnVisibilityGestureBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

Swift::Int NavigationSplitViewColumnVisibilityGestureBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewColumnVisibilityGestureBehavior and conformance NavigationSplitViewColumnVisibilityGestureBehavior()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewColumnVisibilityGestureBehavior and conformance NavigationSplitViewColumnVisibilityGestureBehavior;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewColumnVisibilityGestureBehavior and conformance NavigationSplitViewColumnVisibilityGestureBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewColumnVisibilityGestureBehavior and conformance NavigationSplitViewColumnVisibilityGestureBehavior);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<NavigationSplitViewColumnVisibilityGestureBehavior>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationSplitViewColumnVisibilityGestureBehavior>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationSplitViewColumnVisibilityGestureBehavior>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewColumnVisibilityGestureBehavior.Behavior and conformance NavigationSplitViewColumnVisibilityGestureBehavior.Behavior()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewColumnVisibilityGestureBehavior.Behavior and conformance NavigationSplitViewColumnVisibilityGestureBehavior.Behavior;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewColumnVisibilityGestureBehavior.Behavior and conformance NavigationSplitViewColumnVisibilityGestureBehavior.Behavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewColumnVisibilityGestureBehavior.Behavior and conformance NavigationSplitViewColumnVisibilityGestureBehavior.Behavior);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationSplitViewColumnVisibilityGestureBehavior> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Group<A>._makeScene(scene:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v12[0] = a2[2];
  *(v12 + 12) = *(a2 + 44);
  v10 = v6;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a4 + 32))(v9, v11, a3, a4);
}

uint64_t instantiation function for generic protocol witness table for <A> Group<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void LinearUIKitProgressView.Base.updateUIView(_:context:)(void *a1, uint64_t a2, void *a3, double a4)
{
  v13 = *(a2 + 16);

  v7 = Transaction.animation.getter();

  if (v7)
  {
  }

  *&v8 = a4;
  [a1 setProgress:v7 != 0 animated:v8];
  if (a3)
  {
    RepresentableContextValues.environment.getter();
    dispatch thunk of AnyColorBox.resolve(in:)();

    Color.Resolved.kitColor.getter();
    objc_opt_self();
    a3 = swift_dynamicCastObjCClassUnconditional();
  }

  v9 = [a1 progressTintColor];
  if (v9)
  {
    v10 = v9;
    if (a3)
    {
      type metadata accessor for UIColor();
      v14 = a3;
      v11 = static NSObject.== infix(_:_:)();

      v12 = v14;
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  else if (!a3)
  {
    return;
  }

  [a1 setProgressTintColor_];
  v12 = a3;
LABEL_13:
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance LinearUIKitProgressView.Base()
{
  type metadata accessor for LinearUIKitProgressView.Base.SwiftUIProgressView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 initWithProgressViewStyle_];
}

uint64_t LinearUIKitProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for TimelineProgressView<LinearUIKitProgressView.Base>, lazy protocol witness table accessor for type LinearUIKitProgressView.Base and conformance LinearUIKitProgressView.Base, &type metadata for LinearUIKitProgressView.Base, type metadata accessor for TimelineProgressView);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProgressViewStyleConfiguration(v1, v12);
  _s7SwiftUI17ProgressViewValueOWObTm_0(v12, v9, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    v14 = *(v9 + *(v13 + 48));
    _s7SwiftUI17ProgressViewValueOWObTm_0(v9, v6, type metadata accessor for ClosedRange<Date>);
    v15 = *(v1 + *(type metadata accessor for LinearUIKitProgressView() + 20));
    v6[v4[9]] = 0;
    v6[v4[10]] = v14;
    *&v6[v4[11]] = v15;
    v6[v4[12]] = 0;
    outlined init with take of TimelineProgressView<LinearUIKitProgressView.Base>(v6, a1);
    type metadata accessor for _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>>.Storage, MEMORY[0x1E697F948]);
  }

  else
  {
    if (*(v9 + 8))
    {
      v16 = 0.0;
    }

    else
    {
      v16 = *v9;
    }

    v17 = *(v1 + *(type metadata accessor for LinearUIKitProgressView() + 20));
    *a1 = v16;
    *(a1 + 8) = v17;
    type metadata accessor for _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>>.Storage, MEMORY[0x1E697F948]);
  }

  swift_storeEnumTagMultiPayload();
}

id @objc CircularUIKitProgressView.SwiftUIActivityIndicatorView.init(style:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for CircularUIKitProgressView.SwiftUIActivityIndicatorView();
  return objc_msgSendSuper2(&v7, *a4, a3);
}