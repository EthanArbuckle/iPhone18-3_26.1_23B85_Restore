void *assignWithTake for SearchEnvironmentStorage.BoundProperties(void *a1, void *a2, int *a3)
{
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v6);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      type metadata accessor for Binding<SearchFieldState>(0);
      v14 = *(v13 + 32);
      v15 = a1 + v14;
      v16 = a2 + v14;
      *v15 = *(a2 + v14);
      v15[1] = *(a2 + v14 + 1);
      *(v15 + 1) = *(a2 + v14 + 2);
      v15[8] = *(a2 + v14 + 8);
      *(v15 + 1) = *(a2 + v14 + 4);
      v17 = type metadata accessor for SearchFieldState(0);
      v18 = v17[9];
      v19 = type metadata accessor for AttributedString();
      (*(*(v19 - 8) + 32))(&v15[v18], &v16[v18], v19);
      v15[v17[10]] = v16[v17[10]];
      v20 = v17[11];
      v21 = &v15[v20];
      v22 = &v16[v20];
      v21[4] = v22[4];
      *v21 = *v22;
      *(a1 + *(v7 + 36)) = *(a2 + *(v7 + 36));
      *(a1 + *(v7 + 40)) = *(a2 + *(v7 + 40));
      (*(v8 + 56))(a1, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    outlined destroy of Binding<SearchFieldState>?(a1, type metadata accessor for SearchBoundProperty<SearchFieldState>);
LABEL_6:
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v23 - 8) + 64));
    goto LABEL_7;
  }

  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v57 = *(v56 + 32);
  v58 = a1 + v57;
  v59 = a2 + v57;
  *v58 = *(a2 + v57);
  v58[1] = *(a2 + v57 + 1);
  *(v58 + 1) = *(a2 + v57 + 2);
  v58[8] = *(a2 + v57 + 8);
  *(v58 + 1) = *(a2 + v57 + 4);
  v60 = type metadata accessor for SearchFieldState(0);
  v61 = v60[9];
  v62 = type metadata accessor for AttributedString();
  (*(*(v62 - 8) + 40))(&v58[v61], &v59[v61], v62);
  v58[v60[10]] = v59[v60[10]];
  v63 = v60[11];
  v64 = &v58[v63];
  v65 = &v59[v63];
  *v64 = *v65;
  v64[4] = v65[4];
  *(a1 + *(v7 + 36)) = *(a2 + *(v7 + 36));

  *(a1 + *(v7 + 40)) = *(a2 + *(v7 + 40));
LABEL_7:
  v24 = a3[5];
  v25 = a1 + v24;
  v26 = a2 + v24;
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = *(v29 + 48);
  v31 = v30(v25, 1, v27);
  v32 = v30(v26, 1, v28);
  if (v31)
  {
    if (!v32)
    {
      v33 = *(v26 + 1);
      *v25 = *v26;
      *(v25 + 1) = v33;
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v35 = *(v34 + 32);
      v36 = type metadata accessor for AttributedString();
      (*(*(v36 - 8) + 32))(&v25[v35], &v26[v35], v36);
      *&v25[*(v28 + 36)] = *&v26[*(v28 + 36)];
      *&v25[*(v28 + 40)] = *&v26[*(v28 + 40)];
      (*(v29 + 56))(v25, 0, 1, v28);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v32)
  {
    outlined destroy of Binding<SearchFieldState>?(v25, type metadata accessor for SearchBoundProperty<AttributedString>);
LABEL_12:
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    memcpy(v25, v26, *(*(v37 - 8) + 64));
    goto LABEL_13;
  }

  *v25 = *v26;

  *(v25 + 1) = *(v26 + 1);

  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v67 = *(v66 + 32);
  v68 = type metadata accessor for AttributedString();
  (*(*(v68 - 8) + 40))(&v25[v67], &v26[v67], v68);
  *&v25[*(v28 + 36)] = *&v26[*(v28 + 36)];

  *&v25[*(v28 + 40)] = *&v26[*(v28 + 40)];
LABEL_13:
  v38 = a3[6];
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 48);
  v45 = v44(v39, 1, v41);
  v46 = v44(v40, 1, v42);
  if (!v45)
  {
    if (v46)
    {
      outlined destroy of Binding<SearchFieldState>?(v39, type metadata accessor for SearchBoundProperty<TextSelection?>);
      goto LABEL_19;
    }

    v96 = a3;
    *v39 = *v40;

    v39[1] = v40[1];

    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v70 = *(v69 + 32);
    v71 = v39 + v70;
    v72 = v40 + v70;
    v73 = type metadata accessor for TextSelection(0);
    v92 = *(v73 - 8);
    v74 = *(v92 + 48);
    __dst = v71;
    LODWORD(v71) = v74(v71, 1, v73);
    v75 = v74(v72, 1, v73);
    if (v71)
    {
      if (!v75)
      {
        v81 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v82 - 8) + 32))(__dst, v72, v82);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v72, *(*(v81 - 8) + 64));
        }

        *(__dst + *(v73 + 20)) = v72[*(v73 + 20)];
        (*(v92 + 56))(__dst, 0, 1);
        goto LABEL_42;
      }

      type metadata accessor for TextSelection?(0);
      v77 = *(*(v76 - 8) + 64);
      v78 = __dst;
    }

    else
    {
      if (!v75)
      {
        if (a1 != a2)
        {
          outlined destroy of Binding<SearchFieldState>?(__dst, type metadata accessor for TextSelection.Indices);
          v83 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v84 - 8) + 32))(__dst, v72, v84);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(__dst, v72, *(*(v83 - 8) + 64));
          }
        }

        *(__dst + *(v73 + 20)) = v72[*(v73 + 20)];
        goto LABEL_42;
      }

      outlined destroy of Binding<SearchFieldState>?(__dst, type metadata accessor for TextSelection);
      type metadata accessor for TextSelection?(0);
      v77 = *(*(v80 - 8) + 64);
      v78 = __dst;
    }

    memcpy(v78, v72, v77);
LABEL_42:
    a3 = v96;
    *(v39 + *(v42 + 36)) = *(v40 + *(v42 + 36));

    *(v39 + *(v42 + 40)) = *(v40 + *(v42 + 40));
    goto LABEL_43;
  }

  if (v46)
  {
LABEL_19:
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    memcpy(v39, v40, *(*(v55 - 8) + 64));
    goto LABEL_43;
  }

  v95 = a3;
  v47 = v40[1];
  *v39 = *v40;
  v39[1] = v47;
  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v49 = *(v48 + 32);
  v50 = v39 + v49;
  v51 = v40 + v49;
  v52 = type metadata accessor for TextSelection(0);
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52))
  {
    type metadata accessor for TextSelection?(0);
    memcpy(v50, v51, *(*(v54 - 8) + 64));
  }

  else
  {
    __src = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v79 - 8) + 32))(v50, v51, v79);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v50, v51, *(*(__src - 1) + 64));
    }

    v50[*(v52 + 20)] = v51[*(v52 + 20)];
    (*(v53 + 56))(v50, 0, 1, v52);
  }

  *(v39 + *(v42 + 36)) = *(v40 + *(v42 + 36));
  *(v39 + *(v42 + 40)) = *(v40 + *(v42 + 40));
  (*(v43 + 56))(v39, 0, 1, v42);
  a3 = v95;
LABEL_43:
  v85 = a3[7];
  v86 = a1 + v85;
  v87 = a2 + v85;
  v88 = *(a1 + v85 + 8);
  v89 = *(v87 + 1);
  if (v88)
  {
    if (v89)
    {
      *v86 = *v87;

      *(v86 + 8) = *(v87 + 1);

      if (*(v86 + 24))
      {
        if ((v87[24] & 1) == 0)
        {
          swift_unknownObjectWeakTakeInit();
          *(v86 + 24) = 0;
LABEL_59:
          *(v86 + 32) = *(v87 + 4);

LABEL_60:
          *(v86 + 40) = *(v87 + 10);
          return a1;
        }
      }

      else
      {
        if ((v87[24] & 1) == 0)
        {
          swift_unknownObjectWeakTakeAssign();
          goto LABEL_59;
        }

        outlined destroy of PlatformSearchPopoverAnchor(v86 + 16);
      }

      *(v86 + 16) = *(v87 + 2);
      *(v86 + 24) = v87[24];
      goto LABEL_59;
    }

    outlined destroy of Binding<SearchFieldState>?(v86, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
  }

  else if (v89)
  {
    *v86 = *v87;
    *(v86 + 8) = v89;
    if (v87[24])
    {
      *(v86 + 16) = *(v87 + 2);
      *(v86 + 24) = v87[24];
    }

    else
    {
      swift_unknownObjectWeakTakeInit();
      *(v86 + 24) = 0;
    }

    *(v86 + 32) = *(v87 + 4);
    goto LABEL_60;
  }

  v90 = *(v87 + 1);
  *v86 = *v87;
  *(v86 + 16) = v90;
  *(v86 + 28) = *(v87 + 28);
  return a1;
}

void type metadata completion function for SearchEnvironmentStorage.BoundProperties()
{
  type metadata accessor for Binding<SearchFieldState>?(319, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<SearchFieldState>?(319, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SearchBoundProperty<TextSelection?>?();
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t type metadata completion function for SearchBoundProperty()
{
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SearchBoundProperty(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
    v16 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for SearchBoundProperty(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));
}

void *initializeWithCopy for SearchBoundProperty(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = ((v10 + 16) & ~v10) + *(v9 + 48) + 7;
  v14 = ((a1 + v13) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *assignWithCopy for SearchBoundProperty(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 40) + 7;
  v12 = ((a1 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = a2 + v11;
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + 11;
  *v12 = *(v13 & 0xFFFFFFFFFFFFFFF8);

  *((v12 + 11) & 0xFFFFFFFFFFFFFFF8) = *(v14 & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for SearchBoundProperty(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  (*(v7 + 32))((v5 + v9 + 8) & ~v9, (v6 + v9 + 8) & ~v9);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 32) + 7;
  v11 = ((a1 + v10) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((a2 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for SearchBoundProperty(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 24) + 7;
  v12 = ((a1 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((a2 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  *((v12 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchBoundProperty(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  if (v7 < a2 && *(a1 + ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v5 & 0x80000000) != 0)
  {
    return (*(v4 + 48))((v9 + v6 + 8) & ~v6);
  }

  v10 = *v9;
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void storeEnumTagSinglePayload for SearchBoundProperty(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v14 = *(v6 + 56);

        v14((v12 + v9 + 8) & ~v9);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v13 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v13 = a2 - 1;
        }

        *v12 = v13;
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

uint64_t outlined assign with copy of SearchEnvironmentStorage.BoundProperties(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ToolbarItemPlacement?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_3(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ToolbarItemPlacement?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_3(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for SearchEnvironmentStorage.AllProperties(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    v13 = v12 + ((v4 + 16) & ~v4);
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = (a1 + v5);
    v7 = (a2 + v5);
    type metadata accessor for SearchBoundProperty<SearchFieldState>();
    v9 = v8;
    v10 = *(v8 - 8);
    v72 = v7;
    if ((*(v10 + 48))(v7, 1, v8))
    {
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
      memcpy(v6, v7, *(*(v11 - 8) + 64));
    }

    else
    {
      v68 = v7[1];
      *v6 = *v7;
      v6[1] = v68;
      type metadata accessor for Binding<SearchFieldState>(0);
      v15 = *(v14 + 32);
      v16 = v6 + v15;
      v17 = v7 + v15;
      *v16 = *(v72 + v15);
      v16[1] = *(v72 + v15 + 1);
      *(v16 + 1) = *(v72 + v15 + 2);
      v16[8] = *(v72 + v15 + 8);
      *(v16 + 1) = *(v72 + v15 + 4);
      v18 = type metadata accessor for SearchFieldState(0);
      v19 = v18[9];
      v20 = type metadata accessor for AttributedString();
      v21 = v6;
      v22 = *(*(v20 - 8) + 16);

      v22(&v16[v19], &v17[v19], v20);
      v6 = v21;
      v16[v18[10]] = v17[v18[10]];
      v23 = v18[11];
      v24 = &v16[v23];
      v25 = &v17[v23];
      v7 = v72;
      v24[4] = v25[4];
      *v24 = *v25;
      *(v21 + *(v9 + 36)) = *(v72 + *(v9 + 36));
      *(v21 + *(v9 + 40)) = *(v72 + *(v9 + 40));
      v26 = *(v10 + 56);

      v26(v21, 0, 1, v9);
    }

    v27 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v28 = v27[5];
    v29 = (v6 + v28);
    v30 = (v7 + v28);
    type metadata accessor for SearchBoundProperty<AttributedString>();
    v32 = v31;
    v33 = *(v31 - 8);
    if ((*(v33 + 48))(v30, 1, v31))
    {
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
      memcpy(v29, v30, *(*(v34 - 8) + 64));
    }

    else
    {
      v35 = v30[1];
      *v29 = *v30;
      v29[1] = v35;
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v69 = v27;
      v37 = *(v36 + 32);
      v38 = type metadata accessor for AttributedString();
      v39 = *(*(v38 - 8) + 16);

      v39(v29 + v37, v30 + v37, v38);
      v7 = v72;
      *(v29 + *(v32 + 36)) = *(v30 + *(v32 + 36));
      *(v29 + *(v32 + 40)) = *(v30 + *(v32 + 40));
      v40 = *(v33 + 56);

      v40(v29, 0, 1, v32);
      v27 = v69;
    }

    v41 = v27[6];
    v42 = (v6 + v41);
    v43 = (v7 + v41);
    type metadata accessor for SearchBoundProperty<TextSelection?>();
    v45 = v44;
    v46 = *(v44 - 8);
    if ((*(v46 + 48))(v43, 1, v44))
    {
      type metadata accessor for SearchBoundProperty<TextSelection?>?();
      memcpy(v42, v43, *(*(v47 - 8) + 64));
    }

    else
    {
      v67 = v46;
      v70 = v27;
      v48 = v43[1];
      *v42 = *v43;
      v42[1] = v48;
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
      v50 = *(v49 + 32);
      v65 = v43 + v50;
      __dst = v42 + v50;
      v51 = type metadata accessor for TextSelection(0);
      v52 = *(v51 - 8);
      v53 = *(v52 + 48);

      if (v53(v65, 1, v51))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v65, *(*(v54 - 8) + 64));
        v7 = v72;
      }

      else
      {
        v55 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v56 - 8) + 16))(__dst, v65, v56);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v65, *(*(v55 - 8) + 64));
        }

        v7 = v72;
        __dst[*(v51 + 20)] = v65[*(v51 + 20)];
        (*(v52 + 56))(__dst, 0, 1, v51);
      }

      *(v42 + *(v45 + 36)) = *(v43 + *(v45 + 36));
      *(v42 + *(v45 + 40)) = *(v43 + *(v45 + 40));
      v57 = *(v67 + 56);

      v57(v42, 0, 1, v45);
      v27 = v70;
    }

    v58 = v27[7];
    v59 = v6 + v58;
    v60 = v7 + v58;
    v61 = *(v7 + v58 + 8);
    if (v61)
    {
      *v59 = *v60;
      *(v59 + 1) = v61;
      v62 = v60[24];

      if (v62)
      {
        *(v59 + 2) = *(v60 + 2);
        v59[24] = v60[24];
      }

      else
      {
        swift_unknownObjectWeakCopyInit();
        v59[24] = 0;
      }

      *(v59 + 4) = *(v60 + 4);
      *(v59 + 10) = *(v60 + 10);
    }

    else
    {
      v63 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v63;
      *(v59 + 28) = *(v60 + 28);
    }

    return a1;
  }

  return v13;
}

uint64_t destroy for SearchEnvironmentStorage.AllProperties(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {

    type metadata accessor for Binding<SearchFieldState>(0);
    v5 = v2 + *(v4 + 32);
    v6 = *(type metadata accessor for SearchFieldState(0) + 36);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  v8 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v9 = v2 + v8[5];
  type metadata accessor for SearchBoundProperty<AttributedString>();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v12 = *(v11 + 32);
    v13 = type metadata accessor for AttributedString();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  v14 = v2 + v8[6];
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  result = (*(*(v15 - 8) + 48))(v14, 1, v15);
  if (!result)
  {

    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v18 = *(v17 + 32);
    v19 = type metadata accessor for TextSelection(0);
    if (!(*(*(v19 - 8) + 48))(v14 + v18, 1, v19))
    {
      type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v20 - 8) + 8))(v14 + v18, v20);
      }
    }
  }

  v21 = v2 + v8[7];
  if (*(v21 + 8))
  {

    if ((*(v21 + 24) & 1) == 0)
    {
      MEMORY[0x18D011290](v21 + 16);
    }
  }

  return result;
}

_BYTE *initializeWithCopy for SearchEnvironmentStorage.AllProperties(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v7 = v6;
  v8 = *(v6 - 8);
  v73 = v4;
  if ((*(v8 + 48))(v5, 1, v6))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
    memcpy(v4, v5, *(*(v9 - 8) + 64));
  }

  else
  {
    v69 = v5[1];
    *v4 = *v5;
    v4[1] = v69;
    type metadata accessor for Binding<SearchFieldState>(0);
    v11 = *(v10 + 32);
    v12 = v4 + v11;
    v13 = v5 + v11;
    *v12 = *(v5 + v11);
    v12[1] = *(v5 + v11 + 1);
    *(v12 + 1) = *(v5 + v11 + 2);
    v12[8] = *(v5 + v11 + 8);
    *(v12 + 1) = *(v5 + v11 + 4);
    v14 = type metadata accessor for SearchFieldState(0);
    v15 = v14[9];
    v16 = type metadata accessor for AttributedString();
    v17 = v5;
    v18 = *(*(v16 - 8) + 16);

    v19 = &v12[v15];
    v20 = &v13[v15];
    v4 = v73;
    v18(v19, v20, v16);
    v5 = v17;
    v12[v14[10]] = v13[v14[10]];
    v21 = v14[11];
    v22 = &v12[v21];
    v23 = &v13[v21];
    v22[4] = v23[4];
    *v22 = *v23;
    *(v73 + *(v7 + 36)) = *(v17 + *(v7 + 36));
    *(v73 + *(v7 + 40)) = *(v17 + *(v7 + 40));
    v24 = *(v8 + 56);

    v24(v73, 0, 1, v7);
  }

  v25 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v26 = v25[5];
  v27 = (v4 + v26);
  v28 = (v5 + v26);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v30 = v29;
  v31 = *(v29 - 8);
  if ((*(v31 + 48))(v28, 1, v29))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    memcpy(v27, v28, *(*(v32 - 8) + 64));
  }

  else
  {
    v33 = v28[1];
    *v27 = *v28;
    v27[1] = v33;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v35 = *(v34 + 32);
    v36 = type metadata accessor for AttributedString();
    v70 = v5;
    v37 = *(*(v36 - 8) + 16);

    v38 = v27 + v35;
    v39 = v28 + v35;
    v4 = v73;
    v37(v38, v39, v36);
    v5 = v70;
    *(v27 + *(v30 + 36)) = *(v28 + *(v30 + 36));
    *(v27 + *(v30 + 40)) = *(v28 + *(v30 + 40));
    v40 = *(v31 + 56);

    v40(v27, 0, 1, v30);
  }

  v41 = v25[6];
  v42 = (v4 + v41);
  v43 = (v5 + v41);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v45 = v44;
  v46 = *(v44 - 8);
  if ((*(v46 + 48))(v43, 1, v44))
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    memcpy(v42, v43, *(*(v47 - 8) + 64));
  }

  else
  {
    v67 = v46;
    v68 = v25;
    v71 = v5;
    v48 = v43[1];
    *v42 = *v43;
    v42[1] = v48;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v50 = *(v49 + 32);
    __dst = v42 + v50;
    v51 = v43 + v50;
    v52 = type metadata accessor for TextSelection(0);
    v53 = *(v52 - 8);
    v54 = *(v53 + 48);

    if (v54(v51, 1, v52))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v51, *(*(v55 - 8) + 64));
      v4 = v73;
      v5 = v71;
    }

    else
    {
      v56 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v57 - 8) + 16))(__dst, v51, v57);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v51, *(*(v56 - 8) + 64));
      }

      v4 = v73;
      v5 = v71;
      __dst[*(v52 + 20)] = v51[*(v52 + 20)];
      (*(v53 + 56))(__dst, 0, 1, v52);
    }

    *(v42 + *(v45 + 36)) = *(v43 + *(v45 + 36));
    *(v42 + *(v45 + 40)) = *(v43 + *(v45 + 40));
    v58 = *(v67 + 56);

    v58(v42, 0, 1, v45);
    v25 = v68;
  }

  v59 = v25[7];
  v60 = v4 + v59;
  v61 = v5 + v59;
  v62 = *(v61 + 1);
  if (v62)
  {
    *v60 = *v61;
    *(v60 + 1) = v62;
    v63 = v61[24];

    if (v63)
    {
      *(v60 + 2) = *(v61 + 2);
      v60[24] = v61[24];
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      v60[24] = 0;
    }

    *(v60 + 4) = *(v61 + 4);
    *(v60 + 10) = *(v61 + 10);
  }

  else
  {
    v64 = *(v61 + 1);
    *v60 = *v61;
    *(v60 + 1) = v64;
    *(v60 + 28) = *(v61 + 28);
  }

  return a1;
}

_BYTE *assignWithCopy for SearchEnvironmentStorage.AllProperties(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v5, 1, v7);
  __src = v6;
  v12 = v10(v6, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      *v5 = *v6;
      v5[1] = v6[1];
      type metadata accessor for Binding<SearchFieldState>(0);
      v14 = *(v13 + 32);
      v113 = v5;
      v15 = v5 + v14;
      v108 = v3;
      v16 = v6 + v14;
      *v15 = *(v6 + v14);
      v15[1] = *(v6 + v14 + 1);
      v15[2] = *(v6 + v14 + 2);
      v15[3] = *(v6 + v14 + 3);
      LODWORD(v14) = *(v6 + v14 + 4);
      v15[8] = v16[8];
      *(v15 + 1) = v14;
      v17 = type metadata accessor for SearchFieldState(0);
      v18 = v17[9];
      v19 = type metadata accessor for AttributedString();
      v20 = *(*(v19 - 8) + 16);

      v20(&v15[v18], &v16[v18], v19);
      v15[v17[10]] = v16[v17[10]];
      v21 = v17[11];
      v22 = &v15[v21];
      v5 = v113;
      v23 = &v16[v21];
      v3 = v108;
      v24 = v23[4];
      *v22 = *v23;
      v22[4] = v24;
      *(v113 + *(v8 + 36)) = *(v6 + *(v8 + 36));
      *(v113 + *(v8 + 40)) = *(v6 + *(v8 + 40));
      v25 = *(v9 + 56);

      v25(v113, 0, 1, v8);
      v26 = v6;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    outlined destroy of Binding<SearchFieldState>?(v5, type metadata accessor for SearchBoundProperty<SearchFieldState>);
LABEL_6:
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
    v26 = v6;
    memcpy(v5, v6, *(*(v27 - 8) + 64));
    goto LABEL_7;
  }

  v26 = v6;
  *v5 = *v6;

  v5[1] = v6[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v63 = *(v62 + 32);
  v64 = v5 + v63;
  v65 = v6 + v63;
  *v64 = *(v6 + v63);
  v64[1] = *(v6 + v63 + 1);
  v64[2] = *(v6 + v63 + 2);
  v64[3] = *(v6 + v63 + 3);
  LODWORD(v63) = *(v6 + v63 + 4);
  v64[8] = v65[8];
  *(v64 + 1) = v63;
  v66 = type metadata accessor for SearchFieldState(0);
  v67 = v66[9];
  v68 = type metadata accessor for AttributedString();
  (*(*(v68 - 8) + 24))(&v64[v67], &v65[v67], v68);
  v64[v66[10]] = v65[v66[10]];
  v69 = v66[11];
  v70 = &v64[v69];
  v71 = &v65[v69];
  *v70 = *v71;
  v70[4] = v71[4];
  *(v5 + *(v8 + 36)) = *(v6 + *(v8 + 36));

  *(v5 + *(v8 + 40)) = *(v6 + *(v8 + 40));
LABEL_7:
  v117 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v28 = v117[5];
  v29 = v5 + v28;
  v30 = v26 + v28;
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v29, 1, v31);
  v36 = v34(v30, 1, v32);
  if (v35)
  {
    if (!v36)
    {
      *v29 = *v30;
      *(v29 + 1) = *(v30 + 1);
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v38 = *(v37 + 32);
      v114 = v5;
      v39 = type metadata accessor for AttributedString();
      v109 = *(*(v39 - 8) + 16);

      v26 = __src;

      v40 = v39;
      v5 = v114;
      v109(&v29[v38], &v30[v38], v40);
      *&v29[*(v32 + 36)] = *&v30[*(v32 + 36)];
      *&v29[*(v32 + 40)] = *&v30[*(v32 + 40)];
      v41 = *(v33 + 56);

      v41(v29, 0, 1, v32);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v36)
  {
    outlined destroy of Binding<SearchFieldState>?(v29, type metadata accessor for SearchBoundProperty<AttributedString>);
LABEL_12:
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    memcpy(v29, v30, *(*(v42 - 8) + 64));
    goto LABEL_13;
  }

  *v29 = *v30;

  *(v29 + 1) = *(v30 + 1);

  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v73 = *(v72 + 32);
  v74 = type metadata accessor for AttributedString();
  (*(*(v74 - 8) + 24))(&v29[v73], &v30[v73], v74);
  *&v29[*(v32 + 36)] = *&v30[*(v32 + 36)];

  *&v29[*(v32 + 40)] = *&v30[*(v32 + 40)];
LABEL_13:
  v43 = v117[6];
  v44 = (v5 + v43);
  v45 = (v26 + v43);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v47 = v46;
  v48 = *(v46 - 8);
  v49 = *(v48 + 48);
  v50 = v49(v44, 1, v46);
  v51 = v49(v45, 1, v47);
  if (v50)
  {
    if (!v51)
    {
      v112 = v48;
      v115 = v5;
      v110 = v3;
      *v44 = *v45;
      v44[1] = v45[1];
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
      v53 = *(v52 + 32);
      __dst = v44 + v53;
      v54 = v45 + v53;
      v55 = type metadata accessor for TextSelection(0);
      v56 = *(v55 - 8);
      v57 = *(v56 + 48);

      v58 = v54;

      if (v57(v54, 1, v55))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v54, *(*(v59 - 8) + 64));
        v3 = v110;
        v60 = v112;
      }

      else
      {
        v85 = type metadata accessor for TextSelection.Indices(0);
        v60 = v112;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v87 = v58;
          (*(*(v86 - 8) + 16))(__dst, v58, v86);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v87 = v58;
          memcpy(__dst, v58, *(*(v85 - 8) + 64));
        }

        v3 = v110;
        __dst[*(v55 + 20)] = v87[*(v55 + 20)];
        (*(v56 + 56))(__dst, 0, 1, v55);
      }

      *(v44 + *(v47 + 36)) = *(v45 + *(v47 + 36));
      *(v44 + *(v47 + 40)) = *(v45 + *(v47 + 40));
      v89 = *(v60 + 56);

      v89(v44, 0, 1, v47);
      goto LABEL_42;
    }

LABEL_19:
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    memcpy(v44, v45, *(*(v61 - 8) + 64));
    goto LABEL_43;
  }

  if (v51)
  {
    outlined destroy of Binding<SearchFieldState>?(v44, type metadata accessor for SearchBoundProperty<TextSelection?>);
    goto LABEL_19;
  }

  v115 = v5;
  *v44 = *v45;

  v44[1] = v45[1];

  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v76 = *(v75 + 32);
  v77 = v44 + v76;
  v78 = v45 + v76;
  v79 = type metadata accessor for TextSelection(0);
  v106 = *(v79 - 8);
  v80 = *(v106 + 48);
  v81 = v77;
  LODWORD(v77) = v80(v77, 1, v79);
  v82 = v80(v78, 1, v79);
  if (v77)
  {
    if (!v82)
    {
      v83 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v84 - 8) + 16))(v81, v78, v84);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v81, v78, *(*(v83 - 8) + 64));
      }

      *(v81 + *(v79 + 20)) = v78[*(v79 + 20)];
      (*(v106 + 56))(v81, 0, 1);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v82)
    {
      if (v3 != a2)
      {
        outlined destroy of Binding<SearchFieldState>?(v81, type metadata accessor for TextSelection.Indices);
        v90 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v91 - 8) + 16))(v81, v78, v91);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v81, v78, *(*(v90 - 8) + 64));
        }
      }

      *(v81 + *(v79 + 20)) = v78[*(v79 + 20)];
      goto LABEL_41;
    }

    outlined destroy of Binding<SearchFieldState>?(v81, type metadata accessor for TextSelection);
  }

  type metadata accessor for TextSelection?(0);
  memcpy(v81, v78, *(*(v88 - 8) + 64));
LABEL_41:
  *(v44 + *(v47 + 36)) = *(v45 + *(v47 + 36));

  *(v44 + *(v47 + 40)) = *(v45 + *(v47 + 40));
LABEL_42:
  v5 = v115;
  v26 = __src;
LABEL_43:
  v92 = v117[7];
  v93 = v5 + v92;
  v94 = v26 + v92;
  v95 = *(v5 + v92 + 8);
  v96 = *(v26 + v92 + 8);
  if (v95)
  {
    if (v96)
    {
      *v93 = *v94;

      *(v93 + 8) = *(v94 + 1);

      if (*(v93 + 24))
      {
        if (v94[24])
        {
          v97 = *(v94 + 2);
          *(v93 + 24) = v94[24];
          *(v93 + 16) = v97;
        }

        else
        {
          swift_unknownObjectWeakCopyInit();
          *(v93 + 24) = 0;
        }
      }

      else if (v94[24])
      {
        outlined destroy of PlatformSearchPopoverAnchor(v93 + 16);
        v102 = v94[24];
        *(v93 + 16) = *(v94 + 2);
        *(v93 + 24) = v102;
      }

      else
      {
        swift_unknownObjectWeakCopyAssign();
      }

      *(v93 + 32) = *(v94 + 4);

      *(v93 + 40) = *(v94 + 10);
    }

    else
    {
      outlined destroy of Binding<SearchFieldState>?(v93, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
      v100 = *(v94 + 28);
      v101 = *(v94 + 1);
      *v93 = *v94;
      *(v93 + 16) = v101;
      *(v93 + 28) = v100;
    }
  }

  else if (v96)
  {
    *v93 = *v94;
    *(v93 + 8) = *(v94 + 1);
    v98 = v94[24];

    if (v98)
    {
      v99 = *(v94 + 2);
      *(v93 + 24) = v94[24];
      *(v93 + 16) = v99;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      *(v93 + 24) = 0;
    }

    *(v93 + 32) = *(v94 + 4);
    *(v93 + 40) = *(v94 + 10);
  }

  else
  {
    v103 = *v94;
    v104 = *(v94 + 1);
    *(v93 + 28) = *(v94 + 28);
    *v93 = v103;
    *(v93 + 16) = v104;
  }

  return v3;
}

_BYTE *initializeWithTake for SearchEnvironmentStorage.AllProperties(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v6, 1, v7))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
    memcpy(v5, v6, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = v6[1];
    *v5 = *v6;
    v5[1] = v11;
    type metadata accessor for Binding<SearchFieldState>(0);
    v13 = *(v12 + 32);
    v14 = v5 + v13;
    v15 = v6 + v13;
    *v14 = *(v6 + v13);
    v14[1] = *(v6 + v13 + 1);
    *(v14 + 1) = *(v6 + v13 + 2);
    v14[8] = *(v6 + v13 + 8);
    *(v14 + 1) = *(v6 + v13 + 4);
    v16 = type metadata accessor for SearchFieldState(0);
    v17 = v16[9];
    v18 = type metadata accessor for AttributedString();
    (*(*(v18 - 8) + 32))(&v14[v17], &v15[v17], v18);
    v14[v16[10]] = v15[v16[10]];
    v19 = v16[11];
    v20 = &v14[v19];
    v21 = &v15[v19];
    v20[4] = v21[4];
    *v20 = *v21;
    *(v5 + *(v8 + 36)) = *(v6 + *(v8 + 36));
    *(v5 + *(v8 + 40)) = *(v6 + *(v8 + 40));
    (*(v9 + 56))(v5, 0, 1, v8);
  }

  v22 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v23 = v22[5];
  v24 = (v5 + v23);
  v25 = (v6 + v23);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v27 = v26;
  v28 = *(v26 - 8);
  if ((*(v28 + 48))(v25, 1, v26))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    memcpy(v24, v25, *(*(v29 - 8) + 64));
  }

  else
  {
    v30 = v25[1];
    *v24 = *v25;
    v24[1] = v30;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v32 = *(v31 + 32);
    v33 = type metadata accessor for AttributedString();
    (*(*(v33 - 8) + 32))(v24 + v32, v25 + v32, v33);
    *(v24 + *(v27 + 36)) = *(v25 + *(v27 + 36));
    *(v24 + *(v27 + 40)) = *(v25 + *(v27 + 40));
    (*(v28 + 56))(v24, 0, 1, v27);
  }

  v34 = v22[6];
  v35 = (v5 + v34);
  v36 = (v6 + v34);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v38 = v37;
  v39 = *(v37 - 8);
  if ((*(v39 + 48))(v36, 1, v37))
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    memcpy(v35, v36, *(*(v40 - 8) + 64));
  }

  else
  {
    v58 = v39;
    v59 = v3;
    v41 = v36[1];
    *v35 = *v36;
    v35[1] = v41;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v43 = *(v42 + 32);
    v44 = v35 + v43;
    v45 = v36 + v43;
    v46 = type metadata accessor for TextSelection(0);
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v45, 1, v46))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v44, v45, *(*(v48 - 8) + 64));
    }

    else
    {
      v57 = v47;
      v49 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v50 - 8) + 32))(v44, v45, v50);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v44, v45, *(*(v49 - 8) + 64));
      }

      v44[*(v46 + 20)] = v45[*(v46 + 20)];
      (*(v57 + 56))(v44, 0, 1, v46);
    }

    *(v35 + *(v38 + 36)) = *(v36 + *(v38 + 36));
    *(v35 + *(v38 + 40)) = *(v36 + *(v38 + 40));
    (*(v58 + 56))(v35, 0, 1, v38);
    v3 = v59;
  }

  v51 = v22[7];
  v52 = v5 + v51;
  v53 = v6 + v51;
  v54 = *(v6 + v51 + 8);
  if (v54)
  {
    *v52 = *v53;
    *(v52 + 1) = v54;
    if (v53[24])
    {
      *(v52 + 2) = *(v53 + 2);
      v52[24] = v53[24];
    }

    else
    {
      swift_unknownObjectWeakTakeInit();
      v52[24] = 0;
    }

    *(v52 + 4) = *(v53 + 4);
    *(v52 + 10) = *(v53 + 10);
  }

  else
  {
    v55 = *(v53 + 1);
    *v52 = *v53;
    *(v52 + 1) = v55;
    *(v52 + 28) = *(v53 + 28);
  }

  return v3;
}

_BYTE *assignWithTake for SearchEnvironmentStorage.AllProperties(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v4, 1, v6);
  v11 = v9(v5, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = v5[1];
      *v4 = *v5;
      v4[1] = v12;
      type metadata accessor for Binding<SearchFieldState>(0);
      v14 = *(v13 + 32);
      v15 = v4 + v14;
      v16 = v5 + v14;
      *v15 = *(v5 + v14);
      v15[1] = *(v5 + v14 + 1);
      *(v15 + 1) = *(v5 + v14 + 2);
      v15[8] = *(v5 + v14 + 8);
      *(v15 + 1) = *(v5 + v14 + 4);
      v17 = type metadata accessor for SearchFieldState(0);
      v18 = v17[9];
      v19 = type metadata accessor for AttributedString();
      (*(*(v19 - 8) + 32))(&v15[v18], &v16[v18], v19);
      v15[v17[10]] = v16[v17[10]];
      v20 = v17[11];
      v21 = &v15[v20];
      v22 = &v16[v20];
      v21[4] = v22[4];
      *v21 = *v22;
      *(v4 + *(v7 + 36)) = *(v5 + *(v7 + 36));
      *(v4 + *(v7 + 40)) = *(v5 + *(v7 + 40));
      (*(v8 + 56))(v4, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    outlined destroy of Binding<SearchFieldState>?(v4, type metadata accessor for SearchBoundProperty<SearchFieldState>);
LABEL_6:
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
    memcpy(v4, v5, *(*(v23 - 8) + 64));
    goto LABEL_7;
  }

  *v4 = *v5;

  v4[1] = v5[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v58 = *(v57 + 32);
  v59 = v4 + v58;
  v60 = v5 + v58;
  *v59 = *(v5 + v58);
  v59[1] = *(v5 + v58 + 1);
  *(v59 + 1) = *(v5 + v58 + 2);
  v59[8] = *(v5 + v58 + 8);
  *(v59 + 1) = *(v5 + v58 + 4);
  v61 = type metadata accessor for SearchFieldState(0);
  v62 = v61[9];
  v63 = type metadata accessor for AttributedString();
  (*(*(v63 - 8) + 40))(&v59[v62], &v60[v62], v63);
  v59[v61[10]] = v60[v61[10]];
  v64 = v61[11];
  v65 = &v59[v64];
  v66 = &v60[v64];
  *v65 = *v66;
  v65[4] = v66[4];
  *(v4 + *(v7 + 36)) = *(v5 + *(v7 + 36));

  *(v4 + *(v7 + 40)) = *(v5 + *(v7 + 40));
LABEL_7:
  v24 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v25 = v24[5];
  v26 = v4 + v25;
  v27 = v5 + v25;
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v26, 1, v28);
  v33 = v31(v27, 1, v29);
  if (v32)
  {
    if (!v33)
    {
      v34 = *(v27 + 1);
      *v26 = *v27;
      *(v26 + 1) = v34;
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v36 = *(v35 + 32);
      v37 = type metadata accessor for AttributedString();
      (*(*(v37 - 8) + 32))(&v26[v36], &v27[v36], v37);
      *&v26[*(v29 + 36)] = *&v27[*(v29 + 36)];
      *&v26[*(v29 + 40)] = *&v27[*(v29 + 40)];
      (*(v30 + 56))(v26, 0, 1, v29);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v33)
  {
    outlined destroy of Binding<SearchFieldState>?(v26, type metadata accessor for SearchBoundProperty<AttributedString>);
LABEL_12:
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    memcpy(v26, v27, *(*(v38 - 8) + 64));
    goto LABEL_13;
  }

  *v26 = *v27;

  *(v26 + 1) = *(v27 + 1);

  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v68 = *(v67 + 32);
  v69 = type metadata accessor for AttributedString();
  (*(*(v69 - 8) + 40))(&v26[v68], &v27[v68], v69);
  *&v26[*(v29 + 36)] = *&v27[*(v29 + 36)];

  *&v26[*(v29 + 40)] = *&v27[*(v29 + 40)];
LABEL_13:
  v39 = v24[6];
  v40 = (v4 + v39);
  v41 = (v5 + v39);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v43 = v42;
  v44 = *(v42 - 8);
  v45 = *(v44 + 48);
  v46 = v45(v40, 1, v42);
  v47 = v45(v41, 1, v43);
  if (!v46)
  {
    if (v47)
    {
      outlined destroy of Binding<SearchFieldState>?(v40, type metadata accessor for SearchBoundProperty<TextSelection?>);
      goto LABEL_19;
    }

    v97 = v24;
    *v40 = *v41;

    v40[1] = v41[1];

    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v71 = *(v70 + 32);
    v72 = v40 + v71;
    v73 = v41 + v71;
    v74 = type metadata accessor for TextSelection(0);
    v93 = *(v74 - 8);
    __dst = v72;
    v75 = *(v93 + 48);
    LODWORD(v72) = v75(v72, 1, v74);
    __src = v73;
    v76 = v75(v73, 1, v74);
    if (v72)
    {
      if (!v76)
      {
        v83 = type metadata accessor for TextSelection.Indices(0);
        v24 = v97;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v84 - 8) + 32))(__dst, __src, v84);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, __src, *(*(v83 - 8) + 64));
        }

        *(__dst + *(v74 + 20)) = *(__src + *(v74 + 20));
        (*(v93 + 56))(__dst, 0, 1, v74);
        goto LABEL_42;
      }

      type metadata accessor for TextSelection?(0);
      v78 = *(*(v77 - 8) + 64);
      v79 = __dst;
    }

    else
    {
      if (!v76)
      {
        v24 = v97;
        if (a1 != a2)
        {
          outlined destroy of Binding<SearchFieldState>?(__dst, type metadata accessor for TextSelection.Indices);
          v85 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v86 - 8) + 32))(__dst, __src, v86);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(__dst, __src, *(*(v85 - 8) + 64));
          }
        }

        *(__dst + *(v74 + 20)) = *(__src + *(v74 + 20));
        goto LABEL_42;
      }

      outlined destroy of Binding<SearchFieldState>?(__dst, type metadata accessor for TextSelection);
      type metadata accessor for TextSelection?(0);
      v78 = *(*(v82 - 8) + 64);
      v79 = __dst;
    }

    memcpy(v79, v73, v78);
    v24 = v97;
LABEL_42:
    *(v40 + *(v43 + 36)) = *(v41 + *(v43 + 36));

    *(v40 + *(v43 + 40)) = *(v41 + *(v43 + 40));
    goto LABEL_43;
  }

  if (v47)
  {
LABEL_19:
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    memcpy(v40, v41, *(*(v56 - 8) + 64));
    goto LABEL_43;
  }

  v96 = v24;
  v48 = v41[1];
  *v40 = *v41;
  v40[1] = v48;
  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v50 = *(v49 + 32);
  v51 = v40 + v50;
  v52 = v41 + v50;
  v53 = type metadata accessor for TextSelection(0);
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v52, 1, v53))
  {
    type metadata accessor for TextSelection?(0);
    memcpy(v51, v52, *(*(v55 - 8) + 64));
  }

  else
  {
    v99 = v54;
    v80 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v81 - 8) + 32))(v51, v52, v81);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v51, v52, *(*(v80 - 8) + 64));
    }

    v51[*(v53 + 20)] = v52[*(v53 + 20)];
    (*(v99 + 56))(v51, 0, 1, v53);
  }

  *(v40 + *(v43 + 36)) = *(v41 + *(v43 + 36));
  *(v40 + *(v43 + 40)) = *(v41 + *(v43 + 40));
  (*(v44 + 56))(v40, 0, 1, v43);
  v24 = v96;
LABEL_43:
  v87 = v24[7];
  v88 = v4 + v87;
  v89 = v5 + v87;
  v90 = *(v5 + v87 + 8);
  if (*(v88 + 8))
  {
    if (v90)
    {
      *v88 = *v89;

      *(v88 + 8) = *(v89 + 1);

      if (*(v88 + 24))
      {
        if ((v89[24] & 1) == 0)
        {
          swift_unknownObjectWeakTakeInit();
          *(v88 + 24) = 0;
LABEL_59:
          *(v88 + 32) = *(v89 + 4);

LABEL_60:
          *(v88 + 40) = *(v89 + 10);
          return a1;
        }
      }

      else
      {
        if ((v89[24] & 1) == 0)
        {
          swift_unknownObjectWeakTakeAssign();
          goto LABEL_59;
        }

        outlined destroy of PlatformSearchPopoverAnchor(v88 + 16);
      }

      *(v88 + 16) = *(v89 + 2);
      *(v88 + 24) = v89[24];
      goto LABEL_59;
    }

    outlined destroy of Binding<SearchFieldState>?(v88, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
  }

  else if (v90)
  {
    *v88 = *v89;
    *(v88 + 8) = v90;
    if (v89[24])
    {
      *(v88 + 16) = *(v89 + 2);
      *(v88 + 24) = v89[24];
    }

    else
    {
      swift_unknownObjectWeakTakeInit();
      *(v88 + 24) = 0;
    }

    *(v88 + 32) = *(v89 + 4);
    goto LABEL_60;
  }

  v91 = *(v89 + 1);
  *v88 = *v89;
  *(v88 + 16) = v91;
  *(v88 + 28) = *(v89 + 28);
  return a1;
}

uint64_t type metadata completion function for SearchEnvironmentStorage.AllProperties()
{
  result = type metadata accessor for SearchEnvironmentStorage.BoundProperties(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for SearchEnvironmentTransformModifier.UpdateEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for SearchEnvironmentTransformModifier.UpdateEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = v4;
  return a1;
}

uint64_t assignWithTake for SearchEnvironmentTransformModifier.UpdateEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = v4;
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t partial apply for specialized closure #1 in SearchBoundProperty.matchesPlatform.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized closure #1 in SearchBoundProperty.matchesPlatform.getter(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void type metadata accessor for (TextSelection?, TextSelection?)()
{
  if (!lazy cache variable for type metadata for (TextSelection?, TextSelection?))
  {
    type metadata accessor for TextSelection?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TextSelection?, TextSelection?));
    }
  }
}

uint64_t outlined init with take of SearchEnvironmentStorage.AllProperties(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void _PullDownButton<>.init(_:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t instantiation function for generic protocol witness table for _PullDownButton<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _PullDownButton()
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

uint64_t *initializeBufferWithCopyOfBuffer for _PullDownButton(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 9;
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
    v19 = (v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
    v21 = *v20;
    LOBYTE(v18) = *(v20 + 8);
    outlined copy of Environment<Bool>.Content(*v20, v18);
    *v19 = v21;
    *(v19 + 8) = v18;
  }

  return v3;
}

uint64_t destroy for _PullDownButton(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = (*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v11 = *(v9 + 8);

  return outlined consume of Environment<Bool>.Content(v10, v11);
}

uint64_t initializeWithCopy for _PullDownButton(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v13) = *(v16 + 8);
  outlined copy of Environment<Bool>.Content(*v16, v13);
  *v15 = v17;
  *(v15 + 8) = v13;
  return a1;
}

uint64_t assignWithCopy for _PullDownButton(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v17 = *v16;
  LOBYTE(v13) = *(v16 + 8);
  outlined copy of Environment<Bool>.Content(*v16, v13);
  v18 = *v15;
  v19 = *(v15 + 8);
  *v15 = v17;
  *(v15 + 8) = v13;
  outlined consume of Environment<Bool>.Content(v18, v19);
  return a1;
}

uint64_t initializeWithTake for _PullDownButton(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 8);
  *v15 = *v16;
  *(v15 + 8) = v17;
  return a1;
}

uint64_t assignWithTake for _PullDownButton(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  v18 = *v15;
  v19 = *(v15 + 8);
  *v15 = v17;
  *(v15 + 8) = v16;
  outlined consume of Environment<Bool>.Content(v18, v19);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PullDownButton(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = (a2 - v10 + 255) >> 8;
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
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = *&a1[v13];
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

    v22 = &a1[v11] & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 > 1)
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

  v18 = a1[v13];
  if (!a1[v13])
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

void storeEnumTagSinglePayload for _PullDownButton(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v17 = ((v12 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) + 9;
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
    v18 = (a3 - v13 + 255) >> 8;
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
            *(v27 + 8) = 0;
            *v27 = a2 - 255;
          }

          else
          {
            *(v27 + 8) = -a2;
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
    v23 = (v22 >> 8) + 1;
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

Swift::Void __swiftcall DocumentViewController.setupLaunchOptions()()
{
  v1 = v0;
  v2 = [v0 launchOptions];
  v3 = *&v0[OBJC_IVAR____TtC7SwiftUI22DocumentViewController_documentBrowserMediator + 8];
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(ObjectType, v3);
  [v2 setBrowserViewController_];

  v6 = (*(v3 + 64))(ObjectType, v3);
  v9 = [v1 launchOptions];
  if (v6)
  {
    v7 = [objc_opt_self() createDocumentActionWithIntent_];
    [v9 setPrimaryAction_];

    v8 = v7;
  }

  else
  {
    [v9 setPrimaryAction_];
    v8 = v9;
  }
}

uint64_t DocumentViewController.rootModifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_rootModifier;
  swift_beginAccess();
  outlined assign with copy of RootModifier?(a1, v1 + v3);
  swift_endAccess();
  outlined init with copy of AnyAccessibilityValue?(v1 + v3, v10, &lazy cache variable for type metadata for RootModifier?);
  if (v11 == 1)
  {
    outlined destroy of AnyAccessibilityValue?(a1, &lazy cache variable for type metadata for RootModifier?);
    return outlined destroy of AnyAccessibilityValue?(v10, &lazy cache variable for type metadata for RootModifier?);
  }

  outlined init with take of RootModifier(v10, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v6 = Strong;
  type metadata accessor for DocumentHostingController(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_7:
    outlined destroy of AnyAccessibilityValue?(a1, &lazy cache variable for type metadata for RootModifier?);
    return outlined destroy of RootModifier(v12);
  }

  v8 = v7;
  outlined init with copy of RootModifier(v12, v10);
  v9 = direct field offset for DocumentHostingController.rootModifier;
  swift_beginAccess();
  outlined assign with copy of RootModifier(v10, v8 + v9);
  swift_endAccess();
  DocumentHostingController.scenesDidChange(phaseChanged:)(1);

  outlined destroy of AnyAccessibilityValue?(a1, &lazy cache variable for type metadata for RootModifier?);
  outlined destroy of RootModifier(v10);
  return outlined destroy of RootModifier(v12);
}

Swift::OpaquePointer_optional __swiftcall DocumentViewController.presentDocuments(at:)(Swift::OpaquePointer at)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(at._rawValue + 2))
  {
    goto LABEL_5;
  }

  v9 = *(v4 + 16);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9(v8, at._rawValue + v10, v3, v6);
  v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI22DocumentViewController_documentBrowserMediator + 8);
  ObjectType = swift_getObjectType();
  if (((*(v11 + 72))(v8, ObjectType, v11) & 1) == 0)
  {
    (*(v4 + 8))(v8, v3);
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<URL>, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18CD63400;
  (v9)(v13 + v10, v8, v3);
  (*(v4 + 8))(v8, v3);
  v14 = v13;
LABEL_6:
  result.value._rawValue = v14;
  result.is_nil = v5;
  return result;
}

void __swiftcall DocumentViewController.makeDocumentHostingController()(UIViewController *__return_ptr retstr)
{
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  type metadata accessor for IdentifiedDocumentGroupDocumentCreation();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v5 = [v1 document];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for PlatformDocument();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        IdentifiedDocumentGroupDocumentCreation.configuration(for:)(v7, &v18);
        if (*(&v18 + 1))
        {
          v29 = v22;
          v30 = v23;
          v31[0] = v24[0];
          *(v31 + 9) = *(v24 + 9);
          v25 = v18;
          v26 = v19;
          v27 = v20;
          v28 = v21;
          DocumentViewController.makeDocumentHostingController(_:_:)(v8, &v25);

          swift_unknownObjectRelease();
          outlined destroy of IdentifiedDocumentGroupConfiguration(&v25);
          return;
        }

        outlined destroy of AnyAccessibilityValue?(&v18, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
      }

      else
      {
      }
    }

    IdentifiedDocumentGroupDocumentCreation.defaultConfiguration.getter(&v18);
    if (*(&v18 + 1))
    {
      v29 = v22;
      v30 = v23;
      v31[0] = v24[0];
      *(v31 + 9) = *(v24 + 9);
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v28 = v21;
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      outlined init with copy of IdentifiedDocumentGroupConfiguration(&v25, &v18);
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = v12;
      v14 = v23;
      *(v13 + 96) = v22;
      *(v13 + 112) = v14;
      *(v13 + 128) = v24[0];
      *(v13 + 137) = *(v24 + 9);
      v15 = v19;
      *(v13 + 32) = v18;
      *(v13 + 48) = v15;
      v16 = v21;
      *(v13 + 64) = v20;
      *(v13 + 80) = v16;

      specialized IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:)(&v25, v4, 0, 0, partial apply for closure #1 in DocumentViewController.makeDocumentHostingController(), v13);

      outlined destroy of NavigationItemDescription?(v4, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      outlined destroy of IdentifiedDocumentGroupConfiguration(&v25);

      swift_beginAccess();
      v17 = *(v10 + 16);
      if (v17)
      {
        v17;

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      outlined destroy of AnyAccessibilityValue?(&v18, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
    }

    [objc_allocWithZone(MEMORY[0x1E69DD258]) initWithNibName:0 bundle:0];
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x1E69DD258]);

    [v9 initWithNibName:0 bundle:0];
  }
}

uint64_t DocumentViewController.updateInheritedEnvironment(with:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7[0] = Strong, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController), type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for InheritedEnvironmentSettable), (swift_dynamicCast() & 1) != 0))
  {
    v4 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v5 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
      v7[0] = v1;
      v7[1] = v2;
      (*(v5 + 8))(v7, v4, v5);
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  return outlined destroy of NewDocumentProvider?(&v8, &lazy cache variable for type metadata for InheritedEnvironmentSettable?, &lazy cache variable for type metadata for InheritedEnvironmentSettable, &protocol descriptor for InheritedEnvironmentSettable, type metadata accessor for CVarArg);
}

unint64_t *DocumentViewController.makeDocumentHostingController(_:_:)(void *a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_rootModifier;
  swift_beginAccess();
  outlined init with copy of AnyAccessibilityValue?(v2 + v15, v52, &lazy cache variable for type metadata for RootModifier?);
  if (v52[6] == 1)
  {
    outlined destroy of AnyAccessibilityValue?(v52, &lazy cache variable for type metadata for RootModifier?);
    return [objc_allocWithZone(MEMORY[0x1E69DD258]) initWithNibName:0 bundle:0];
  }

  else
  {
    outlined init with take of RootModifier(v52, v53);
    outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v52);
    outlined init with copy of RootModifier(v53, v51);
    NavigationItemDescription.init(from:)([v2 navigationItem], v14);
    v41 = type metadata accessor for NavigationItemDescription(0);
    v17 = *(v41 - 8);
    v42 = *(v17 + 56);
    v43 = v17 + 56;
    v42(v14, 0, 1, v41);
    *&v44 = DocumentViewController.presentationModeLocation.getter();
    v18 = objc_allocWithZone(type metadata accessor for DocumentHostingController(0));
    *&v18[direct field offset for DocumentHostingController.lastVersion] = 0;
    outlined init with copy of IdentifiedDocumentGroupConfiguration(v52, &v18[direct field offset for DocumentHostingController.configuration]);
    *&v18[direct field offset for DocumentHostingController.document] = a1;
    outlined init with copy of RootModifier(v51, &v18[direct field offset for DocumentHostingController.rootModifier]);
    outlined init with copy of IdentifiedDocumentGroupConfiguration(v52, v49);
    outlined init with copy of RootModifier(v51, v48);
    outlined init with copy of IdentifiedDocumentGroupConfiguration(v49, v47);
    outlined init with copy of RootModifier(v48, v46);
    v19 = swift_allocObject();
    v40 = v6;
    v20 = v19;
    v21 = v49[5];
    v19[5] = v49[4];
    v19[6] = v21;
    v19[7] = v50[0];
    *(v19 + 121) = *(v50 + 9);
    v22 = v49[1];
    v19[1] = v49[0];
    v19[2] = v22;
    v23 = v49[3];
    v19[3] = v49[2];
    v19[4] = v23;
    outlined init with take of RootModifier(v48, (v19 + 9));
    *(v20 + 32) = a1;
    v39 = type metadata accessor for NavigationItemDescription;
    v24 = MEMORY[0x1E69E6720];
    v45 = v14;
    _s10Foundation3URLVSgWOcTm_0(v14, v11, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
    v25 = a1;
    v26 = [v25 undoManager];
    v27 = direct field offset for URLDocumentHostingController.navigationItemDescription;
    v42(&v18[direct field offset for URLDocumentHostingController.navigationItemDescription], 1, 1, v41);
    v28 = direct field offset for URLDocumentHostingController._undoManager;
    *&v18[direct field offset for URLDocumentHostingController._undoManager] = 0;
    v29 = &v18[direct field offset for URLDocumentHostingController.content];
    *v29 = partial apply for closure #1 in DocumentHostingController.init(document:configuration:rootModifier:navigationItemDescription:presentationMode:);
    v29[1] = v20;
    swift_beginAccess();

    outlined assign with copy of NavigationItemDescription?(v11, &v18[v27]);
    swift_endAccess();
    v30 = &v18[direct field offset for URLDocumentHostingController.presentationMode];
    v31 = v44;
    *v30 = 0;
    *(v30 + 1) = v31;
    v30[16] = 1;
    v32 = *&v18[v28];
    *&v18[v28] = v26;
    v33 = v26;

    v34 = v47[8];
    outlined init with copy of RootModifier(v46, (v8 + 8));
    v44 = *&v25[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox];
    *(v8 + 120) = v44;
    *v8 = v34;
    _s10Foundation3URLVSgWOcTm_0(v11, &v8[*(v40 + 36)], &lazy cache variable for type metadata for NavigationItemDescription?, v39, v24);
    swift_unknownObjectRetain();

    v16 = specialized UIHostingController.init(rootView:)(v8);
    *(*(v16 + direct field offset for UIHostingController.host) + *((*MEMORY[0x1E69E7D40] & **(v16 + direct field offset for UIHostingController.host)) + 0x1C0) + 8) = &protocol witness table for URLDocumentHostingController<A>;
    swift_unknownObjectWeakAssign();
    v35 = static AppGraph.shared;
    if (static AppGraph.shared)
    {

      specialized AppGraph.addObserver(_:)(v16, v35);
    }

    else
    {
    }

    v36 = MEMORY[0x1E69E6720];
    outlined destroy of NavigationItemDescription?(v11, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
    outlined destroy of RootModifier(v46);
    outlined destroy of NavigationItemDescription?(v45, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, v36);
    outlined destroy of RootModifier(v51);
    outlined destroy of IdentifiedDocumentGroupConfiguration(v52);
    outlined destroy of RootModifier(v53);
    outlined destroy of IdentifiedDocumentGroupConfiguration(v47);
  }

  return v16;
}

Swift::Void __swiftcall DocumentViewController.dismissDocument()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v53 - v4;
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  static Log.documents.getter();
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    outlined destroy of NavigationItemDescription?(v13, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  }

  else
  {
    v57 = v16;
    v17 = v5;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v14;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_18BD4A000, v18, v19, "DocumentViewController.dismissDocument", v21, 2u);
      v22 = v21;
      v14 = v20;
      MEMORY[0x18D0110E0](v22, -1, -1);
    }

    (*(v15 + 8))(v13, v14);
    v5 = v17;
    v16 = v57;
  }

  static Log.documents.getter();
  v23 = v16(v10, 1, v14);
  v58 = v15;
  if (v23 == 1)
  {
    outlined destroy of NavigationItemDescription?(v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v56 = v26;
      v57 = swift_slowAlloc();
      v60[0] = v57;
      *v26 = 136315138;
      v27 = [objc_opt_self() _printHierarchy];
      v55 = v25;
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v24;
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v60);

      v33 = v56;
      *(v56 + 1) = v32;
      v15 = v58;
      v34 = v54;
      _os_log_impl(&dword_18BD4A000, v54, v55, "Before removing (VC hierarchy):\n%s", v33, 0xCu);
      v35 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x18D0110E0](v35, -1, -1);
      MEMORY[0x18D0110E0](v33, -1, -1);
    }

    else
    {
    }

    (*(v15 + 8))(v10, v14);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [Strong view];

    if (!v38)
    {
      __break(1u);
      return;
    }

    [v38 removeFromSuperview];
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  [v39 removeFromParentViewController];

  swift_unknownObjectWeakAssign();
  v40 = type metadata accessor for NavigationItemDescription(0);
  (*(*(v40 - 8) + 56))(v5, 1, 1, v40);
  v41 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_lastNavigationItemDescription;
  swift_beginAccess();
  outlined assign with take of NavigationItemDescription?(v5, v1 + v41);
  swift_endAccess();
  v42 = [v1 launchOptions];
  [v42 setDocumentTargetView_];

  v43 = v59;
  static Log.documents.getter();
  if (v16(v43, 1, v14) == 1)
  {
    outlined destroy of NavigationItemDescription?(v59, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  }

  else
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60[0] = v47;
      *v46 = 136315138;
      v48 = [objc_opt_self() _printHierarchy];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v60);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_18BD4A000, v44, v45, "After removing (VC hierarchy):\n%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x18D0110E0](v47, -1, -1);
      MEMORY[0x18D0110E0](v46, -1, -1);
    }

    (*(v58 + 8))(v59, v14);
  }
}

Swift::Void __swiftcall DocumentViewController.presentDocument()()
{
  v1 = v0;
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  static Log.documents.getter();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v7 = outlined destroy of NavigationItemDescription?(v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_18BD4A000, v8, v9, "presentDocument called", v10, 2u);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    v7 = (*(v6 + 8))(v4, v5);
  }

  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(v7);
  UIDocumentViewController.embedDocumentHostingController(_:)(v11);
  swift_unknownObjectWeakAssign();
  v12 = [v1 launchOptions];
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = [Strong view];

  [v12 setDocumentTargetView_];
}

uint64_t DocumentViewController.presentationModeLocation.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController____lazy_storage___presentationModeLocation;
  if (*(v0 + OBJC_IVAR____TtC7SwiftUI22DocumentViewController____lazy_storage___presentationModeLocation))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI22DocumentViewController____lazy_storage___presentationModeLocation);
  }

  else
  {
    swift_unknownObjectWeakInit();
    type metadata accessor for LocationBox<DocumentPresentationModeLocation>();
    swift_allocObject();
    v2 = LocationBox.init(_:)();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t closure #1 in DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)(void *a1)
{
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v7 = a1;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:), v9);
}

uint64_t closure #1 in closure #1 in DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:), v7, v6);
}

uint64_t closure #1 in closure #1 in DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong setDocument_];
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

void DocumentViewController.document.didset(id a1)
{
  v2 = v1;
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = [v2 document];
  if (v8)
  {
  }

  else if (a1)
  {
    v11 = *&v2[OBJC_IVAR____TtC7SwiftUI22DocumentViewController_onDocumentClose];
    if (v11)
    {

      v12 = [a1 fileURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
      v11(v7);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
      outlined destroy of NavigationItemDescription?(v7, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    }

    return;
  }

  v9 = [v2 document];
  if (v9)
  {
    v10 = v9;

    if (v10 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  DocumentViewController.dismissDocument()();
}

Swift::Void __swiftcall DocumentViewController.navigationItemDidUpdate()()
{
  type metadata accessor for (NavigationItemDescription?, NavigationItemDescription?)();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v127 = (&v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v121 = &v112 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v112 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v112 - v12;
  v128 = type metadata accessor for NavigationItemDescription(0);
  v13 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v116 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v129 = (&v112 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v117 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v112 - v20);
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], v3);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v118 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v119 = &v112 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v112 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v112 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v112 - v32;
  static Log.documents.getter();
  v34 = type metadata accessor for Logger();
  v130 = *(v34 - 8);
  v35 = v130 + 48;
  v36 = *(v130 + 48);
  if (v36(v33, 1, v34) == 1)
  {
    outlined destroy of NavigationItemDescription?(v33, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  }

  else
  {
    v115 = v1;
    v37 = v10;
    v38 = v13;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v125 = v36;
      v126 = v35;
      v42 = v21;
      v43 = v34;
      v44 = v41;
      *v41 = 0;
      _os_log_impl(&dword_18BD4A000, v39, v40, "Navigation item did update", v41, 2u);
      v45 = v44;
      v34 = v43;
      v21 = v42;
      v35 = v126;
      v36 = v125;
      MEMORY[0x18D0110E0](v45, -1, -1);
    }

    (*(v130 + 8))(v33, v34);
    v13 = v38;
    v10 = v37;
    v1 = v115;
  }

  v46 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_documentHostingController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    NavigationItemDescription.init(from:)([v131 navigationItem], v21);
    static Log.documents.getter();
    v48 = v36(v30, 1, v34);
    v115 = v46;
    v123 = v34;
    v126 = v35;
    v125 = v36;
    if (v48 == 1)
    {
      outlined destroy of NavigationItemDescription?(v30, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    }

    else
    {
      v49 = Logger.logObject.getter();
      LODWORD(v114) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v114))
      {
        v50 = swift_slowAlloc();
        v112 = v50;
        v113 = swift_slowAlloc();
        v136 = v113;
        *v50 = 136315138;
        *&v133 = 0;
        *(&v133 + 1) = 0xE000000000000000;
        swift_beginAccess();
        _print_unlocked<A, B>(_:_:)();
        v51 = v34;
        v52 = v1;
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, *(&v133 + 1), &v136);

        v54 = v112;
        *(v112 + 1) = v53;
        v1 = v52;
        v34 = v51;
        v55 = v54;
        _os_log_impl(&dword_18BD4A000, v49, v114, "New navigation item description: %s", v54, 0xCu);
        v56 = v113;
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x18D0110E0](v56, -1, -1);
        MEMORY[0x18D0110E0](v55, -1, -1);
      }

      (*(v130 + 8))(v30, v34);
    }

    swift_beginAccess();
    v57 = v124;
    outlined init with copy of NavigationItemDescription(v21, v124);
    v58 = v128;
    v114 = *(v13 + 56);
    v113 = v13 + 56;
    v114(v57, 0, 1, v128);
    v59 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_lastNavigationItemDescription;
    v60 = v131;
    swift_beginAccess();
    v61 = *(v1 + 48);
    v62 = v57;
    v63 = v127;
    outlined init with take of NavigationItemDescription?(v62, v127);
    v64 = v60 + v59;
    v65 = v63;
    _s10Foundation3URLVSgWOcTm_0(v64, v63 + v61, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
    v66 = *(v13 + 48);
    if (v66(v65, 1, v58) == 1)
    {
      if (v66(v65 + v61, 1, v58) == 1)
      {
        outlined destroy of NavigationItemDescription?(v65, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
LABEL_60:
        _s7SwiftUI16CommandOperationVWOhTm_1(v21, type metadata accessor for NavigationItemDescription);
        return;
      }
    }

    else
    {
      _s10Foundation3URLVSgWOcTm_0(v65, v10, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
      if (v66(v65 + v61, 1, v58) != 1)
      {
        v72 = v117;
        _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWObTm_0(v65 + v61, v117, type metadata accessor for NavigationItemDescription);
        v73 = *(v58 + 28);
        v74 = v10;
        v75 = *&v10[v73];
        v76 = *(v72 + v73);
        _s7SwiftUI16CommandOperationVWOhTm_1(v72, type metadata accessor for NavigationItemDescription);
        if (v75 == -1 || v76 == -1)
        {
          _s7SwiftUI16CommandOperationVWOhTm_1(v74, type metadata accessor for NavigationItemDescription);
          outlined destroy of NavigationItemDescription?(v127, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
        }

        else
        {
          _s7SwiftUI16CommandOperationVWOhTm_1(v74, type metadata accessor for NavigationItemDescription);
          outlined destroy of NavigationItemDescription?(v127, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
          if (v75 == v76)
          {
            goto LABEL_60;
          }
        }

LABEL_18:
        v67 = v121;
        _s10Foundation3URLVSgWOcTm_0(v131 + v59, v121, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
        if (v66(v67, 1, v58) == 1)
        {
          outlined destroy of NavigationItemDescription?(v67, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
          v68 = v118;
          static Log.documents.getter();
          if (v125(v68, 1, v123) == 1)
          {
            outlined destroy of NavigationItemDescription?(v68, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
          }

          else
          {
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              *v79 = 0;
              _os_log_impl(&dword_18BD4A000, v77, v78, "Last navigation item description is nil", v79, 2u);
              MEMORY[0x18D0110E0](v79, -1, -1);
            }

            (*(v130 + 8))(v68, v123);
          }
        }

        else
        {
          v69 = v59;
          _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWObTm_0(v67, v129, type metadata accessor for NavigationItemDescription);
          v70 = v120;
          static Log.documents.getter();
          if (v125(v70, 1, v123) == 1)
          {
            outlined destroy of NavigationItemDescription?(v70, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
            v71 = v119;
          }

          else
          {
            v80 = v116;
            outlined init with copy of NavigationItemDescription(v129, v116);
            v81 = Logger.logObject.getter();
            v82 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v132 = v84;
              *&v133 = 0;
              *v83 = 136315138;
              *(&v133 + 1) = 0xE000000000000000;
              _print_unlocked<A, B>(_:_:)();
              v127 = v21;
              v85 = v133;
              _s7SwiftUI16CommandOperationVWOhTm_1(v80, type metadata accessor for NavigationItemDescription);
              v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, *(&v85 + 1), &v132);

              *(v83 + 4) = v86;
              v21 = v127;
              _os_log_impl(&dword_18BD4A000, v81, v82, "Last navigation item description: %s", v83, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v84);
              v87 = v84;
              v58 = v128;
              MEMORY[0x18D0110E0](v87, -1, -1);
              MEMORY[0x18D0110E0](v83, -1, -1);
            }

            else
            {

              _s7SwiftUI16CommandOperationVWOhTm_1(v80, type metadata accessor for NavigationItemDescription);
            }

            v71 = v119;
            (*(v130 + 8))(v120, v123);
          }

          swift_beginAccess();
          v88 = v21[1];
          if (v88)
          {
            v89 = *v21;
          }

          else
          {
            v89 = *v129;
          }

          *v21 = v89;
          v21[1] = v88;
          MEMORY[0x1EEE9AC00](v88);
          v90 = v129;
          *(&v112 - 2) = v129;
          NavigationTitleStorage.reduce(onto:)(partial apply for implicit closure #2 in NavigationItemDescription.merge(with:));
          ToolbarStorage.NavigationProperties.merge(_:)(v90 + *(v58 + 24));
          v91 = *(v58 + 28);
          v92 = *(v21 + v91);
          if (v92 != -1)
          {
            v93 = *(v129 + v91);
            if (v93)
            {
              if (v92 && v93 != -1)
              {
                v93 = merge32(_:_:)(v92, v93);
              }

              *(v21 + v91) = v93;
            }
          }

          swift_endAccess();
          static Log.documents.getter();
          if (v125(v71, 1, v123) == 1)
          {
            _s7SwiftUI16CommandOperationVWOhTm_1(v129, type metadata accessor for NavigationItemDescription);
            outlined destroy of NavigationItemDescription?(v71, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
          }

          else
          {
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v132 = v97;
              *&v133 = 0;
              *v96 = 136315138;
              *(&v133 + 1) = 0xE000000000000000;
              _print_unlocked<A, B>(_:_:)();
              v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, *(&v133 + 1), &v132);
              v71 = v119;

              *(v96 + 4) = v98;
              v58 = v128;
              _os_log_impl(&dword_18BD4A000, v94, v95, "Merged navigation item description: %s", v96, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v97);
              MEMORY[0x18D0110E0](v97, -1, -1);
              MEMORY[0x18D0110E0](v96, -1, -1);
            }

            _s7SwiftUI16CommandOperationVWOhTm_1(v129, type metadata accessor for NavigationItemDescription);
            (*(v130 + 8))(v71, v123);
          }

          v59 = v69;
        }

        v99 = v122;
        outlined init with copy of NavigationItemDescription(v21, v122);
        v114(v99, 0, 1, v58);
        v100 = v131;
        swift_beginAccess();
        outlined assign with take of NavigationItemDescription?(v99, v100 + v59);
        swift_endAccess();
        v101 = swift_unknownObjectWeakLoadStrong();
        if (v101 && (v132 = v101, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController), type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for NavigationItemDescriptionProviding), (swift_dynamicCast() & 1) != 0))
        {
          if (*(&v134 + 1))
          {
            v102 = v122;
            _s10Foundation3URLVSgWOcTm_0(v131 + v59, v122, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
            v103 = *(&v134 + 1);
            v104 = v135;
            __swift_mutable_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
            (*(v104 + 16))(v102, v103, v104);
          }
        }

        else
        {
          v135 = 0;
          v133 = 0u;
          v134 = 0u;
        }

        v105 = swift_unknownObjectWeakLoadStrong();
        if (v105)
        {
          v106 = v105;
          ObjectType = swift_getObjectType();
          v108 = swift_conformsToProtocol2();
          if (v108)
          {
            v109 = *(v108 + 8);
            v110 = v108;
            v111 = v106;
            v109(1, ObjectType, v110);
          }
        }

        outlined destroy of NewDocumentProvider?(&v133, &lazy cache variable for type metadata for NavigationItemDescriptionProviding?, &lazy cache variable for type metadata for NavigationItemDescriptionProviding, &protocol descriptor for NavigationItemDescriptionProviding, type metadata accessor for CVarArg);
        goto LABEL_60;
      }

      _s7SwiftUI16CommandOperationVWOhTm_1(v10, type metadata accessor for NavigationItemDescription);
    }

    _s7SwiftUI16CommandOperationVWOhTm_1(v65, type metadata accessor for (NavigationItemDescription?, NavigationItemDescription?));
    goto LABEL_18;
  }
}

void NavigationItemDescription.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationItemDescription(0);
  v8 = *(v7 + 28);
  *(a2 + v8) = 0;
  v9 = [a1 title];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *a2 = v11;
    *(a2 + 8) = v13;
    if (v13)
    {
      v31 = v11;
      v32 = v13;
      lazy protocol witness table accessor for type String and conformance String();

      v13 = Text.init<A>(_:)();
      v15 = v14;
      v17 = v16;
      v19 = v18 & 1;
    }

    else
    {
      v15 = 0;
      v19 = 0;
      v17 = 0;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v19 = 0;
    v17 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v20 = [a1 largeTitleDisplayMode];
  if (v20 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 32) = v19;
    *(a2 + 40) = v17;
    *(a2 + 48) = 1;
    *(a2 + 56) = 0x3030100u >> (8 * v20);
    *(a2 + 64) = 0;
    *(a2 + 72) = 3;
    v21 = [a1 _objc_renameDelegate];
    v30 = v7;
    if (v21)
    {
      swift_getObjectType();
      v22 = swift_conformsToProtocol2();
      v23 = v8;
      if (!v22)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v23 = v8;
      v22 = 0;
    }

    v24 = [a1 documentProperties];
    if (v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }

    swift_unknownObjectRetain();
    v26 = [a1 backAction];
    v27 = *(v4 + 32);
    v28 = type metadata accessor for PlatformItemList.Item();
    (*(*(v28 - 8) + 56))(&v6[v27], 1, 1, v28);
    *v6 = v24;
    v6[8] = v25;
    *(v6 + 2) = 0;
    v6[24] = -2;
    *(v6 + 5) = v22;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    *(v6 + 6) = v26;
    _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWObTm_0(v6, a2 + *(v30 + 24), type metadata accessor for ToolbarStorage.NavigationProperties);
    *(a2 + v23) = static NavigationItemDescription.nextSeedValue;
    [a1 setDocumentProperties_];
    ++static NavigationItemDescription.nextSeedValue;
    swift_unknownObjectRelease();
  }
}

void closure #1 in DocumentViewController.makeDocumentHostingController()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = a1;
      v10 = DocumentViewController.makeDocumentHostingController(_:_:)(v9, a4);
    }

    else
    {
      v10 = 0;
    }

    swift_beginAccess();
    v11 = *(a2 + 16);
    *(a2 + 16) = v10;
  }
}

Swift::Void __swiftcall UIDocumentViewController.embedDocumentHostingController(_:)(UIViewController_optional *a1)
{
  v2 = v1;
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  static Log.documents.getter();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v65 = *(v11 + 48);
  v66 = v11 + 48;
  v12 = v65(v9, 1, v10);
  v67 = v2;
  if (v12 == 1)
  {
    outlined destroy of NavigationItemDescription?(v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v64 = v11;
      v16 = v15;
      v62 = swift_slowAlloc();
      v68 = v62;
      *v16 = 136315138;
      v17 = [objc_opt_self() _printHierarchy];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v10;
      v20 = v6;
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v22, &v68);
      v6 = v20;
      v10 = v19;
      v2 = v67;

      *(v16 + 4) = v23;
      _os_log_impl(&dword_18BD4A000, v13, v14, "UIDocumentViewController.embedDocumentHostingController \nBefore embedding (VC hierarchy):\n%s", v16, 0xCu);
      v24 = v62;
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x18D0110E0](v24, -1, -1);
      v25 = v16;
      v11 = v64;
      MEMORY[0x18D0110E0](v25, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    if (!a1)
    {
      return;
    }
  }

  v26 = a1;
  v27 = [v2 childViewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = v6;
  v64 = v11;
  if (v28 >> 62)
  {
    goto LABEL_22;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
    while (1)
    {
      v30 = 0;
      while ((v28 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x18D00E9C0](v30, v28);
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        v33 = v31;
        swift_unknownObjectRelease();
        if (v33 == v26)
        {
          goto LABEL_19;
        }

LABEL_15:
        if (v30 == v29)
        {
          goto LABEL_23;
        }
      }

      if ((v30 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v29 = __CocoaSet.count.getter();
      if (!v29)
      {
        goto LABEL_23;
      }
    }

    if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    if (*(v28 + 32 + 8 * v30) == v26)
    {
LABEL_19:

      return;
    }

    ++v30;
    goto LABEL_15;
  }

LABEL_23:

  v34 = v67;
  [v67 addChildViewController_];
  v35 = [v34 view];
  if (!v35)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v36 = v35;
  v37 = [(UIViewController_optional *)v26 view];
  if (!v37)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v38 = v37;
  [v36 addSubview_];

  v39 = [(UIViewController_optional *)v26 view];
  if (!v39)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v40 = v39;
  v41 = [v39 superview];
  if (!v41)
  {
LABEL_50:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v42 = v41;
  v43 = UIView.constrainToView(_:exceptEdges:identifier:)(v41, 0, 0xD00000000000001BLL, 0x800000018CD518A0);

  if (v43 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v45 = 0;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x18D00E9C0](v45, v43);
      }

      else
      {
        if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v46 = *(v43 + 8 * v45 + 32);
      }

      v47 = v46;
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      [v46 setActive_];

      ++v45;
      if (v48 == i)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:

  [(UIViewController_optional *)v26 didMoveToParentViewController:v67];
  v49 = v63;
  static Log.documents.getter();
  if (v65(v49, 1, v10) == 1)
  {

    outlined destroy of NavigationItemDescription?(v49, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  }

  else
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v10;
      v53 = v49;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v68 = v55;
      *v54 = 136315138;
      v56 = [objc_opt_self() _printHierarchy];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v68);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_18BD4A000, v50, v51, "After embedding (VC hierarchy): \n%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x18D0110E0](v55, -1, -1);
      v49 = v53;
      v10 = v52;
      MEMORY[0x18D0110E0](v54, -1, -1);
    }

    (*(v64 + 8))(v49, v10);
  }
}

void type metadata completion function for DocumentViewController()
{
  type metadata accessor for NavigationItemDescription?(319, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void closure #1 in DocumentViewController.presentationController(_:willPresentWithAdaptiveStyle:transitionCoordinator:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DocumentViewController.dismissDocument()();
  }
}

Swift::Void __swiftcall DocumentViewController.presentationControllerWillDismiss(_:)(UIPresentationController a1)
{
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  static Log.documents.getter();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of NavigationItemDescription?(v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  }

  else
  {
    v8 = v1;
    v9 = a1.super.isa;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v12 = 136315906;
      swift_getObjectType();
      v13 = _typeName(_:qualified:)();
      HIDWORD(v24) = v11;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v29);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v27 = 30768;
      v28 = 0xE200000000000000;
      v26 = v8;
      lazy protocol witness table accessor for type Int and conformance Int();
      v16 = String.init<A>(_:radix:uppercase:)();
      MEMORY[0x18D00C9B0](v16);

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v29);

      *(v12 + 14) = v17;
      *(v12 + 22) = 2080;
      swift_getObjectType();
      v18 = _typeName(_:qualified:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);

      *(v12 + 24) = v20;
      *(v12 + 32) = 2080;
      v26 = v9;
      v27 = 30768;
      v28 = 0xE200000000000000;
      v21 = String.init<A>(_:radix:uppercase:)();
      MEMORY[0x18D00C9B0](v21);

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v29);

      *(v12 + 34) = v22;
      _os_log_impl(&dword_18BD4A000, v10, BYTE4(v24), "DocumentViewController.presentationControllerWillDismiss. self: %s <%s>, presentation controller: %s <%s>", v12, 0x2Au);
      v23 = v25;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v23, -1, -1);
      MEMORY[0x18D0110E0](v12, -1, -1);
    }

    (*(v7 + 8))(v5, v6);
  }
}

void URLDocumentHostingController.setInheritedEnvironment(env:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = specialized UIHostingController.host.getter();
  *&v5 = v1;
  *(&v5 + 1) = v2;

  v4 = v3;

  _UIHostingView.inheritedEnvironment.setter(&v5);
}

void protocol witness for Location.get() in conformance DocumentPresentationModeLocation(BOOL *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = [Strong document];

  if (v3)
  {
  }

  *a1 = v3 != 0;
}

void protocol witness for Location.set(_:transaction:) in conformance DocumentPresentationModeLocation(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong setDocument_];
    }
  }
}

uint64_t protocol witness for Location.update() in conformance DocumentPresentationModeLocation(BOOL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = [Strong document];

  if (v3)
  {
  }

  *a1 = v3 != 0;
  return 1;
}

uint64_t static DocumentBrowserMediator.resolveBrowserContextMenu(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for ((_:))?, type metadata accessor for (_:), MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  v3 = *v66;
  if (!*v66)
  {
    return v2;
  }

  *&v49 = v2;
  (*v66)(v66, &v49);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3);
  v5 = 0;
  v32 = 0;
  v33 = *&v66[16];
  v31 = *&v66[16] + 32;
  while (1)
  {
    v6 = *(v33 + 16);
    if (v5 == v6)
    {
LABEL_17:

      return v2;
    }

    if (v5 >= v6)
    {
      break;
    }

    v7 = v32;
    *v66 = v32;
    result = outlined init with copy of PlatformItem(v31 + 632 * v5, &v66[8]);
    ++v32;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    ++v5;
    v8 = *v66;
    if (!*&v66[8])
    {
      goto LABEL_17;
    }

    *v66 = *&v66[8];
    *&v66[16] = *&v66[24];
    *&v66[32] = *&v66[40];
    *&v66[48] = *&v66[56];
    *&v66[64] = *&v66[72];
    *&v66[80] = *&v66[88];
    *&v66[96] = *&v66[104];
    *&v66[112] = *&v66[120];
    *&v66[128] = *&v66[136];
    *&v66[144] = *&v66[152];
    *&v66[160] = *&v66[168];
    *&v66[176] = *&v66[184];
    *&v66[192] = *&v66[200];
    *&v66[208] = *&v66[216];
    *&v66[224] = *&v66[232];
    *&v66[240] = *&v66[248];
    *&v66[256] = *&v66[264];
    *&v66[272] = *&v66[280];
    *&v66[288] = *&v66[296];
    *&v66[304] = *&v66[312];
    *&v66[320] = *&v66[328];
    *&v66[336] = *&v66[344];
    *&v66[352] = *&v66[360];
    *&v66[368] = *&v66[376];
    *&v66[384] = *&v66[392];
    *&v66[400] = *&v66[408];
    *&v66[416] = *&v66[424];
    *&v66[432] = *&v66[440];
    *&v66[448] = *&v66[456];
    *&v66[464] = *&v66[472];
    *&v66[480] = *&v66[488];
    *&v66[496] = *&v66[504];
    *&v66[512] = *&v66[520];
    *&v66[528] = *&v66[536];
    *&v66[544] = *&v66[552];
    *&v66[560] = *&v66[568];
    *&v66[576] = *&v66[584];
    *&v66[592] = *&v66[600];
    *&v66[608] = *&v66[616];
    v66[624] = v67;
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v9 = *v66;
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](*(v9 + 16));
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 32);
      do
      {
        v12 = *v11++;
        Hasher._combine(_:)(v12);
        --v10;
      }

      while (v10);
    }

    *&v49 = Hasher._finalize()();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;

    v64 = v13;
    v65 = v15;
    MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD517C0);
    v16 = v64;
    v17 = v65;
    v61 = *&v66[224];
    v62 = *&v66[240];
    v63 = *&v66[256];
    v57 = *&v66[160];
    v58 = *&v66[176];
    v59 = *&v66[192];
    v60 = *&v66[208];
    v53 = *&v66[96];
    v54 = *&v66[112];
    v55 = *&v66[128];
    v56 = *&v66[144];
    v49 = *&v66[32];
    v50 = *&v66[48];
    v51 = *&v66[64];
    v52 = *&v66[80];
    if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v49) == 1 || (v46 = v61, v47 = v62, v48 = v63, v42 = v57, v43 = v58, v44 = v59, v45 = v60, v38 = v53, v39 = v54, v40 = v55, v41 = v56, aBlock = v49, v35 = v50, v36 = v51, v37 = v52, (v18 = PlatformItem.PrimaryContent.text.getter()) == 0))
    {
      v23 = 0xE800000000000000;
      v21 = 0x656C746974206F6ELL;
    }

    else
    {
      v19 = v18;
      v20 = [v18 string];

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v8;
    v25 = objc_allocWithZone(MEMORY[0x1E699A350]);
    v26 = MEMORY[0x18D00C850](v16, v17);

    v27 = MEMORY[0x18D00C850](v21, v23);

    *&v36 = partial apply for closure #2 in static DocumentBrowserMediator.resolveBrowserContextMenu(_:);
    *(&v36 + 1) = v24;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v35 = thunk for @escaping @callee_guaranteed (@guaranteed [URL]) -> ();
    *(&v35 + 1) = &block_descriptor_51;
    v28 = _Block_copy(&aBlock);
    v29 = [v25 initWithIdentifier:v26 localizedTitle:v27 availability:1 handler:v28];

    _Block_release(v28);

    v30 = v29;
    MEMORY[0x18D00CC30]();
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    result = outlined destroy of PlatformItem(v66);
    v2 = v68;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t *closure #1 in static DocumentBrowserMediator.resolveBrowserContextMenu(_:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for (_:)();
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t closure #2 in static DocumentBrowserMediator.resolveBrowserContextMenu(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for PlatformItems?);
  result = static Update.ensure<A>(_:)();
  if (v10)
  {
    if ((a3 & 0x8000000000000000) != 0 || *(v10 + 16) <= a3)
    {
      bzero(v9, 0x271uLL);
    }

    else
    {
      outlined init with copy of PlatformItem(v10 + 632 * a3 + 32, v9);
    }

    outlined init with copy of AnyAccessibilityValue?(v9, v7, &lazy cache variable for type metadata for PlatformItem?);
    if (v7[0])
    {
      v5 = v8;
      outlined copy of PlatformItem.SelectionContent?(v7[35], v7[36], v7[37], v8);
      outlined destroy of PlatformItem(v7);
      if (v5 != 1)
      {
        PlatformItem.SelectionContent.select()();
        swift_unknownObjectRelease();
      }

      v6 = v9;
    }

    else
    {
      outlined destroy of AnyAccessibilityValue?(v9, &lazy cache variable for type metadata for PlatformItem?);
      v6 = v7;
    }

    return outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for PlatformItem?);
  }

  return result;
}

void (**closure #1 in closure #2 in static DocumentBrowserMediator.resolveBrowserContextMenu(_:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>))(uint64_t *__return_ptr, uint64_t *)
{
  type metadata accessor for (_:)();
  result = AGGraphGetWeakValue();
  if (result)
  {
    v5 = *result;
    v9 = a1;

    v5(&v10, &v9);

    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

uint64_t closure #1 in IdentifiedDocumentGroupDocumentCreation.defaultEditorConfiguration.getter@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentConfigurations);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      result = outlined init with copy of IdentifiedDocumentGroupConfiguration(v6, v10);
      if ((v10[0] & 1) == 0 && *(*&v11[0] + 16))
      {
        v7 = v10[5];
        a2[4] = v10[4];
        a2[5] = v7;
        a2[6] = v11[0];
        *(a2 + 105) = *(v11 + 9);
        v8 = v10[1];
        *a2 = v10[0];
        a2[1] = v8;
        v9 = v10[3];
        a2[2] = v10[2];
        a2[3] = v9;
        return result;
      }

      ++v5;
      result = outlined destroy of IdentifiedDocumentGroupConfiguration(v10);
      v6 += 128;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    *(a2 + 105) = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double IdentifiedDocumentGroupDocumentCreation.defaultEditorConfiguration.getter@<D0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  outlined init with copy of NewDocumentProvider?(v3 + v6, v11, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration??, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?, &type metadata for IdentifiedDocumentGroupConfiguration, type metadata accessor for AnyAccessibilityValue?);
  if (*(&v11[0] + 1) == 1)
  {
    outlined destroy of NewDocumentProvider?(v11, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration??, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?, &type metadata for IdentifiedDocumentGroupConfiguration, type metadata accessor for AnyAccessibilityValue?);
    a2(v3);
    outlined init with copy of AnyAccessibilityValue?(a3, v11, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
    swift_beginAccess();
    outlined assign with take of IdentifiedDocumentGroupConfiguration??(v11, v3 + v6);
    swift_endAccess();
  }

  else
  {
    v8 = v15;
    a3[4] = v14;
    a3[5] = v8;
    a3[6] = v16[0];
    *(a3 + 105) = *(v16 + 9);
    v9 = v11[1];
    *a3 = v11[0];
    a3[1] = v9;
    result = *&v12;
    v10 = v13;
    a3[2] = v12;
    a3[3] = v10;
  }

  return result;
}

uint64_t closure #1 in IdentifiedDocumentGroupDocumentCreation.defaultConfiguration.getter@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentConfigurations);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      result = outlined init with copy of IdentifiedDocumentGroupConfiguration(v6, v10);
      if (*(*&v12[0] + 16) || *(*(&v11 + 1) + 16))
      {
        v7 = v11;
        a2[4] = v10[4];
        a2[5] = v7;
        a2[6] = v12[0];
        *(a2 + 105) = *(v12 + 9);
        v8 = v10[1];
        *a2 = v10[0];
        a2[1] = v8;
        v9 = v10[3];
        a2[2] = v10[2];
        a2[3] = v9;
        return result;
      }

      ++v5;
      result = outlined destroy of IdentifiedDocumentGroupConfiguration(v10);
      v6 += 128;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    *(a2 + 105) = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

id IdentifiedDocumentGroupDocumentCreation.documentBrowser.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___documentBrowser;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___documentBrowser);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___documentBrowser);
  }

  else
  {
    swift_getObjectType();
    v4 = closure #1 in IdentifiedDocumentGroupDocumentCreation.documentBrowser.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in IdentifiedDocumentGroupDocumentCreation.documentBrowser.getter(uint64_t a1)
{
  IdentifiedDocumentGroupDocumentCreation.supportedContentTypes.getter();
  v2 = objc_allocWithZone(MEMORY[0x1E699A358]);
  type metadata accessor for UTType();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initForOpeningContentTypes_];

  IdentifiedDocumentGroupDocumentCreation.defaultEditorConfiguration.getter(v8);
  v5 = *(&v8[0] + 1) != 0;
  outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
  [v4 setAllowsDocumentCreation_];
  [v4 setDelegate_];
  static DocumentBrowserMediator.resolveBrowserContextMenu(_:)(*(a1 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentBrowserContextMenu));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v6 = Array._bridgeToObjectiveC()().super.isa;

  [v4 setCustomActions_];

  return v4;
}

uint64_t IdentifiedDocumentGroupDocumentCreation.canCreateNewDocuments.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___canCreateNewDocuments;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___canCreateNewDocuments);
  if (v2 == 2)
  {
    LOBYTE(v2) = closure #1 in IdentifiedDocumentGroupDocumentCreation.canCreateNewDocuments.getter(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t closure #1 in IdentifiedDocumentGroupDocumentCreation.canCreateNewDocuments.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentConfigurations);
  v2 = v1 + 32;
  v3 = -*(v1 + 16);
  v4 = -1;
  result = v1 + 32;
  while (1)
  {
    v6 = v3 + v4;
    v7 = *(v1 + 16);
    if (v3 + v4 == -1)
    {
      break;
    }

    if (++v4 >= v7)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v8 = result + 128;
    outlined init with copy of IdentifiedDocumentGroupConfiguration(result, v13);
    v9 = v13[0];
    outlined destroy of IdentifiedDocumentGroupConfiguration(v13);
    result = v8;
    if ((v9 & 1) == 0)
    {
      v7 = *(v1 + 16);
      break;
    }
  }

  v10 = -v7;
  v11 = -1;
  while (v10 + v11 != -1)
  {
    if (++v11 >= *(v1 + 16))
    {
      goto LABEL_14;
    }

    outlined init with copy of IdentifiedDocumentGroupConfiguration(v2, v13);
    v12 = *(v14 + 16);
    result = outlined destroy of IdentifiedDocumentGroupConfiguration(v13);
    v2 += 128;
    if (v12)
    {
      return v6 != -1;
    }
  }

  return 0;
}

id IdentifiedDocumentGroupDocumentCreation.init(configurations:strategies:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentsMap;
  *&v2[v5] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI36IdentifiedDocumentGroupConfigurationV_AC7WeakBoxVyAC08PlatformF0CGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = &v2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___defaultEditorConfiguration];
  *(v6 + 105) = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = xmmword_18CD633F0;
  v7 = &v2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___defaultConfiguration];
  *(v7 + 105) = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = xmmword_18CD633F0;
  *&v2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___documentBrowser] = 0;
  v8 = &v2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_newDocumentHandler];
  *v8 = 0;
  v8[1] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___canCreateNewDocuments] = 2;
  *&v2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentBrowserContextMenu] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___supportedContentTypes] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentConfigurations] = a1;
  *&v2[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_strategies] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for IdentifiedDocumentGroupDocumentCreation();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t IdentifiedDocumentGroupDocumentCreation.configuration(for:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentsMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_10:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    outlined init with copy of IdentifiedDocumentGroupConfiguration(*(v6 + 48) + (v14 << 7), v21);
    _s10Foundation3URLVSgWOcTm_0(*(v6 + 56) + 8 * v14, &v22, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
    _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWObTm_0(v21, v20, type metadata accessor for (key: IdentifiedDocumentGroupConfiguration, value: WeakBox<PlatformDocument>));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;

      if (v16 == a1)
      {

        _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWObTm_0(v20, &v23, type metadata accessor for (key: IdentifiedDocumentGroupConfiguration, value: WeakBox<PlatformDocument>));
LABEL_14:

        if (*(&v23 + 1))
        {
          v17 = v28;
          a2[4] = v27;
          a2[5] = v17;
          a2[6] = v29[0];
          *(a2 + 105) = *(v29 + 9);
          v18 = v24;
          *a2 = v23;
          a2[1] = v18;
          v19 = v26;
          a2[2] = v25;
          a2[3] = v19;
          return outlined destroy of NavigationItemDescription?(v30, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
        }

        else
        {
          result = outlined destroy of NavigationItemDescription?(&v23, &lazy cache variable for type metadata for (key: IdentifiedDocumentGroupConfiguration, value: WeakBox<PlatformDocument>)?, type metadata accessor for (key: IdentifiedDocumentGroupConfiguration, value: WeakBox<PlatformDocument>), MEMORY[0x1E69E6720]);
          *(a2 + 105) = 0u;
          a2[5] = 0u;
          a2[6] = 0u;
          a2[3] = 0u;
          a2[4] = 0u;
          a2[1] = 0u;
          a2[2] = 0u;
          *a2 = 0u;
        }

        return result;
      }
    }

    v9 &= v9 - 1;
    result = _s7SwiftUI16CommandOperationVWOhTm_1(v20, type metadata accessor for (key: IdentifiedDocumentGroupConfiguration, value: WeakBox<PlatformDocument>));
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      memset(v29, 0, sizeof(v29));
      v30[0] = 0;
      goto LABEL_14;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t IdentifiedDocumentGroupDocumentCreation.supportedContentTypes.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___supportedContentTypes;
  if (*(v0 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___supportedContentTypes))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation____lazy_storage___supportedContentTypes);
  }

  else
  {
    closure #1 in IdentifiedDocumentGroupDocumentCreation.supportedContentTypes.getter(v0);
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void closure #1 in IdentifiedDocumentGroupDocumentCreation.supportedContentTypes.getter(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentConfigurations);
  v35 = *(v13 + 16);
  if (v35)
  {
    v14 = 0;
    v33 = v13 + 32;
    v45 = v10 + 16;
    v15 = (v10 + 8);
    v36 = v10;
    v38 = (v10 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    v34 = v13;
    while (v14 < *(v13 + 16))
    {
      v37 = v14;
      outlined init with copy of IdentifiedDocumentGroupConfiguration(v33 + (v14 << 7), v46);
      v42 = *(v48 + 16);
      if (v42)
      {
        v17 = 0;
        v18 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v41 = v48 + v18;
        v19 = *(v36 + 72);
        v43 = *(v36 + 16);
        v44 = v18;
        do
        {
          v20 = v41 + v19 * v17++;
          v43(v12, v20, v2);
          v21 = &v16[v44];
          v22 = *(v16 + 2) + 1;
          while (--v22)
          {
            lazy protocol witness table accessor for type UTType and conformance UTType();
            v21 += v19;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              (*v15)(v12, v2);
              goto LABEL_8;
            }
          }

          v43(v39, v12, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v24 = *(v16 + 2);
          v23 = *(v16 + 3);
          if (v24 >= v23 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v16);
          }

          (*v15)(v12, v2);
          *(v16 + 2) = v24 + 1;
          (*v38)(&v16[v44 + v24 * v19], v39, v2);
LABEL_8:
          ;
        }

        while (v17 != v42);
      }

      v42 = *(v47 + 16);
      if (v42)
      {
        v25 = 0;
        v26 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v41 = v47 + v26;
        v27 = *(v36 + 72);
        v43 = *(v36 + 16);
        v44 = v26;
        do
        {
          v28 = v41 + v27 * v25++;
          v43(v6, v28, v2);
          v29 = &v16[v44];
          v30 = *(v16 + 2) + 1;
          while (--v30)
          {
            lazy protocol witness table accessor for type UTType and conformance UTType();
            v29 += v27;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              (*v15)(v6, v2);
              goto LABEL_20;
            }
          }

          v43(v40, v6, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v32 = *(v16 + 2);
          v31 = *(v16 + 3);
          if (v32 >= v31 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v16);
          }

          (*v15)(v6, v2);
          *(v16 + 2) = v32 + 1;
          (*v38)(&v16[v44 + v32 * v27], v40, v2);
LABEL_20:
          ;
        }

        while (v25 != v42);
      }

      v14 = v37 + 1;
      outlined destroy of IdentifiedDocumentGroupConfiguration(v46);
      v13 = v34;
      if (v14 == v35)
      {
        return;
      }
    }

    __break(1u);
  }
}

id DocumentViewController.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t IdentifiedDocumentGroupDocumentCreation.presentDocument(at:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-v5];
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], v3);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24[-v8];
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v1 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentConfigurations);
  static DocumentUtils.contentType(of:)(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of NavigationItemDescription?(v9, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    memset(v31, 0, 25);
  }

  else
  {
    v15 = (*(v11 + 32))(v13, v9, v10);
    MEMORY[0x1EEE9AC00](v15);
    *&v24[-16] = v13;
    specialized Sequence.first(where:)(partial apply for closure #1 in configuration #1 (for:) in static DocumentUtils.documentConfiguration(for:of:), v14, &v25);
    (*(v11 + 8))(v13, v10);
    if (*(&v25 + 1))
    {
      v32[4] = v29;
      v32[5] = v30;
      v33[0] = v31[0];
      *(v33 + 9) = *(v31 + 9);
      v32[0] = v25;
      v32[1] = v26;
      v32[2] = v27;
      v32[3] = v28;
      v16 = type metadata accessor for URL();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v6, a1, v16);
      (*(v17 + 56))(v6, 0, 1, v16);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      outlined init with copy of IdentifiedDocumentGroupConfiguration(v32, &v25);
      v19 = swift_allocObject();
      v20 = v30;
      *(v19 + 88) = v29;
      *(v19 + 104) = v20;
      *(v19 + 120) = v31[0];
      *(v19 + 129) = *(v31 + 9);
      v21 = v26;
      *(v19 + 24) = v25;
      *(v19 + 40) = v21;
      v22 = v28;
      *(v19 + 56) = v27;
      *(v19 + 16) = v18;
      *(v19 + 72) = v22;

      specialized IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:)(v32, v6, 0, 0, partial apply for closure #1 in IdentifiedDocumentGroupDocumentCreation.presentDocument(at:), v19);

      outlined destroy of NavigationItemDescription?(v6, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      outlined destroy of IdentifiedDocumentGroupConfiguration(v32);

      return 1;
    }
  }

  outlined destroy of AnyAccessibilityValue?(&v25, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
  return 0;
}

uint64_t IdentifiedDocumentGroupDocumentCreation.findConfiguration(for:)@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentConfigurations);
  result = specialized Sequence.first(where:)(partial apply for closure #1 in IdentifiedDocumentGroupDocumentCreation.findConfiguration(for:), v3, v10);
  if (*(&v10[0] + 1))
  {
    *(v19 + 9) = *(v12 + 9);
    v18 = v11;
    v19[0] = v12[0];
    v13 = v10[0];
    v14 = v10[1];
    v15 = v10[2];
    v16 = v10[3];
    v17 = v10[4];
    v5 = v12[0];
    a1[5] = v11;
    a1[6] = v5;
    *(a1 + 105) = *(v19 + 9);
    v6 = v17;
    v7 = v14;
    *a1 = v13;
    a1[1] = v7;
    v8 = v16;
    a1[2] = v15;
    a1[3] = v8;
    a1[4] = v6;
  }

  else
  {
    v9 = outlined destroy of AnyAccessibilityValue?(v10, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?);
    MEMORY[0x1EEE9AC00](v9);
    return specialized Sequence.first(where:)(partial apply for closure #2 in IdentifiedDocumentGroupDocumentCreation.findConfiguration(for:), v3, a1);
  }

  return result;
}

void closure #1 in IdentifiedDocumentGroupDocumentCreation.documentBrowser(_:didRequestDocumentCreationWithHandler:)(void *a1, void (*a2)(char *, void), uint64_t a3)
{
  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  if (a1)
  {
    v12 = a1;
    specialized IdentifiedDocumentGroupDocumentCreation.writeNewDocumentToDisk(_:_:)(v12, a2, a3);
    v9 = v12;
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    a2(v8, 0);
    outlined destroy of NavigationItemDescription?(v8, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  }
}

void closure #1 in IdentifiedDocumentGroupDocumentCreation.findConfiguration(for:)(uint64_t a1, uint64_t a2)
{
  v12[3] = a2;
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a1 + 96);
  v10 = *(v9 + 16);
  v12[1] = v4 + 16;
  while (v10 != v8)
  {
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
      return;
    }

    (*(v4 + 16))(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8++, v3, v5);
    v11 = static UTType.== infix(_:_:)();
    (*(v4 + 8))(v7, v3);
    if (v11)
    {
      return;
    }
  }
}

void closure #2 in IdentifiedDocumentGroupDocumentCreation.findConfiguration(for:)(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 96);
  v9 = *(v8 + 16);
  v11[3] = v3 + 16;
  v11[1] = v3 + 8;
  while (v9 != v7)
  {
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    (*(v3 + 16))(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7++, v2, v4);
    v10 = UTType.conforms(to:)();
    (*(v3 + 8))(v6, v2);
    if (v10)
    {
      return;
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for NavigationItemDescription(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    v8 = a2[5];

    if (v8)
    {
      v9 = v3[2];
      v10 = v3[3];
      v11 = *(v3 + 32);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
      *(a1 + 32) = v11;
      *(a1 + 40) = v3[5];
    }

    else
    {
      v13 = *(v3 + 2);
      *(a1 + 16) = *(v3 + 1);
      *(a1 + 32) = v13;
    }

    v14 = v3[6];
    if (v14 != 1)
    {
    }

    *(a1 + 48) = v14;
    *(a1 + 56) = *(v3 + 56);
    *(a1 + 64) = v3[8];
    *(a1 + 72) = *(v3 + 72);
    v15 = *(v6 + 24);
    v16 = a1 + v15;
    v17 = v3 + v15;
    v18 = *(v3 + v15 + 8);

    if (v18 == 255)
    {
      *v16 = *v17;
      *(v16 + 8) = v17[8];
    }

    else
    {
      v19 = *v17;
      v20 = v18 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v17, v20);
      *v16 = v19;
      *(v16 + 8) = v20;
    }

    v21 = v17[24];
    if (v21 == 254 || v21 == 255)
    {
      *(v16 + 16) = *(v17 + 2);
      *(v16 + 24) = v17[24];
    }

    else
    {
      v22 = *(v17 + 2);
      v23 = v21 & 1;
      outlined copy of PlatformItemCollection.Storage(v22, v21 & 1);
      *(v16 + 16) = v22;
      *(v16 + 24) = v23;
    }

    swift_unknownObjectWeakCopyInit();
    v24 = *(v17 + 6);
    *(v16 + 40) = *(v17 + 5);
    *(v16 + 48) = v24;
    v25 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v26 = (v16 + v25);
    v27 = &v17[v25];
    v28 = type metadata accessor for PlatformItemList.Item();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    v31 = v24;
    if (v30(v27, 1, v28))
    {
      type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v26, v27, *(*(v32 - 8) + 64));
LABEL_72:
      *(a1 + *(v6 + 28)) = *(v3 + *(v6 + 28));
      return a1;
    }

    v139 = v29;
    v140 = v6;
    v33 = *v27;
    v34 = *(v27 + 1);
    *v26 = *v27;
    v26[1] = v34;
    v35 = *(v27 + 3);
    v26[2] = *(v27 + 2);
    v26[3] = v35;
    *(v26 + 32) = v27[32];
    v36 = *(v27 + 6);
    v26[5] = *(v27 + 5);
    v26[6] = v36;
    *(v26 + 56) = v27[56];
    v37 = *(v27 + 24);
    v38 = v33;
    v39 = v34;

    v142 = v28;
    if (v37 >> 1 == 4294967294)
    {
      v40 = *(v27 + 13);
      *(v26 + 12) = *(v27 + 12);
      *(v26 + 13) = v40;
      *(v26 + 14) = *(v27 + 14);
      *(v26 + 235) = *(v27 + 235);
      v41 = *(v27 + 9);
      *(v26 + 8) = *(v27 + 8);
      *(v26 + 9) = v41;
      v42 = *(v27 + 11);
      *(v26 + 10) = *(v27 + 10);
      *(v26 + 11) = v42;
      v43 = *(v27 + 5);
      *(v26 + 4) = *(v27 + 4);
      *(v26 + 5) = v43;
      v44 = *(v27 + 7);
      *(v26 + 6) = *(v27 + 6);
      *(v26 + 7) = v44;
      v45 = *(v27 + 33);
      if (v45)
      {
LABEL_19:
        v26[32] = *(v27 + 32);
        v26[33] = v45;
        v46 = *(v27 + 34);

        if (v46 >= 2)
        {
          v47 = v46;
        }

        v26[34] = v46;
        *(v26 + 70) = *(v27 + 70);
        *(v26 + 284) = v27[284];
        *(v26 + 285) = *(v27 + 285);
        v48 = *(v27 + 37);
        v26[36] = *(v27 + 36);
        v26[37] = v48;

LABEL_30:
        v59 = *(v27 + 42);
        if (v59 >> 2 == 0xFFFFFFFF)
        {
          v60 = *(v27 + 24);
          *(v26 + 23) = *(v27 + 23);
          *(v26 + 24) = v60;
          v26[50] = *(v27 + 50);
          v61 = *(v27 + 20);
          *(v26 + 19) = *(v27 + 19);
          *(v26 + 20) = v61;
          v62 = *(v27 + 22);
          *(v26 + 21) = *(v27 + 21);
          *(v26 + 22) = v62;
        }

        else
        {
          v63 = *(v27 + 38);
          v64 = *(v27 + 39);
          v126 = *(v27 + 41);
          v127 = *(v27 + 40);
          v65 = *(v27 + 43);
          v66 = *(v27 + 44);
          v67 = *(v27 + 45);
          v128 = *(v27 + 46);
          v129 = *(v27 + 47);
          v131 = *(v27 + 48);
          v133 = *(v27 + 49);
          __dsta = *(v27 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v63, v64, v127, v126, v59, v65, v66, v67, v128, v129, v131, v133, __dsta);
          v26[38] = v63;
          v26[39] = v64;
          v26[40] = v127;
          v26[41] = v126;
          v26[42] = v59;
          v26[43] = v65;
          v26[44] = v66;
          v26[45] = v67;
          v26[46] = v128;
          v26[47] = v129;
          v26[48] = v131;
          v26[49] = v133;
          v26[50] = __dsta;
        }

        v68 = *(v27 + 52);
        if (v68 == 1)
        {
          v69 = *(v27 + 456);
          *(v26 + 55) = *(v27 + 440);
          *(v26 + 57) = v69;
          *(v26 + 472) = v27[472];
          v70 = *(v27 + 424);
          *(v26 + 51) = *(v27 + 408);
          *(v26 + 53) = v70;
          goto LABEL_43;
        }

        *(v26 + 102) = *(v27 + 102);
        *(v26 + 412) = v27[412];
        if (v68)
        {
          v71 = *(v27 + 53);
          v26[52] = v68;
          v26[53] = v71;

          v72 = *(v27 + 54);
          if (v72)
          {
            goto LABEL_37;
          }
        }

        else
        {
          *(v26 + 26) = *(v27 + 26);
          v72 = *(v27 + 54);
          if (v72)
          {
LABEL_37:
            v73 = *(v27 + 55);
            v26[54] = v72;
            v26[55] = v73;

            v74 = *(v27 + 56);
            if (v74)
            {
LABEL_38:
              v75 = *(v27 + 57);
              v26[56] = v74;
              v26[57] = v75;

LABEL_42:
              v26[58] = *(v27 + 58);
              *(v26 + 472) = v27[472];
LABEL_43:
              v76 = *(v27 + 61);
              v26[60] = *(v27 + 60);
              v26[61] = v76;
              v26[62] = *(v27 + 62);
              *(v26 + 504) = v27[504];
              v77 = *(v27 + 64);

              if (v77)
              {
                v78 = *(v27 + 65);
                v26[64] = v77;
                v26[65] = v78;
              }

              else
              {
                *(v26 + 32) = *(v27 + 32);
              }

              *(v26 + 528) = v27[528];
              if (!*(v27 + 102))
              {
                memcpy(v26 + 67, v27 + 536, 0x130uLL);
                goto LABEL_58;
              }

              v26[67] = *(v27 + 67);
              v26[68] = *(v27 + 68);
              *(v26 + 552) = v27[552];
              v26[70] = *(v27 + 70);
              *(v26 + 568) = v27[568];
              *(v26 + 36) = *(v27 + 36);
              *(v26 + 592) = v27[592];
              v79 = v26 + 75;
              v80 = v27 + 600;
              v81 = *(v27 + 78);

              if (v81)
              {
                if (v81 == 1)
                {
                  v82 = *(v27 + 616);
                  *v79 = *v80;
                  *(v26 + 77) = v82;
                  *(v26 + 79) = *(v27 + 632);
LABEL_54:
                  v26[81] = *(v27 + 81);
                  *(v26 + 656) = v27[656];
                  v84 = v26 + 83;
                  v85 = v27 + 664;
                  v86 = *(v27 + 97);
                  if (v86 == 1)
                  {
                    v87 = *(v27 + 776);
                    *(v26 + 95) = *(v27 + 760);
                    *(v26 + 97) = v87;
                    *(v26 + 99) = *(v27 + 792);
                    *(v26 + 808) = v27[808];
                    v88 = *(v27 + 712);
                    *(v26 + 87) = *(v27 + 696);
                    *(v26 + 89) = v88;
                    v89 = *(v27 + 744);
                    *(v26 + 91) = *(v27 + 728);
                    *(v26 + 93) = v89;
                    v90 = *(v27 + 680);
                    *v84 = *v85;
                    *(v26 + 85) = v90;
                  }

                  else
                  {
                    *v84 = *v85;
                    *(v26 + 672) = v27[672];
                    v26[85] = *(v27 + 85);
                    *(v26 + 688) = v27[688];
                    *(v26 + 689) = *(v27 + 689);
                    *(v26 + 691) = v27[691];
                    *(v26 + 692) = v27[692];
                    v26[87] = *(v27 + 87);
                    v91 = *(v27 + 45);
                    *(v26 + 44) = *(v27 + 44);
                    *(v26 + 45) = v91;
                    v26[92] = *(v27 + 92);
                    *(v26 + 372) = *(v27 + 372);
                    *(v26 + 47) = *(v27 + 47);
                    *(v26 + 768) = v27[768];
                    v26[97] = v86;
                    *(v26 + 49) = *(v27 + 49);
                    v26[100] = *(v27 + 100);
                    *(v26 + 808) = v27[808];
                  }

                  v26[102] = *(v27 + 102);
                  v26[103] = *(v27 + 103);
                  v26[104] = *(v27 + 104);

LABEL_58:
                  v92 = v26 + 105;
                  v93 = v27 + 840;
                  v94 = *(v27 + 108);
                  v141 = v3;
                  v136 = a1;
                  if (v94)
                  {
                    if (v94 == 1)
                    {
                      v95 = *(v27 + 856);
                      *v92 = *v93;
                      *(v26 + 107) = v95;
                      *(v26 + 109) = *(v27 + 872);
                      v26[111] = *(v27 + 111);
LABEL_65:
                      v99 = *(v27 + 112);
                      v26[112] = v99;
                      v26[113] = *(v27 + 113);
                      v26[114] = *(v27 + 114);
                      v26[115] = *(v27 + 115);
                      v26[116] = *(v27 + 116);
                      v26[117] = *(v27 + 117);
                      v26[118] = *(v27 + 118);
                      *(v26 + 476) = *(v27 + 476);
                      *(v26 + 954) = v27[954];
                      v100 = v142[28];
                      __dst = v26 + v100;
                      v101 = &v27[v100];
                      v102 = type metadata accessor for CommandOperation();
                      v132 = *(v102 - 8);
                      v134 = *(v132 + 48);
                      v103 = v99;
                      v104 = v101;

                      if (v134(v101, 1, v102))
                      {
                        type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v101, *(*(v105 - 8) + 64));
                        v6 = v140;
                        v106 = v142;
                        v107 = v139;
                      }

                      else
                      {
                        *__dst = *v101;
                        v108 = *(v102 + 20);
                        v109 = &__dst[v108];
                        v110 = &v104[v108];
                        v135 = v104;
                        v111 = *&v104[v108];
                        v112 = *(v110 + 1);
                        v113 = v102;
                        v114 = v110[16];
                        outlined copy of Text.Storage(v111, v112, v114);
                        *v109 = v111;
                        *(v109 + 1) = v112;
                        v109[16] = v114;
                        *(v109 + 3) = *(v110 + 3);
                        v115 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v116 = type metadata accessor for UUID();
                        v130 = *(*(v116 - 8) + 16);

                        v117 = &v109[v115];
                        v118 = &v110[v115];
                        v119 = v113;
                        v130(v117, v118, v116);
                        v120 = *(v113 + 24);
                        v121 = &__dst[v120];
                        v122 = &v135[v120];
                        if (*v122)
                        {
                          v123 = *(v122 + 1);
                          *v121 = *v122;
                          *(v121 + 1) = v123;
                        }

                        else
                        {
                          *v121 = *v122;
                        }

                        v6 = v140;
                        v106 = v142;
                        v107 = v139;
                        a1 = v136;
                        (*(v132 + 56))(__dst, 0, 1, v119);
                      }

                      *(v26 + v106[29]) = v27[v106[29]];
                      *(v26 + v106[30]) = v27[v106[30]];
                      *(v26 + v106[31]) = v27[v106[31]];
                      *(v26 + v106[32]) = v27[v106[32]];
                      *(v26 + v106[33]) = v27[v106[33]];
                      *(v26 + v106[34]) = *&v27[v106[34]];
                      v124 = *(v107 + 56);

                      v124(v26, 0, 1, v106);
                      v3 = v141;
                      goto LABEL_72;
                    }

                    v26[108] = v94;
                    v26[109] = *(v27 + 109);
                    (**(v94 - 8))(v92, v93);
                    v97 = *(v27 + 110);
                    if (!v97)
                    {
LABEL_64:
                      *(v26 + 55) = *(v27 + 55);
                      goto LABEL_65;
                    }
                  }

                  else
                  {
                    v96 = *(v27 + 856);
                    *v92 = *v93;
                    *(v26 + 107) = v96;
                    v26[109] = *(v27 + 109);
                    v97 = *(v27 + 110);
                    if (!v97)
                    {
                      goto LABEL_64;
                    }
                  }

                  v98 = *(v27 + 111);
                  v26[110] = v97;
                  v26[111] = v98;

                  goto LABEL_65;
                }

                v26[78] = v81;
                v26[79] = *(v27 + 79);
                (**(v81 - 8))((v26 + 75), (v27 + 600), v81);
              }

              else
              {
                v83 = *(v27 + 616);
                *v79 = *v80;
                *(v26 + 77) = v83;
                v26[79] = *(v27 + 79);
              }

              v26[80] = *(v27 + 80);

              goto LABEL_54;
            }

LABEL_41:
            *(v26 + 28) = *(v27 + 28);
            goto LABEL_42;
          }
        }

        *(v26 + 27) = *(v27 + 27);
        v74 = *(v27 + 56);
        if (v74)
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v49 = v27[72];
      if (v49 == 255)
      {
        v26[8] = *(v27 + 8);
        *(v26 + 72) = v27[72];
      }

      else
      {
        v50 = *(v27 + 8);
        outlined copy of GraphicsImage.Contents(v50, v27[72]);
        v26[8] = v50;
        *(v26 + 72) = v49;
        v37 = *(v27 + 24);
      }

      v26[10] = *(v27 + 10);
      *(v26 + 11) = *(v27 + 88);
      *(v26 + 104) = v27[104];
      *(v26 + 108) = *(v27 + 108);
      *(v26 + 121) = *(v27 + 121);
      *(v26 + 17) = *(v27 + 136);
      *(v26 + 19) = *(v27 + 152);
      *(v26 + 84) = *(v27 + 84);
      *(v26 + 170) = v27[170];
      *(v26 + 171) = v27[171];
      if (v37 >> 1 == 0xFFFFFFFF)
      {
        v51 = *(v27 + 12);
        *(v26 + 11) = *(v27 + 11);
        *(v26 + 12) = v51;
      }

      else
      {
        v52 = *(v27 + 22);
        v53 = *(v27 + 23);
        v54 = *(v27 + 25);
        outlined copy of AccessibilityImageLabel(v52, v53, v37);
        v26[22] = v52;
        v26[23] = v53;
        v26[24] = v37;
        v26[25] = v54;
      }

      v55 = *(v27 + 27);
      v26[26] = *(v27 + 26);
      v26[27] = v55;
      *(v26 + 112) = *(v27 + 112);
      *(v26 + 57) = *(v27 + 57);
      *(v26 + 232) = v27[232];
      v56 = *(v27 + 30);
      v26[30] = v56;
      *(v26 + 124) = *(v27 + 124);
      *(v26 + 250) = v27[250];
      swift_unknownObjectRetain();

      v57 = v56;
      v45 = *(v27 + 33);
      if (v45)
      {
        goto LABEL_19;
      }
    }

    v58 = *(v27 + 17);
    *(v26 + 16) = *(v27 + 16);
    *(v26 + 17) = v58;
    *(v26 + 18) = *(v27 + 18);
    goto LABEL_30;
  }

  v12 = *a2;
  *a1 = *a2;
  a1 = v12 + ((v5 + 16) & ~v5);

  return a1;
}

uint64_t destroy for NavigationItemDescription(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 40))
  {
    outlined consume of Text.Storage(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  }

  if (*(a1 + 48) != 1)
  {
  }

  v4 = a1 + *(a2 + 24);
  v5 = *(v4 + 8);
  if (v5 != 255)
  {
    outlined consume of ResolvableCLKTextProvider.FontStorage(*v4, v5 & 1);
  }

  v6 = *(v4 + 24);
  if (v6 <= 0xFD)
  {
    outlined consume of PlatformItemCollection.Storage(*(v4 + 16), v6 & 1);
  }

  MEMORY[0x18D011290](v4 + 32);

  v7 = v4 + *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
  v8 = type metadata accessor for PlatformItemList.Item();
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (!result)
  {

    v10 = *(v7 + 192);
    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v12 = *(v7 + 72);
      if (v12 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v7 + 64), v12);
        v10 = *(v7 + 192);
        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v11 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v7 + 176), *(v7 + 184), v10);
      }

      swift_unknownObjectRelease();
    }

    if (*(v7 + 264))
    {

      v13 = *(v7 + 272);
      if (v13 >= 2)
      {
      }
    }

    v14 = *(v7 + 336);
    if (v14 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v7 + 304), *(v7 + 312), *(v7 + 320), *(v7 + 328), v14, *(v7 + 344), *(v7 + 352), *(v7 + 360), *(v7 + 368), *(v7 + 376), *(v7 + 384), *(v7 + 392), *(v7 + 400));
    }

    v15 = *(v7 + 416);
    if (v15)
    {
      if (v15 == 1)
      {
        goto LABEL_29;
      }
    }

    if (*(v7 + 432))
    {
    }

    if (*(v7 + 448))
    {
    }

LABEL_29:

    if (*(v7 + 512))
    {
    }

    if (!*(v7 + 816))
    {
LABEL_39:
      v17 = *(v7 + 864);
      if (v17)
      {
        if (v17 == 1)
        {
LABEL_44:

          v18 = v7 + *(v8 + 112);
          v19 = type metadata accessor for CommandOperation();
          if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
          {
            v20 = v18 + *(v19 + 20);
            outlined consume of Text.Storage(*v20, *(v20 + 8), *(v20 + 16));

            v21 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v22 = type metadata accessor for UUID();
            (*(*(v22 - 8) + 8))(v20 + v21, v22);
            if (*(v18 + *(v19 + 24)))
            {
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v7 + 840);
      }

      if (*(v7 + 880))
      {
      }

      goto LABEL_44;
    }

    v16 = *(v7 + 624);
    if (v16)
    {
      if (v16 == 1)
      {
LABEL_36:
        if (*(v7 + 776) != 1)
        {
        }

        goto LABEL_39;
      }

      __swift_destroy_boxed_opaque_existential_1(v7 + 600);
    }

    goto LABEL_36;
  }

  return result;
}

uint64_t initializeWithCopy for NavigationItemDescription(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = a2[5];

  if (v7)
  {
    v8 = v4[2];
    v9 = v4[3];
    v10 = *(v4 + 32);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = v4[5];
  }

  else
  {
    v11 = *(v4 + 2);
    *(a1 + 16) = *(v4 + 1);
    *(a1 + 32) = v11;
  }

  v12 = v4[6];
  if (v12 != 1)
  {
  }

  *(a1 + 48) = v12;
  *(a1 + 56) = *(v4 + 56);
  *(a1 + 64) = v4[8];
  *(a1 + 72) = *(v4 + 72);
  v13 = *(a3 + 24);
  v14 = a1 + v13;
  v15 = v4 + v13;
  v16 = *(v4 + v13 + 8);

  if (v16 == 255)
  {
    *v14 = *v15;
    *(v14 + 8) = v15[8];
  }

  else
  {
    v17 = *v15;
    v18 = v16 & 1;
    outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v15, v18);
    *v14 = v17;
    *(v14 + 8) = v18;
  }

  v19 = v15[24];
  if (v19 == 254 || v19 == 255)
  {
    *(v14 + 16) = *(v15 + 2);
    *(v14 + 24) = v15[24];
  }

  else
  {
    v20 = *(v15 + 2);
    v21 = v19 & 1;
    outlined copy of PlatformItemCollection.Storage(v20, v19 & 1);
    *(v14 + 16) = v20;
    *(v14 + 24) = v21;
  }

  swift_unknownObjectWeakCopyInit();
  v22 = *(v15 + 6);
  *(v14 + 40) = *(v15 + 5);
  *(v14 + 48) = v22;
  v23 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
  v24 = (v14 + v23);
  v25 = &v15[v23];
  v26 = type metadata accessor for PlatformItemList.Item();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v22;
  if (v28(v25, 1, v26))
  {
    type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v24, v25, *(*(v30 - 8) + 64));
    goto LABEL_70;
  }

  v136 = v27;
  v137 = a3;
  v31 = *v25;
  v32 = *(v25 + 1);
  *v24 = *v25;
  v24[1] = v32;
  v33 = *(v25 + 3);
  v24[2] = *(v25 + 2);
  v24[3] = v33;
  *(v24 + 32) = v25[32];
  v34 = *(v25 + 6);
  v24[5] = *(v25 + 5);
  v24[6] = v34;
  *(v24 + 56) = v25[56];
  v35 = *(v25 + 24);
  v36 = v31;
  v37 = v32;

  v139 = v26;
  if (v35 >> 1 != 4294967294)
  {
    v47 = v25[72];
    if (v47 == 255)
    {
      v24[8] = *(v25 + 8);
      *(v24 + 72) = v25[72];
    }

    else
    {
      v48 = *(v25 + 8);
      outlined copy of GraphicsImage.Contents(v48, v25[72]);
      v24[8] = v48;
      *(v24 + 72) = v47;
      v35 = *(v25 + 24);
    }

    v24[10] = *(v25 + 10);
    *(v24 + 11) = *(v25 + 88);
    *(v24 + 104) = v25[104];
    *(v24 + 108) = *(v25 + 108);
    *(v24 + 121) = *(v25 + 121);
    *(v24 + 17) = *(v25 + 136);
    *(v24 + 19) = *(v25 + 152);
    *(v24 + 84) = *(v25 + 84);
    *(v24 + 170) = v25[170];
    *(v24 + 171) = v25[171];
    if (v35 >> 1 == 0xFFFFFFFF)
    {
      v49 = *(v25 + 12);
      *(v24 + 11) = *(v25 + 11);
      *(v24 + 12) = v49;
    }

    else
    {
      v50 = *(v25 + 22);
      v51 = *(v25 + 23);
      v52 = *(v25 + 25);
      outlined copy of AccessibilityImageLabel(v50, v51, v35);
      v24[22] = v50;
      v24[23] = v51;
      v24[24] = v35;
      v24[25] = v52;
    }

    v53 = *(v25 + 27);
    v24[26] = *(v25 + 26);
    v24[27] = v53;
    *(v24 + 112) = *(v25 + 112);
    *(v24 + 57) = *(v25 + 57);
    *(v24 + 232) = v25[232];
    v54 = *(v25 + 30);
    v24[30] = v54;
    *(v24 + 124) = *(v25 + 124);
    *(v24 + 250) = v25[250];
    swift_unknownObjectRetain();

    v55 = v54;
    v43 = *(v25 + 33);
    if (v43)
    {
      goto LABEL_17;
    }

LABEL_27:
    v56 = *(v25 + 17);
    *(v24 + 16) = *(v25 + 16);
    *(v24 + 17) = v56;
    *(v24 + 18) = *(v25 + 18);
    goto LABEL_28;
  }

  v38 = *(v25 + 13);
  *(v24 + 12) = *(v25 + 12);
  *(v24 + 13) = v38;
  *(v24 + 14) = *(v25 + 14);
  *(v24 + 235) = *(v25 + 235);
  v39 = *(v25 + 9);
  *(v24 + 8) = *(v25 + 8);
  *(v24 + 9) = v39;
  v40 = *(v25 + 11);
  *(v24 + 10) = *(v25 + 10);
  *(v24 + 11) = v40;
  v41 = *(v25 + 5);
  *(v24 + 4) = *(v25 + 4);
  *(v24 + 5) = v41;
  v42 = *(v25 + 7);
  *(v24 + 6) = *(v25 + 6);
  *(v24 + 7) = v42;
  v43 = *(v25 + 33);
  if (!v43)
  {
    goto LABEL_27;
  }

LABEL_17:
  v24[32] = *(v25 + 32);
  v24[33] = v43;
  v44 = *(v25 + 34);

  if (v44 >= 2)
  {
    v45 = v44;
  }

  v24[34] = v44;
  *(v24 + 70) = *(v25 + 70);
  *(v24 + 284) = v25[284];
  *(v24 + 285) = *(v25 + 285);
  v46 = *(v25 + 37);
  v24[36] = *(v25 + 36);
  v24[37] = v46;

LABEL_28:
  v57 = *(v25 + 42);
  if (v57 >> 2 == 0xFFFFFFFF)
  {
    v58 = *(v25 + 24);
    *(v24 + 23) = *(v25 + 23);
    *(v24 + 24) = v58;
    v24[50] = *(v25 + 50);
    v59 = *(v25 + 20);
    *(v24 + 19) = *(v25 + 19);
    *(v24 + 20) = v59;
    v60 = *(v25 + 22);
    *(v24 + 21) = *(v25 + 21);
    *(v24 + 22) = v60;
  }

  else
  {
    v61 = *(v25 + 38);
    v62 = *(v25 + 39);
    v123 = *(v25 + 41);
    v124 = *(v25 + 40);
    v63 = *(v25 + 43);
    v64 = *(v25 + 44);
    v65 = *(v25 + 45);
    v125 = *(v25 + 46);
    v126 = *(v25 + 47);
    v128 = *(v25 + 48);
    v130 = *(v25 + 49);
    __dsta = *(v25 + 50);
    outlined copy of PlatformItemList.Item.SystemItem(v61, v62, v124, v123, v57, v63, v64, v65, v125, v126, v128, v130, __dsta);
    v24[38] = v61;
    v24[39] = v62;
    v24[40] = v124;
    v24[41] = v123;
    v24[42] = v57;
    v24[43] = v63;
    v24[44] = v64;
    v24[45] = v65;
    v24[46] = v125;
    v24[47] = v126;
    v24[48] = v128;
    v24[49] = v130;
    v24[50] = __dsta;
  }

  v66 = *(v25 + 52);
  if (v66 == 1)
  {
    v67 = *(v25 + 456);
    *(v24 + 55) = *(v25 + 440);
    *(v24 + 57) = v67;
    *(v24 + 472) = v25[472];
    v68 = *(v25 + 424);
    *(v24 + 51) = *(v25 + 408);
    *(v24 + 53) = v68;
    goto LABEL_41;
  }

  *(v24 + 102) = *(v25 + 102);
  *(v24 + 412) = v25[412];
  if (v66)
  {
    v69 = *(v25 + 53);
    v24[52] = v66;
    v24[53] = v69;

    v70 = *(v25 + 54);
    if (v70)
    {
      goto LABEL_35;
    }

LABEL_38:
    *(v24 + 27) = *(v25 + 27);
    v72 = *(v25 + 56);
    if (v72)
    {
      goto LABEL_36;
    }

LABEL_39:
    *(v24 + 28) = *(v25 + 28);
    goto LABEL_40;
  }

  *(v24 + 26) = *(v25 + 26);
  v70 = *(v25 + 54);
  if (!v70)
  {
    goto LABEL_38;
  }

LABEL_35:
  v71 = *(v25 + 55);
  v24[54] = v70;
  v24[55] = v71;

  v72 = *(v25 + 56);
  if (!v72)
  {
    goto LABEL_39;
  }

LABEL_36:
  v73 = *(v25 + 57);
  v24[56] = v72;
  v24[57] = v73;

LABEL_40:
  v24[58] = *(v25 + 58);
  *(v24 + 472) = v25[472];
LABEL_41:
  v74 = *(v25 + 61);
  v24[60] = *(v25 + 60);
  v24[61] = v74;
  v24[62] = *(v25 + 62);
  *(v24 + 504) = v25[504];
  v75 = *(v25 + 64);

  if (v75)
  {
    v76 = *(v25 + 65);
    v24[64] = v75;
    v24[65] = v76;
  }

  else
  {
    *(v24 + 32) = *(v25 + 32);
  }

  *(v24 + 528) = v25[528];
  if (!*(v25 + 102))
  {
    memcpy(v24 + 67, v25 + 536, 0x130uLL);
    goto LABEL_56;
  }

  v24[67] = *(v25 + 67);
  v24[68] = *(v25 + 68);
  *(v24 + 552) = v25[552];
  v24[70] = *(v25 + 70);
  *(v24 + 568) = v25[568];
  *(v24 + 36) = *(v25 + 36);
  *(v24 + 592) = v25[592];
  v77 = v24 + 75;
  v78 = v25 + 600;
  v79 = *(v25 + 78);

  if (!v79)
  {
    v81 = *(v25 + 616);
    *v77 = *v78;
    *(v24 + 77) = v81;
    v24[79] = *(v25 + 79);
LABEL_51:
    v24[80] = *(v25 + 80);

    goto LABEL_52;
  }

  if (v79 != 1)
  {
    v24[78] = v79;
    v24[79] = *(v25 + 79);
    (**(v79 - 8))((v24 + 75), (v25 + 600), v79);
    goto LABEL_51;
  }

  v80 = *(v25 + 616);
  *v77 = *v78;
  *(v24 + 77) = v80;
  *(v24 + 79) = *(v25 + 632);
LABEL_52:
  v24[81] = *(v25 + 81);
  *(v24 + 656) = v25[656];
  v82 = v24 + 83;
  v83 = v25 + 664;
  v84 = *(v25 + 97);
  if (v84 == 1)
  {
    v85 = *(v25 + 776);
    *(v24 + 95) = *(v25 + 760);
    *(v24 + 97) = v85;
    *(v24 + 99) = *(v25 + 792);
    *(v24 + 808) = v25[808];
    v86 = *(v25 + 712);
    *(v24 + 87) = *(v25 + 696);
    *(v24 + 89) = v86;
    v87 = *(v25 + 744);
    *(v24 + 91) = *(v25 + 728);
    *(v24 + 93) = v87;
    v88 = *(v25 + 680);
    *v82 = *v83;
    *(v24 + 85) = v88;
  }

  else
  {
    *v82 = *v83;
    *(v24 + 672) = v25[672];
    v24[85] = *(v25 + 85);
    *(v24 + 688) = v25[688];
    *(v24 + 689) = *(v25 + 689);
    *(v24 + 691) = v25[691];
    *(v24 + 692) = v25[692];
    v24[87] = *(v25 + 87);
    v89 = *(v25 + 45);
    *(v24 + 44) = *(v25 + 44);
    *(v24 + 45) = v89;
    v24[92] = *(v25 + 92);
    *(v24 + 372) = *(v25 + 372);
    *(v24 + 47) = *(v25 + 47);
    *(v24 + 768) = v25[768];
    v24[97] = v84;
    *(v24 + 49) = *(v25 + 49);
    v24[100] = *(v25 + 100);
    *(v24 + 808) = v25[808];
  }

  v24[102] = *(v25 + 102);
  v24[103] = *(v25 + 103);
  v24[104] = *(v25 + 104);

LABEL_56:
  v90 = v24 + 105;
  v91 = v25 + 840;
  v92 = *(v25 + 108);
  v138 = a1;
  v133 = v4;
  if (!v92)
  {
    v94 = *(v25 + 856);
    *v90 = *v91;
    *(v24 + 107) = v94;
    v24[109] = *(v25 + 109);
    v95 = *(v25 + 110);
    if (!v95)
    {
LABEL_62:
      *(v24 + 55) = *(v25 + 55);
      goto LABEL_63;
    }

LABEL_60:
    v96 = *(v25 + 111);
    v24[110] = v95;
    v24[111] = v96;

    goto LABEL_63;
  }

  if (v92 != 1)
  {
    v24[108] = v92;
    v24[109] = *(v25 + 109);
    (**(v92 - 8))(v90, v91);
    v95 = *(v25 + 110);
    if (!v95)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v93 = *(v25 + 856);
  *v90 = *v91;
  *(v24 + 107) = v93;
  *(v24 + 109) = *(v25 + 872);
  v24[111] = *(v25 + 111);
LABEL_63:
  v97 = *(v25 + 112);
  v24[112] = v97;
  v24[113] = *(v25 + 113);
  v24[114] = *(v25 + 114);
  v24[115] = *(v25 + 115);
  v24[116] = *(v25 + 116);
  v24[117] = *(v25 + 117);
  v24[118] = *(v25 + 118);
  *(v24 + 476) = *(v25 + 476);
  *(v24 + 954) = v25[954];
  v98 = v139[28];
  __dst = v24 + v98;
  v99 = &v25[v98];
  v100 = type metadata accessor for CommandOperation();
  v129 = *(v100 - 8);
  v131 = *(v129 + 48);
  v101 = v97;

  if (v131(v99, 1, v100))
  {
    type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v99, *(*(v102 - 8) + 64));
    a3 = v137;
    v103 = v139;
    v104 = v136;
    v4 = v133;
  }

  else
  {
    *__dst = *v99;
    v105 = *(v100 + 20);
    v106 = &__dst[v105];
    v107 = &v99[v105];
    v132 = v99;
    v108 = *&v99[v105];
    v109 = *&v99[v105 + 8];
    v110 = v100;
    v111 = v107[16];
    outlined copy of Text.Storage(v108, v109, v111);
    *v106 = v108;
    *(v106 + 1) = v109;
    v106[16] = v111;
    *(v106 + 3) = *(v107 + 3);
    v112 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v113 = type metadata accessor for UUID();
    v127 = *(*(v113 - 8) + 16);

    v114 = &v106[v112];
    v115 = &v107[v112];
    v116 = v110;
    v127(v114, v115, v113);
    v117 = *(v110 + 24);
    v118 = &__dst[v117];
    v119 = &v132[v117];
    if (*v119)
    {
      v120 = *(v119 + 1);
      *v118 = *v119;
      *(v118 + 1) = v120;
    }

    else
    {
      *v118 = *v119;
    }

    a3 = v137;
    v103 = v139;
    v104 = v136;
    v4 = v133;
    (*(v129 + 56))(__dst, 0, 1, v116);
  }

  *(v24 + v103[29]) = v25[v103[29]];
  *(v24 + v103[30]) = v25[v103[30]];
  *(v24 + v103[31]) = v25[v103[31]];
  *(v24 + v103[32]) = v25[v103[32]];
  *(v24 + v103[33]) = v25[v103[33]];
  *(v24 + v103[34]) = *&v25[v103[34]];
  v121 = *(v104 + 56);

  v121(v24, 0, 1, v103);
  a1 = v138;
LABEL_70:
  *(a1 + *(a3 + 28)) = *(v4 + *(a3 + 28));
  return a1;
}

void *assignWithCopy for NavigationItemDescription(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = v4[5];
  if (v5[5])
  {
    if (v6)
    {
      v7 = v4[2];
      v8 = v4[3];
      v9 = *(v4 + 32);
      outlined copy of Text.Storage(v7, v8, v9);
      v10 = v5[2];
      v11 = v5[3];
      v12 = *(v5 + 32);
      v5[2] = v7;
      v5[3] = v8;
      *(v5 + 32) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      v5[5] = v4[5];
    }

    else
    {
      outlined destroy of Text((v5 + 2));
      v16 = *(v4 + 2);
      *(v5 + 1) = *(v4 + 1);
      *(v5 + 2) = v16;
    }
  }

  else if (v6)
  {
    v13 = v4[2];
    v14 = v4[3];
    v15 = *(v4 + 32);
    outlined copy of Text.Storage(v13, v14, v15);
    v5[2] = v13;
    v5[3] = v14;
    *(v5 + 32) = v15;
    v5[5] = v4[5];
  }

  else
  {
    v17 = *(v4 + 2);
    *(v5 + 1) = *(v4 + 1);
    *(v5 + 2) = v17;
  }

  v18 = v5 + 6;
  v19 = v4[6];
  if (v5[6] == 1)
  {
    if (v19 == 1)
    {
      v20 = 1;
LABEL_13:
      *v18 = v20;
      goto LABEL_16;
    }

    *v18 = v19;
  }

  else
  {
    if (v19 == 1)
    {
      outlined destroy of Transaction((v5 + 6));
      v20 = v4[6];
      goto LABEL_13;
    }

    *v18 = v19;
  }

LABEL_16:
  *(v5 + 56) = *(v4 + 56);
  v5[8] = v4[8];

  *(v5 + 72) = *(v4 + 72);
  v21 = *(a3 + 24);
  v22 = v5 + v21;
  v23 = v4 + v21;
  v24 = *(v5 + v21 + 8);
  v25 = *(v4 + v21 + 8);
  if (v24 == 255)
  {
    if (v25 == 255)
    {
      v33 = *v23;
      *(v22 + 8) = v23[8];
      *v22 = v33;
    }

    else
    {
      v30 = *v23;
      v31 = v25 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v23, v25 & 1);
      *v22 = v30;
      *(v22 + 8) = v31;
    }
  }

  else if (v25 == 255)
  {
    outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v22);
    v32 = v23[8];
    *v22 = *v23;
    *(v22 + 8) = v32;
  }

  else
  {
    v26 = *v23;
    v27 = v25 & 1;
    outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v23, v25 & 1);
    v28 = *v22;
    v29 = *(v22 + 8);
    *v22 = v26;
    *(v22 + 8) = v27;
    outlined consume of ResolvableCLKTextProvider.FontStorage(v28, v29);
  }

  v34 = *(v22 + 24);
  v35 = v23[24];
  if (v34 == 254)
  {
    if (v35 == 254)
    {
LABEL_32:
      v39 = *(v23 + 2);
      *(v22 + 24) = v23[24];
      *(v22 + 16) = v39;
      goto LABEL_33;
    }

LABEL_30:
    if (v35 != 255)
    {
      v37 = *(v23 + 2);
      v38 = v35 & 1;
      outlined copy of PlatformItemCollection.Storage(v37, v35 & 1);
      *(v22 + 16) = v37;
      *(v22 + 24) = v38;
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v35 == 254)
  {
    outlined destroy of ToolbarStorage.NavigationProperties.Actions(v22 + 16);
LABEL_28:
    v36 = v23[24];
    *(v22 + 16) = *(v23 + 2);
    *(v22 + 24) = v36;
    goto LABEL_33;
  }

  if (v34 == 255)
  {
    goto LABEL_30;
  }

  if (v35 == 255)
  {
    outlined destroy of PlatformItemCollection(v22 + 16);
    goto LABEL_28;
  }

  v85 = *(v23 + 2);
  v86 = v35 & 1;
  outlined copy of PlatformItemCollection.Storage(v85, v35 & 1);
  v87 = *(v22 + 16);
  v88 = *(v22 + 24);
  *(v22 + 16) = v85;
  *(v22 + 24) = v86;
  outlined consume of PlatformItemCollection.Storage(v87, v88);
LABEL_33:
  swift_unknownObjectWeakCopyAssign();
  *(v22 + 40) = *(v23 + 5);
  v40 = *(v22 + 48);
  v41 = *(v23 + 6);
  *(v22 + 48) = v41;
  v42 = v41;

  v43 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
  v44 = v22 + v43;
  v45 = &v23[v43];
  v46 = type metadata accessor for PlatformItemList.Item();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  v49 = v48(v44, 1, v46);
  v50 = v48(v45, 1, v46);
  if (!v49)
  {
    if (v50)
    {
      _s7SwiftUI16CommandOperationVWOhTm_1(v44, type metadata accessor for PlatformItemList.Item);
      goto LABEL_42;
    }

    v69 = *v44;
    v70 = *v45;
    *v44 = *v45;
    v71 = v70;

    v72 = *(v44 + 8);
    v73 = *(v45 + 1);
    *(v44 + 8) = v73;
    v74 = v73;

    *(v44 + 16) = *(v45 + 2);
    *(v44 + 24) = *(v45 + 3);

    *(v44 + 32) = v45[32];
    *(v44 + 40) = *(v45 + 5);
    *(v44 + 48) = *(v45 + 6);

    *(v44 + 56) = v45[56];
    v75 = *(v45 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v44 + 192) >> 1 == 4294967294)
    {
      if (v75 == 0x1FFFFFFFCLL)
      {
        v76 = *(v45 + 4);
        v77 = *(v45 + 5);
        v78 = *(v45 + 7);
        *(v44 + 96) = *(v45 + 6);
        *(v44 + 112) = v78;
        *(v44 + 64) = v76;
        *(v44 + 80) = v77;
        v79 = *(v45 + 8);
        v80 = *(v45 + 9);
        v81 = *(v45 + 11);
        *(v44 + 160) = *(v45 + 10);
        *(v44 + 176) = v81;
        *(v44 + 128) = v79;
        *(v44 + 144) = v80;
        v82 = *(v45 + 12);
        v83 = *(v45 + 13);
        v84 = *(v45 + 14);
        *(v44 + 235) = *(v45 + 235);
        *(v44 + 208) = v83;
        *(v44 + 224) = v84;
        *(v44 + 192) = v82;
      }

      else
      {
        v191 = v45[72];
        if (v191 == 255)
        {
          v198 = *(v45 + 8);
          *(v44 + 72) = v45[72];
          *(v44 + 64) = v198;
        }

        else
        {
          v192 = *(v45 + 8);
          outlined copy of GraphicsImage.Contents(v192, v45[72]);
          *(v44 + 64) = v192;
          *(v44 + 72) = v191;
        }

        *(v44 + 80) = *(v45 + 10);
        *(v44 + 88) = *(v45 + 88);
        *(v44 + 104) = v45[104];
        v199 = *(v45 + 108);
        *(v44 + 121) = *(v45 + 121);
        *(v44 + 108) = v199;
        v200 = *(v45 + 136);
        v201 = *(v45 + 152);
        *(v44 + 168) = v45[168];
        *(v44 + 152) = v201;
        *(v44 + 136) = v200;
        *(v44 + 169) = v45[169];
        *(v44 + 170) = v45[170];
        *(v44 + 171) = v45[171];
        v202 = *(v45 + 24);
        if (v202 >> 1 == 0xFFFFFFFF)
        {
          v203 = *(v45 + 12);
          *(v44 + 176) = *(v45 + 11);
          *(v44 + 192) = v203;
        }

        else
        {
          v204 = a3;
          v205 = *(v45 + 22);
          v206 = *(v45 + 23);
          v207 = v4;
          v208 = *(v45 + 25);
          outlined copy of AccessibilityImageLabel(v205, v206, *(v45 + 24));
          *(v44 + 176) = v205;
          *(v44 + 184) = v206;
          a3 = v204;
          *(v44 + 192) = v202;
          *(v44 + 200) = v208;
          v4 = v207;
        }

        *(v44 + 208) = *(v45 + 26);
        *(v44 + 216) = *(v45 + 27);
        *(v44 + 224) = v45[224];
        *(v44 + 225) = v45[225];
        v209 = *(v45 + 57);
        *(v44 + 232) = v45[232];
        *(v44 + 228) = v209;
        v210 = *(v45 + 30);
        *(v44 + 240) = v210;
        *(v44 + 248) = *(v45 + 124);
        *(v44 + 250) = v45[250];
        swift_unknownObjectRetain();

        v211 = v210;
      }
    }

    else if (v75 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(v44 + 64);
      v91 = *(v45 + 7);
      v93 = *(v45 + 4);
      v92 = *(v45 + 5);
      *(v44 + 96) = *(v45 + 6);
      *(v44 + 112) = v91;
      *(v44 + 64) = v93;
      *(v44 + 80) = v92;
      v94 = *(v45 + 11);
      v96 = *(v45 + 8);
      v95 = *(v45 + 9);
      *(v44 + 160) = *(v45 + 10);
      *(v44 + 176) = v94;
      *(v44 + 128) = v96;
      *(v44 + 144) = v95;
      v98 = *(v45 + 13);
      v97 = *(v45 + 14);
      v99 = *(v45 + 12);
      *(v44 + 235) = *(v45 + 235);
      *(v44 + 208) = v98;
      *(v44 + 224) = v97;
      *(v44 + 192) = v99;
    }

    else
    {
      v193 = v45[72];
      if (*(v44 + 72) == 255)
      {
        if (v193 == 255)
        {
          v214 = *(v45 + 8);
          *(v44 + 72) = v45[72];
          *(v44 + 64) = v214;
        }

        else
        {
          v212 = *(v45 + 8);
          outlined copy of GraphicsImage.Contents(v212, v45[72]);
          *(v44 + 64) = v212;
          *(v44 + 72) = v193;
        }
      }

      else if (v193 == 255)
      {
        outlined destroy of GraphicsImage.Contents(v44 + 64);
        v213 = v45[72];
        *(v44 + 64) = *(v45 + 8);
        *(v44 + 72) = v213;
      }

      else
      {
        v194 = *(v45 + 8);
        outlined copy of GraphicsImage.Contents(v194, v45[72]);
        v195 = *(v44 + 64);
        *(v44 + 64) = v194;
        v196 = *(v44 + 72);
        *(v44 + 72) = v193;
        outlined consume of GraphicsImage.Contents(v195, v196);
      }

      *(v44 + 80) = *(v45 + 10);
      *(v44 + 88) = *(v45 + 11);
      *(v44 + 96) = *(v45 + 12);
      *(v44 + 104) = v45[104];
      v215 = *(v45 + 108);
      *(v44 + 121) = *(v45 + 121);
      *(v44 + 108) = v215;
      v216 = *(v45 + 136);
      v217 = *(v45 + 152);
      *(v44 + 168) = v45[168];
      *(v44 + 152) = v217;
      *(v44 + 136) = v216;
      *(v44 + 169) = v45[169];
      *(v44 + 170) = v45[170];
      *(v44 + 171) = v45[171];
      v218 = *(v45 + 24);
      v219 = v218 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v44 + 192) >> 1 == 0xFFFFFFFFLL)
      {
        if (v219 == 0x1FFFFFFFELL)
        {
          v220 = *(v45 + 12);
          *(v44 + 176) = *(v45 + 11);
          *(v44 + 192) = v220;
        }

        else
        {
          v222 = a3;
          v223 = *(v45 + 22);
          v224 = *(v45 + 23);
          v225 = v4;
          v226 = *(v45 + 25);
          outlined copy of AccessibilityImageLabel(v223, v224, *(v45 + 24));
          *(v44 + 176) = v223;
          *(v44 + 184) = v224;
          a3 = v222;
          *(v44 + 192) = v218;
          *(v44 + 200) = v226;
          v4 = v225;
        }
      }

      else if (v219 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(v44 + 176);
        v221 = *(v45 + 12);
        *(v44 + 176) = *(v45 + 11);
        *(v44 + 192) = v221;
      }

      else
      {
        v227 = a3;
        v228 = *(v45 + 22);
        v229 = *(v45 + 23);
        v230 = v4;
        v231 = *(v45 + 25);
        outlined copy of AccessibilityImageLabel(v228, v229, *(v45 + 24));
        v232 = *(v44 + 176);
        v233 = *(v44 + 184);
        v234 = *(v44 + 192);
        *(v44 + 176) = v228;
        *(v44 + 184) = v229;
        a3 = v227;
        *(v44 + 192) = v218;
        *(v44 + 200) = v231;
        v4 = v230;
        outlined consume of AccessibilityImageLabel(v232, v233, v234);
      }

      *(v44 + 208) = *(v45 + 26);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v44 + 216) = *(v45 + 27);

      *(v44 + 224) = v45[224];
      *(v44 + 225) = v45[225];
      v235 = *(v45 + 57);
      *(v44 + 232) = v45[232];
      *(v44 + 228) = v235;
      v236 = *(v44 + 240);
      v237 = *(v45 + 30);
      *(v44 + 240) = v237;
      v238 = v237;

      *(v44 + 248) = *(v45 + 124);
      *(v44 + 250) = v45[250];
    }

    v239 = *(v45 + 33);
    if (!*(v44 + 264))
    {
      if (v239)
      {
        *(v44 + 256) = *(v45 + 32);
        *(v44 + 264) = *(v45 + 33);
        v243 = *(v45 + 34);

        if (v243 >= 2)
        {
          v244 = v243;
        }

        *(v44 + 272) = v243;
        v245 = *(v45 + 70);
        *(v44 + 284) = v45[284];
        *(v44 + 280) = v245;
        *(v44 + 285) = v45[285];
        *(v44 + 286) = v45[286];
        *(v44 + 288) = *(v45 + 36);
        *(v44 + 296) = *(v45 + 37);
      }

      else
      {
        v248 = *(v45 + 16);
        v249 = *(v45 + 18);
        *(v44 + 272) = *(v45 + 17);
        *(v44 + 288) = v249;
        *(v44 + 256) = v248;
      }

LABEL_139:
      v252 = *(v45 + 42);
      v253 = v252 & 0xFFFFFFFFFFFFFFFCLL;
      v470 = v5;
      v468 = a3;
      v472 = v46;
      if (*(v44 + 336) >> 2 == 0xFFFFFFFFLL)
      {
        if (v253 == 0x3FFFFFFFCLL)
        {
          v254 = *(v45 + 19);
          v255 = *(v45 + 21);
          *(v44 + 320) = *(v45 + 20);
          *(v44 + 336) = v255;
          *(v44 + 304) = v254;
          v256 = *(v45 + 22);
          v257 = *(v45 + 23);
          v258 = *(v45 + 24);
          *(v44 + 400) = *(v45 + 50);
          *(v44 + 368) = v257;
          *(v44 + 384) = v258;
          *(v44 + 352) = v256;
        }

        else
        {
          v264 = *(v45 + 38);
          v265 = *(v45 + 39);
          v463 = v4;
          v266 = *(v45 + 40);
          v267 = *(v45 + 41);
          v268 = *(v45 + 43);
          v269 = *(v45 + 44);
          v442 = *(v45 + 46);
          v446 = *(v45 + 47);
          v451 = *(v45 + 48);
          __dstb = *(v45 + 49);
          v459 = *(v45 + 50);
          v270 = *(v45 + 45);
          outlined copy of PlatformItemList.Item.SystemItem(v264, v265, v266, v267, v252, v268, v269, v270, v442, v446, v451, __dstb, v459);
          *(v44 + 304) = v264;
          *(v44 + 312) = v265;
          *(v44 + 320) = v266;
          *(v44 + 328) = v267;
          *(v44 + 336) = v252;
          *(v44 + 344) = v268;
          *(v44 + 352) = v269;
          *(v44 + 360) = v270;
          *(v44 + 368) = v442;
          *(v44 + 376) = v446;
          *(v44 + 384) = v451;
          *(v44 + 392) = __dstb;
          v46 = v472;
          v4 = v463;
          *(v44 + 400) = v459;
        }
      }

      else if (v253 == 0x3FFFFFFFCLL)
      {
        outlined destroy of PlatformItemList.Item.SystemItem(v44 + 304);
        v260 = *(v45 + 20);
        v259 = *(v45 + 21);
        *(v44 + 304) = *(v45 + 19);
        *(v44 + 320) = v260;
        *(v44 + 336) = v259;
        v262 = *(v45 + 23);
        v261 = *(v45 + 24);
        v263 = *(v45 + 22);
        *(v44 + 400) = *(v45 + 50);
        *(v44 + 368) = v262;
        *(v44 + 384) = v261;
        *(v44 + 352) = v263;
      }

      else
      {
        v271 = *(v45 + 38);
        v272 = *(v45 + 39);
        v464 = v4;
        v274 = *(v45 + 40);
        v273 = *(v45 + 41);
        v447 = *(v45 + 44);
        v452 = *(v45 + 43);
        v275 = *(v45 + 46);
        v443 = *(v45 + 45);
        v276 = *(v45 + 47);
        v277 = *(v45 + 48);
        __dstc = *(v45 + 49);
        v460 = *(v45 + 50);
        outlined copy of PlatformItemList.Item.SystemItem(v271, v272, v274, v273, v252, v452, v447, v443, v275, v276, v277, __dstc, v460);
        v278 = *(v44 + 304);
        v279 = *(v44 + 312);
        v280 = *(v44 + 320);
        v281 = *(v44 + 328);
        v282 = *(v44 + 336);
        v283 = *(v44 + 344);
        v284 = *(v44 + 352);
        v285 = *(v44 + 360);
        v286 = *(v44 + 368);
        v287 = *(v44 + 384);
        v288 = *(v44 + 400);
        *(v44 + 304) = v271;
        *(v44 + 312) = v272;
        *(v44 + 320) = v274;
        *(v44 + 328) = v273;
        *(v44 + 336) = v252;
        *(v44 + 344) = v452;
        *(v44 + 352) = v447;
        *(v44 + 360) = v443;
        *(v44 + 368) = v275;
        *(v44 + 376) = v276;
        *(v44 + 384) = v277;
        v46 = v472;
        v4 = v464;
        *(v44 + 392) = __dstc;
        *(v44 + 400) = v460;
        outlined consume of PlatformItemList.Item.SystemItem(v278, v279, v280, v281, v282, v283, v284, v285, v286, *(&v286 + 1), v287, SBYTE8(v287), v288);
      }

      v289 = (v44 + 408);
      v290 = v45 + 408;
      v291 = *(v44 + 416);
      v292 = *(v45 + 52);
      if (v291 == 1)
      {
        if (v292 == 1)
        {
          *v289 = *v290;
          v293 = *(v45 + 424);
          v294 = *(v45 + 440);
          v295 = *(v45 + 456);
          *(v44 + 472) = v45[472];
          *(v44 + 440) = v294;
          *(v44 + 456) = v295;
          *(v44 + 424) = v293;
          goto LABEL_181;
        }

        *(v44 + 408) = v45[408];
        *(v44 + 409) = v45[409];
        *(v44 + 410) = v45[410];
        *(v44 + 411) = v45[411];
        *(v44 + 412) = v45[412];
        v299 = *(v45 + 52);
        if (v299)
        {
          v300 = *(v45 + 53);
          *(v44 + 416) = v299;
          *(v44 + 424) = v300;
        }

        else
        {
          *(v44 + 416) = *(v45 + 26);
        }

        v303 = *(v45 + 54);
        if (v303)
        {
          v304 = *(v45 + 55);
          *(v44 + 432) = v303;
          *(v44 + 440) = v304;
        }

        else
        {
          *(v44 + 432) = *(v45 + 27);
        }

        v306 = *(v45 + 56);
        if (!v306)
        {
          goto LABEL_179;
        }

        goto LABEL_177;
      }

      if (v292 == 1)
      {
        outlined destroy of PlatformItemList.Item.SelectionBehavior(v44 + 408);
        *v289 = *v290;
        v297 = *(v45 + 440);
        v296 = *(v45 + 456);
        v298 = *(v45 + 424);
        *(v44 + 472) = v45[472];
        *(v44 + 440) = v297;
        *(v44 + 456) = v296;
        *(v44 + 424) = v298;
        goto LABEL_181;
      }

      *(v44 + 408) = *v290;
      *(v44 + 409) = v45[409];
      *(v44 + 410) = v45[410];
      *(v44 + 411) = v45[411];
      *(v44 + 412) = v45[412];
      v301 = *(v45 + 52);
      if (v291)
      {
        if (v301)
        {
          v302 = *(v45 + 53);
          *(v44 + 416) = v301;
          *(v44 + 424) = v302;

          goto LABEL_166;
        }
      }

      else if (v301)
      {
        v305 = *(v45 + 53);
        *(v44 + 416) = v301;
        *(v44 + 424) = v305;

        goto LABEL_166;
      }

      *(v44 + 416) = *(v45 + 26);
LABEL_166:
      v307 = *(v45 + 54);
      if (*(v44 + 432))
      {
        if (v307)
        {
          v308 = *(v45 + 55);
          *(v44 + 432) = v307;
          *(v44 + 440) = v308;

          goto LABEL_173;
        }
      }

      else if (v307)
      {
        v309 = *(v45 + 55);
        *(v44 + 432) = v307;
        *(v44 + 440) = v309;

        goto LABEL_173;
      }

      *(v44 + 432) = *(v45 + 27);
LABEL_173:
      v306 = *(v45 + 56);
      if (*(v44 + 448))
      {
        if (v306)
        {
          v310 = *(v45 + 57);
          *(v44 + 448) = v306;
          *(v44 + 456) = v310;

LABEL_180:
          *(v44 + 464) = *(v45 + 58);
          *(v44 + 472) = v45[472];
LABEL_181:
          *(v44 + 480) = *(v45 + 60);
          *(v44 + 488) = *(v45 + 61);

          *(v44 + 496) = *(v45 + 62);
          *(v44 + 504) = v45[504];
          v312 = *(v45 + 64);
          if (*(v44 + 512))
          {
            if (v312)
            {
              v313 = *(v45 + 65);
              *(v44 + 512) = v312;
              *(v44 + 520) = v313;

              goto LABEL_188;
            }
          }

          else if (v312)
          {
            v314 = *(v45 + 65);
            *(v44 + 512) = v312;
            *(v44 + 520) = v314;

            goto LABEL_188;
          }

          *(v44 + 512) = *(v45 + 32);
LABEL_188:
          *(v44 + 528) = v45[528];
          v315 = *(v45 + 102);
          if (*(v44 + 816))
          {
            if (v315)
            {
              *(v44 + 536) = *(v45 + 67);
              *(v44 + 544) = *(v45 + 68);

              *(v44 + 552) = v45[552];
              *(v44 + 560) = *(v45 + 70);

              *(v44 + 568) = v45[568];
              v316 = *(v45 + 36);
              *(v44 + 592) = v45[592];
              *(v44 + 576) = v316;
              v317 = (v44 + 600);
              v318 = v45 + 600;
              v319 = *(v44 + 624);
              v320 = *(v45 + 78);
              if (v319 != 1)
              {
                if (v320 == 1)
                {
                  outlined destroy of AccessibilityValueStorage(v44 + 600);
                  v330 = *(v45 + 616);
                  v329 = *(v45 + 632);
                  *v317 = *v318;
                  *(v44 + 616) = v330;
                  *(v44 + 632) = v329;
                }

                else
                {
                  if (v319)
                  {
                    if (v320)
                    {
                      __swift_assign_boxed_opaque_existential_1((v44 + 600), v45 + 75);
                    }

                    else
                    {
                      outlined destroy of AnyAccessibilityValue(v44 + 600);
                      v348 = *(v45 + 79);
                      v349 = *(v45 + 616);
                      *v317 = *v318;
                      *(v44 + 616) = v349;
                      *(v44 + 632) = v348;
                    }
                  }

                  else if (v320)
                  {
                    *(v44 + 624) = v320;
                    *(v44 + 632) = *(v45 + 79);
                    (**(v320 - 8))(v44 + 600, (v45 + 600));
                  }

                  else
                  {
                    v350 = *v318;
                    v351 = *(v45 + 616);
                    *(v44 + 632) = *(v45 + 79);
                    *v317 = v350;
                    *(v44 + 616) = v351;
                  }

                  *(v44 + 640) = *(v45 + 80);
                }

                goto LABEL_220;
              }

              if (v320)
              {
                if (v320 == 1)
                {
                  v321 = *v318;
                  v322 = *(v45 + 632);
                  *(v44 + 616) = *(v45 + 616);
                  *(v44 + 632) = v322;
                  *v317 = v321;
LABEL_220:
                  v352 = *(v45 + 81);
                  *(v44 + 656) = v45[656];
                  *(v44 + 648) = v352;
                  v353 = (v44 + 664);
                  v354 = v45 + 664;
                  v355 = *(v45 + 97);
                  if (*(v44 + 776) == 1)
                  {
                    if (v355 == 1)
                    {
                      v356 = *(v45 + 680);
                      *v353 = *v354;
                      *(v44 + 680) = v356;
                      v357 = *(v45 + 696);
                      v358 = *(v45 + 712);
                      v359 = *(v45 + 744);
                      *(v44 + 728) = *(v45 + 728);
                      *(v44 + 744) = v359;
                      *(v44 + 696) = v357;
                      *(v44 + 712) = v358;
                      v360 = *(v45 + 760);
                      v361 = *(v45 + 776);
                      v362 = *(v45 + 792);
                      *(v44 + 808) = v45[808];
                      *(v44 + 776) = v361;
                      *(v44 + 792) = v362;
                      *(v44 + 760) = v360;
                    }

                    else
                    {
                      v370 = *v354;
                      *(v44 + 672) = v45[672];
                      *v353 = v370;
                      v371 = *(v45 + 85);
                      *(v44 + 688) = v45[688];
                      *(v44 + 680) = v371;
                      *(v44 + 689) = v45[689];
                      *(v44 + 690) = v45[690];
                      *(v44 + 691) = v45[691];
                      *(v44 + 692) = v45[692];
                      *(v44 + 696) = *(v45 + 87);
                      *(v44 + 704) = *(v45 + 88);
                      *(v44 + 712) = *(v45 + 89);
                      *(v44 + 720) = *(v45 + 90);
                      *(v44 + 728) = *(v45 + 91);
                      *(v44 + 736) = *(v45 + 92);
                      *(v44 + 744) = v45[744];
                      *(v44 + 745) = v45[745];
                      *(v44 + 752) = *(v45 + 94);
                      *(v44 + 760) = *(v45 + 95);
                      *(v44 + 768) = v45[768];
                      *(v44 + 776) = *(v45 + 97);
                      v372 = *(v45 + 49);
                      *(v44 + 800) = *(v45 + 100);
                      *(v44 + 784) = v372;
                      *(v44 + 808) = v45[808];
                    }
                  }

                  else if (v355 == 1)
                  {
                    outlined destroy of AccessibilityTextLayoutProperties(v44 + 664);
                    v363 = *(v45 + 680);
                    *v353 = *v354;
                    *(v44 + 680) = v363;
                    v364 = *(v45 + 744);
                    v366 = *(v45 + 696);
                    v365 = *(v45 + 712);
                    *(v44 + 728) = *(v45 + 728);
                    *(v44 + 744) = v364;
                    *(v44 + 696) = v366;
                    *(v44 + 712) = v365;
                    v368 = *(v45 + 776);
                    v367 = *(v45 + 792);
                    v369 = *(v45 + 760);
                    *(v44 + 808) = v45[808];
                    *(v44 + 776) = v368;
                    *(v44 + 792) = v367;
                    *(v44 + 760) = v369;
                  }

                  else
                  {
                    v373 = *v354;
                    *(v44 + 672) = v45[672];
                    *v353 = v373;
                    v374 = *(v45 + 85);
                    *(v44 + 688) = v45[688];
                    *(v44 + 680) = v374;
                    *(v44 + 689) = v45[689];
                    *(v44 + 690) = v45[690];
                    *(v44 + 691) = v45[691];
                    *(v44 + 692) = v45[692];
                    *(v44 + 696) = *(v45 + 87);
                    *(v44 + 704) = *(v45 + 88);
                    *(v44 + 712) = *(v45 + 89);
                    *(v44 + 720) = *(v45 + 90);
                    *(v44 + 728) = *(v45 + 91);
                    *(v44 + 736) = *(v45 + 92);
                    *(v44 + 744) = v45[744];
                    *(v44 + 745) = v45[745];
                    *(v44 + 752) = *(v45 + 94);
                    *(v44 + 760) = *(v45 + 95);
                    *(v44 + 768) = v45[768];
                    *(v44 + 776) = *(v45 + 97);

                    v375 = *(v45 + 49);
                    *(v44 + 800) = *(v45 + 100);
                    *(v44 + 784) = v375;
                    *(v44 + 808) = v45[808];
                  }

                  *(v44 + 816) = *(v45 + 102);

                  *(v44 + 824) = *(v45 + 103);

                  *(v44 + 832) = *(v45 + 104);

                  goto LABEL_228;
                }

                *(v44 + 624) = v320;
                *(v44 + 632) = *(v45 + 79);
                (**(v320 - 8))(v44 + 600, (v45 + 600));
              }

              else
              {
                v346 = *v318;
                v347 = *(v45 + 616);
                *(v44 + 632) = *(v45 + 79);
                *v317 = v346;
                *(v44 + 616) = v347;
              }

              *(v44 + 640) = *(v45 + 80);

              goto LABEL_220;
            }

            outlined destroy of PlatformItemList.Item.Accessibility(v44 + 536);
LABEL_199:
            memcpy((v44 + 536), v45 + 536, 0x130uLL);
            goto LABEL_228;
          }

          if (!v315)
          {
            goto LABEL_199;
          }

          *(v44 + 536) = *(v45 + 67);
          *(v44 + 544) = *(v45 + 68);
          *(v44 + 552) = v45[552];
          *(v44 + 560) = *(v45 + 70);
          *(v44 + 568) = v45[568];
          v323 = *(v45 + 36);
          *(v44 + 592) = v45[592];
          *(v44 + 576) = v323;
          v324 = (v44 + 600);
          v325 = (v45 + 600);
          v326 = *(v45 + 78);

          if (v326)
          {
            if (v326 == 1)
            {
              v327 = *v325;
              v328 = *(v45 + 632);
              *(v44 + 616) = *(v45 + 616);
              *(v44 + 632) = v328;
              *v324 = v327;
LABEL_208:
              v333 = *(v45 + 81);
              *(v44 + 656) = v45[656];
              *(v44 + 648) = v333;
              v334 = (v44 + 664);
              v335 = v45 + 664;
              if (*(v45 + 97) == 1)
              {
                v336 = *(v45 + 680);
                *v334 = *v335;
                *(v44 + 680) = v336;
                v337 = *(v45 + 696);
                v338 = *(v45 + 712);
                v339 = *(v45 + 744);
                *(v44 + 728) = *(v45 + 728);
                *(v44 + 744) = v339;
                *(v44 + 696) = v337;
                *(v44 + 712) = v338;
                v340 = *(v45 + 760);
                v341 = *(v45 + 776);
                v342 = *(v45 + 792);
                *(v44 + 808) = v45[808];
                *(v44 + 776) = v341;
                *(v44 + 792) = v342;
                *(v44 + 760) = v340;
              }

              else
              {
                v343 = *v335;
                *(v44 + 672) = v45[672];
                *v334 = v343;
                v344 = *(v45 + 85);
                *(v44 + 688) = v45[688];
                *(v44 + 680) = v344;
                *(v44 + 689) = v45[689];
                *(v44 + 690) = v45[690];
                *(v44 + 691) = v45[691];
                *(v44 + 692) = v45[692];
                *(v44 + 696) = *(v45 + 87);
                *(v44 + 704) = *(v45 + 88);
                *(v44 + 712) = *(v45 + 89);
                *(v44 + 720) = *(v45 + 90);
                *(v44 + 728) = *(v45 + 91);
                *(v44 + 736) = *(v45 + 92);
                *(v44 + 744) = v45[744];
                *(v44 + 745) = v45[745];
                *(v44 + 752) = *(v45 + 94);
                *(v44 + 760) = *(v45 + 95);
                *(v44 + 768) = v45[768];
                *(v44 + 776) = *(v45 + 97);
                v345 = *(v45 + 49);
                *(v44 + 800) = *(v45 + 100);
                *(v44 + 784) = v345;
                *(v44 + 808) = v45[808];
              }

              *(v44 + 816) = *(v45 + 102);
              *(v44 + 824) = *(v45 + 103);
              *(v44 + 832) = *(v45 + 104);

LABEL_228:
              v376 = (v44 + 840);
              v377 = (v45 + 840);
              v378 = *(v44 + 864);
              v379 = *(v45 + 108);
              if (v378 == 1)
              {
                if (v379)
                {
                  if (v379 == 1)
                  {
                    v380 = *v377;
                    v381 = *(v45 + 856);
                    v382 = *(v45 + 872);
                    *(v44 + 888) = *(v45 + 111);
                    *(v44 + 856) = v381;
                    *(v44 + 872) = v382;
                    *v376 = v380;
                    goto LABEL_252;
                  }

                  *(v44 + 864) = v379;
                  *(v44 + 872) = *(v45 + 109);
                  (**(v379 - 8))(v44 + 840, (v45 + 840));
                }

                else
                {
                  v386 = *v377;
                  v387 = *(v45 + 856);
                  *(v44 + 872) = *(v45 + 109);
                  *v376 = v386;
                  *(v44 + 856) = v387;
                }

                v388 = *(v45 + 110);
                if (!v388)
                {
                  goto LABEL_251;
                }
              }

              else
              {
                if (v379 == 1)
                {
                  outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v44 + 840);
                  v384 = *(v45 + 856);
                  v383 = *(v45 + 872);
                  v385 = *v377;
                  *(v44 + 888) = *(v45 + 111);
                  *(v44 + 856) = v384;
                  *(v44 + 872) = v383;
                  *v376 = v385;
                  goto LABEL_252;
                }

                if (v378)
                {
                  if (v379)
                  {
                    __swift_assign_boxed_opaque_existential_1((v44 + 840), v45 + 105);
                  }

                  else
                  {
                    outlined destroy of AnyNavigationLinkPresentedValue(v44 + 840);
                    v389 = *(v45 + 109);
                    v390 = *(v45 + 856);
                    *v376 = *v377;
                    *(v44 + 856) = v390;
                    *(v44 + 872) = v389;
                  }
                }

                else if (v379)
                {
                  *(v44 + 864) = v379;
                  *(v44 + 872) = *(v45 + 109);
                  (**(v379 - 8))(v44 + 840, (v45 + 840));
                }

                else
                {
                  v391 = *v377;
                  v392 = *(v45 + 856);
                  *(v44 + 872) = *(v45 + 109);
                  *v376 = v391;
                  *(v44 + 856) = v392;
                }

                v388 = *(v45 + 110);
                if (*(v44 + 880))
                {
                  if (v388)
                  {
                    v393 = *(v45 + 111);
                    *(v44 + 880) = v388;
                    *(v44 + 888) = v393;

                    goto LABEL_252;
                  }

                  goto LABEL_251;
                }

                if (!v388)
                {
LABEL_251:
                  *(v44 + 880) = *(v45 + 55);
LABEL_252:
                  v395 = *(v44 + 896);
                  v396 = *(v45 + 112);
                  *(v44 + 896) = v396;
                  v397 = v396;

                  *(v44 + 904) = *(v45 + 113);
                  *(v44 + 912) = *(v45 + 114);

                  *(v44 + 920) = *(v45 + 115);
                  *(v44 + 928) = *(v45 + 116);

                  *(v44 + 936) = *(v45 + 117);

                  *(v44 + 944) = *(v45 + 118);

                  *(v44 + 952) = v45[952];
                  *(v44 + 953) = v45[953];
                  *(v44 + 954) = v45[954];
                  v398 = *(v46 + 112);
                  v399 = (v44 + v398);
                  v400 = &v45[v398];
                  v401 = type metadata accessor for CommandOperation();
                  v402 = *(v401 - 8);
                  v403 = *(v402 + 48);
                  v404 = v403(v399, 1, v401);
                  v405 = v403(v400, 1, v401);
                  if (v404)
                  {
                    if (!v405)
                    {
                      v461 = v400;
                      v465 = v4;
                      *v399 = *v400;
                      v406 = *(v401 + 20);
                      v407 = &v399[v406];
                      v408 = &v400[v406];
                      v409 = *v408;
                      v410 = *(v408 + 1);
                      v411 = v408[16];
                      outlined copy of Text.Storage(*v408, v410, v411);
                      *v407 = v409;
                      *(v407 + 1) = v410;
                      v407[16] = v411;
                      *(v407 + 3) = *(v408 + 3);
                      v412 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v413 = type metadata accessor for UUID();
                      __dstd = *(*(v413 - 8) + 16);

                      __dstd(&v407[v412], &v408[v412], v413);
                      v414 = *(v401 + 24);
                      v415 = &v399[v414];
                      v416 = &v461[v414];
                      if (*v416)
                      {
                        v417 = *(v416 + 1);
                        *v415 = *v416;
                        *(v415 + 1) = v417;
                      }

                      else
                      {
                        *v415 = *v416;
                      }

                      v4 = v465;
                      v419 = v472;
                      (*(v402 + 56))(v399, 0, 1, v401);
                      a3 = v468;
                      goto LABEL_265;
                    }
                  }

                  else
                  {
                    if (!v405)
                    {
                      v466 = v4;
                      *v399 = *v400;
                      v420 = *(v401 + 20);
                      v421 = &v399[v420];
                      v422 = &v400[v420];
                      v423 = *&v400[v420];
                      v424 = *&v400[v420 + 8];
                      v425 = v400[v420 + 16];
                      outlined copy of Text.Storage(v423, v424, v425);
                      v426 = *v421;
                      v427 = *(v421 + 1);
                      v428 = v421[16];
                      *v421 = v423;
                      *(v421 + 1) = v424;
                      v421[16] = v425;
                      outlined consume of Text.Storage(v426, v427, v428);
                      *(v421 + 3) = *(v422 + 3);

                      v429 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v430 = type metadata accessor for UUID();
                      (*(*(v430 - 8) + 24))(&v421[v429], &v422[v429], v430);
                      v431 = *(v401 + 24);
                      v432 = &v399[v431];
                      v433 = &v400[v431];
                      v434 = *&v399[v431];
                      v435 = *&v400[v431];
                      if (v434)
                      {
                        v4 = v466;
                        a3 = v468;
                        if (v435)
                        {
                          v436 = *(v433 + 1);
                          *v432 = v435;
                          *(v432 + 1) = v436;

                          goto LABEL_259;
                        }
                      }

                      else
                      {
                        v4 = v466;
                        a3 = v468;
                        if (v435)
                        {
                          v438 = *(v433 + 1);
                          *v432 = v435;
                          *(v432 + 1) = v438;

                          goto LABEL_259;
                        }
                      }

                      *v432 = *v433;
                      goto LABEL_259;
                    }

                    _s7SwiftUI16CommandOperationVWOhTm_1(v399, type metadata accessor for CommandOperation);
                  }

                  type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                  memcpy(v399, v400, *(*(v418 - 8) + 64));
                  a3 = v468;
LABEL_259:
                  v419 = v472;
LABEL_265:
                  *(v44 + v419[29]) = v45[v419[29]];
                  *(v44 + v419[30]) = v45[v419[30]];
                  *(v44 + v419[31]) = v45[v419[31]];
                  *(v44 + v419[32]) = v45[v419[32]];
                  *(v44 + v419[33]) = v45[v419[33]];
                  *(v44 + v419[34]) = *&v45[v419[34]];

                  v5 = v470;
                  goto LABEL_266;
                }
              }

              v394 = *(v45 + 111);
              *(v44 + 880) = v388;
              *(v44 + 888) = v394;

              goto LABEL_252;
            }

            *(v44 + 624) = v326;
            *(v44 + 632) = *(v45 + 79);
            (**(v326 - 8))(v44 + 600, (v45 + 600), v326);
          }

          else
          {
            v331 = *v325;
            v332 = *(v45 + 616);
            *(v44 + 632) = *(v45 + 79);
            *v324 = v331;
            *(v44 + 616) = v332;
          }

          *(v44 + 640) = *(v45 + 80);

          goto LABEL_208;
        }
      }

      else if (v306)
      {
LABEL_177:
        v311 = *(v45 + 57);
        *(v44 + 448) = v306;
        *(v44 + 456) = v311;

        goto LABEL_180;
      }

LABEL_179:
      *(v44 + 448) = *(v45 + 28);
      goto LABEL_180;
    }

    if (!v239)
    {
      outlined destroy of Image.NamedResolved(v44 + 256);
      v247 = *(v45 + 17);
      v246 = *(v45 + 18);
      *(v44 + 256) = *(v45 + 16);
      *(v44 + 272) = v247;
      *(v44 + 288) = v246;
      goto LABEL_139;
    }

    *(v44 + 256) = *(v45 + 32);
    *(v44 + 264) = *(v45 + 33);

    v240 = *(v44 + 272);
    v241 = *(v45 + 34);
    if (v240 >= 2)
    {
      if (v241 >= 2)
      {
        *(v44 + 272) = v241;
        v250 = v241;

        goto LABEL_138;
      }

      v241 = *(v45 + 34);
    }

    else if (v241 >= 2)
    {
      *(v44 + 272) = v241;
      v242 = v241;
LABEL_138:
      v251 = *(v45 + 70);
      *(v44 + 284) = v45[284];
      *(v44 + 280) = v251;
      *(v44 + 285) = v45[285];
      *(v44 + 286) = v45[286];
      *(v44 + 288) = *(v45 + 36);

      *(v44 + 296) = *(v45 + 37);

      goto LABEL_139;
    }

    *(v44 + 272) = v241;
    goto LABEL_138;
  }

  if (v50)
  {
LABEL_42:
    type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v44, v45, *(*(v68 - 8) + 64));
    goto LABEL_266;
  }

  v469 = v5;
  v471 = v46;
  v51 = *v45;
  *v44 = *v45;
  v52 = *(v45 + 1);
  *(v44 + 8) = v52;
  *(v44 + 16) = *(v45 + 2);
  *(v44 + 24) = *(v45 + 3);
  *(v44 + 32) = v45[32];
  *(v44 + 40) = *(v45 + 5);
  *(v44 + 48) = *(v45 + 6);
  *(v44 + 56) = v45[56];
  v53 = *(v45 + 24);
  v54 = v51;
  v55 = v52;

  v458 = v47;
  if (v53 >> 1 != 4294967294)
  {
    v89 = v45[72];
    if (v89 == 255)
    {
      v100 = *(v45 + 8);
      *(v44 + 72) = v45[72];
      *(v44 + 64) = v100;
    }

    else
    {
      v90 = *(v45 + 8);
      outlined copy of GraphicsImage.Contents(v90, v45[72]);
      *(v44 + 64) = v90;
      *(v44 + 72) = v89;
    }

    *(v44 + 80) = *(v45 + 10);
    *(v44 + 88) = *(v45 + 88);
    *(v44 + 104) = v45[104];
    v101 = *(v45 + 108);
    *(v44 + 121) = *(v45 + 121);
    *(v44 + 108) = v101;
    v102 = *(v45 + 136);
    v103 = *(v45 + 152);
    *(v44 + 168) = v45[168];
    *(v44 + 152) = v103;
    *(v44 + 136) = v102;
    *(v44 + 169) = v45[169];
    *(v44 + 170) = v45[170];
    *(v44 + 171) = v45[171];
    v104 = *(v45 + 24);
    if (v104 >> 1 == 0xFFFFFFFF)
    {
      v105 = *(v45 + 12);
      *(v44 + 176) = *(v45 + 11);
      *(v44 + 192) = v105;
    }

    else
    {
      v106 = *(v45 + 22);
      v107 = *(v45 + 23);
      v108 = *(v45 + 25);
      outlined copy of AccessibilityImageLabel(v106, v107, *(v45 + 24));
      *(v44 + 176) = v106;
      *(v44 + 184) = v107;
      *(v44 + 192) = v104;
      *(v44 + 200) = v108;
    }

    *(v44 + 208) = *(v45 + 26);
    *(v44 + 216) = *(v45 + 27);
    *(v44 + 224) = v45[224];
    *(v44 + 225) = v45[225];
    v109 = *(v45 + 57);
    *(v44 + 232) = v45[232];
    *(v44 + 228) = v109;
    v110 = *(v45 + 30);
    *(v44 + 240) = v110;
    *(v44 + 248) = *(v45 + 124);
    *(v44 + 250) = v45[250];
    swift_unknownObjectRetain();

    v111 = v110;
    if (*(v45 + 33))
    {
      goto LABEL_37;
    }

LABEL_58:
    v112 = *(v45 + 16);
    v113 = *(v45 + 18);
    *(v44 + 272) = *(v45 + 17);
    *(v44 + 288) = v113;
    *(v44 + 256) = v112;
    goto LABEL_59;
  }

  v56 = *(v45 + 4);
  v57 = *(v45 + 5);
  v58 = *(v45 + 7);
  *(v44 + 96) = *(v45 + 6);
  *(v44 + 112) = v58;
  *(v44 + 64) = v56;
  *(v44 + 80) = v57;
  v59 = *(v45 + 8);
  v60 = *(v45 + 9);
  v61 = *(v45 + 11);
  *(v44 + 160) = *(v45 + 10);
  *(v44 + 176) = v61;
  *(v44 + 128) = v59;
  *(v44 + 144) = v60;
  v62 = *(v45 + 12);
  v63 = *(v45 + 13);
  v64 = *(v45 + 14);
  *(v44 + 235) = *(v45 + 235);
  *(v44 + 208) = v63;
  *(v44 + 224) = v64;
  *(v44 + 192) = v62;
  if (!*(v45 + 33))
  {
    goto LABEL_58;
  }

LABEL_37:
  *(v44 + 256) = *(v45 + 32);
  *(v44 + 264) = *(v45 + 33);
  v65 = *(v45 + 34);

  if (v65 >= 2)
  {
    v66 = v65;
  }

  *(v44 + 272) = v65;
  v67 = *(v45 + 70);
  *(v44 + 284) = v45[284];
  *(v44 + 280) = v67;
  *(v44 + 285) = v45[285];
  *(v44 + 286) = v45[286];
  *(v44 + 288) = *(v45 + 36);
  *(v44 + 296) = *(v45 + 37);

LABEL_59:
  v114 = *(v45 + 42);
  v462 = v4;
  v467 = a3;
  if (v114 >> 2 == 0xFFFFFFFF)
  {
    v115 = *(v45 + 19);
    v116 = *(v45 + 21);
    *(v44 + 320) = *(v45 + 20);
    *(v44 + 336) = v116;
    *(v44 + 304) = v115;
    v117 = *(v45 + 22);
    v118 = *(v45 + 23);
    v119 = *(v45 + 24);
    *(v44 + 400) = *(v45 + 50);
    *(v44 + 368) = v118;
    *(v44 + 384) = v119;
    *(v44 + 352) = v117;
  }

  else
  {
    v120 = *(v45 + 38);
    v121 = *(v45 + 39);
    v122 = *(v45 + 40);
    v123 = *(v45 + 41);
    v125 = *(v45 + 43);
    v124 = *(v45 + 44);
    v126 = *(v45 + 45);
    v439 = *(v45 + 46);
    v440 = *(v45 + 47);
    v444 = *(v45 + 48);
    v448 = *(v45 + 49);
    __dsta = *(v45 + 50);
    outlined copy of PlatformItemList.Item.SystemItem(v120, v121, v122, v123, v114, v125, v124, v126, v439, v440, v444, v448, __dsta);
    *(v44 + 304) = v120;
    *(v44 + 312) = v121;
    *(v44 + 320) = v122;
    *(v44 + 328) = v123;
    *(v44 + 336) = v114;
    *(v44 + 344) = v125;
    *(v44 + 352) = v124;
    *(v44 + 360) = v126;
    *(v44 + 368) = v439;
    *(v44 + 376) = v440;
    *(v44 + 384) = v444;
    *(v44 + 392) = v448;
    *(v44 + 400) = __dsta;
  }

  if (*(v45 + 52) == 1)
  {
    *(v44 + 408) = *(v45 + 408);
    v127 = *(v45 + 424);
    v128 = *(v45 + 440);
    v129 = *(v45 + 456);
    *(v44 + 472) = v45[472];
    *(v44 + 440) = v128;
    *(v44 + 456) = v129;
    *(v44 + 424) = v127;
    goto LABEL_72;
  }

  *(v44 + 408) = v45[408];
  *(v44 + 409) = v45[409];
  *(v44 + 410) = v45[410];
  *(v44 + 411) = v45[411];
  *(v44 + 412) = v45[412];
  v130 = *(v45 + 52);
  if (v130)
  {
    v131 = *(v45 + 53);
    *(v44 + 416) = v130;
    *(v44 + 424) = v131;

    v132 = *(v45 + 54);
    if (v132)
    {
      goto LABEL_66;
    }

LABEL_69:
    *(v44 + 432) = *(v45 + 27);
    v134 = *(v45 + 56);
    if (v134)
    {
      goto LABEL_67;
    }

LABEL_70:
    *(v44 + 448) = *(v45 + 28);
    goto LABEL_71;
  }

  *(v44 + 416) = *(v45 + 26);
  v132 = *(v45 + 54);
  if (!v132)
  {
    goto LABEL_69;
  }

LABEL_66:
  v133 = *(v45 + 55);
  *(v44 + 432) = v132;
  *(v44 + 440) = v133;

  v134 = *(v45 + 56);
  if (!v134)
  {
    goto LABEL_70;
  }

LABEL_67:
  v135 = *(v45 + 57);
  *(v44 + 448) = v134;
  *(v44 + 456) = v135;

LABEL_71:
  *(v44 + 464) = *(v45 + 58);
  *(v44 + 472) = v45[472];
LABEL_72:
  *(v44 + 480) = *(v45 + 60);
  *(v44 + 488) = *(v45 + 61);
  *(v44 + 496) = *(v45 + 62);
  *(v44 + 504) = v45[504];
  v136 = *(v45 + 64);

  if (v136)
  {
    v137 = *(v45 + 65);
    *(v44 + 512) = v136;
    *(v44 + 520) = v137;
  }

  else
  {
    *(v44 + 512) = *(v45 + 32);
  }

  *(v44 + 528) = v45[528];
  if (!*(v45 + 102))
  {
    memcpy((v44 + 536), v45 + 536, 0x130uLL);
    goto LABEL_87;
  }

  *(v44 + 536) = *(v45 + 67);
  *(v44 + 544) = *(v45 + 68);
  *(v44 + 552) = v45[552];
  *(v44 + 560) = *(v45 + 70);
  *(v44 + 568) = v45[568];
  v138 = *(v45 + 36);
  *(v44 + 592) = v45[592];
  *(v44 + 576) = v138;
  v139 = (v44 + 600);
  v140 = (v45 + 600);
  v141 = *(v45 + 78);

  if (!v141)
  {
    v144 = *v140;
    v145 = *(v45 + 616);
    *(v44 + 632) = *(v45 + 79);
    *v139 = v144;
    *(v44 + 616) = v145;
LABEL_82:
    *(v44 + 640) = *(v45 + 80);

    goto LABEL_83;
  }

  if (v141 != 1)
  {
    *(v44 + 624) = v141;
    *(v44 + 632) = *(v45 + 79);
    (**(v141 - 8))(v44 + 600, (v45 + 600), v141);
    goto LABEL_82;
  }

  v142 = *v140;
  v143 = *(v45 + 632);
  *(v44 + 616) = *(v45 + 616);
  *(v44 + 632) = v143;
  *v139 = v142;
LABEL_83:
  v146 = *(v45 + 81);
  *(v44 + 656) = v45[656];
  *(v44 + 648) = v146;
  v147 = (v44 + 664);
  v148 = v45 + 664;
  if (*(v45 + 97) == 1)
  {
    v149 = *(v45 + 680);
    *v147 = *v148;
    *(v44 + 680) = v149;
    v150 = *(v45 + 696);
    v151 = *(v45 + 712);
    v152 = *(v45 + 744);
    *(v44 + 728) = *(v45 + 728);
    *(v44 + 744) = v152;
    *(v44 + 696) = v150;
    *(v44 + 712) = v151;
    v153 = *(v45 + 760);
    v154 = *(v45 + 776);
    v155 = *(v45 + 792);
    *(v44 + 808) = v45[808];
    *(v44 + 776) = v154;
    *(v44 + 792) = v155;
    *(v44 + 760) = v153;
  }

  else
  {
    v156 = *v148;
    *(v44 + 672) = v45[672];
    *v147 = v156;
    v157 = *(v45 + 85);
    *(v44 + 688) = v45[688];
    *(v44 + 680) = v157;
    *(v44 + 689) = v45[689];
    *(v44 + 690) = v45[690];
    *(v44 + 691) = v45[691];
    *(v44 + 692) = v45[692];
    *(v44 + 696) = *(v45 + 87);
    *(v44 + 704) = *(v45 + 88);
    *(v44 + 712) = *(v45 + 89);
    *(v44 + 720) = *(v45 + 90);
    *(v44 + 728) = *(v45 + 91);
    *(v44 + 736) = *(v45 + 92);
    *(v44 + 744) = v45[744];
    *(v44 + 745) = v45[745];
    *(v44 + 752) = *(v45 + 94);
    *(v44 + 760) = *(v45 + 95);
    *(v44 + 768) = v45[768];
    *(v44 + 776) = *(v45 + 97);
    v158 = *(v45 + 49);
    *(v44 + 800) = *(v45 + 100);
    *(v44 + 784) = v158;
    *(v44 + 808) = v45[808];
  }

  *(v44 + 816) = *(v45 + 102);
  *(v44 + 824) = *(v45 + 103);
  *(v44 + 832) = *(v45 + 104);

LABEL_87:
  v159 = (v44 + 840);
  v160 = (v45 + 840);
  v161 = *(v45 + 108);
  if (!v161)
  {
    v165 = *v160;
    v166 = *(v45 + 856);
    *(v44 + 872) = *(v45 + 109);
    *v159 = v165;
    *(v44 + 856) = v166;
    v167 = *(v45 + 110);
    if (!v167)
    {
LABEL_93:
      *(v44 + 880) = *(v45 + 55);
      goto LABEL_94;
    }

LABEL_91:
    v168 = *(v45 + 111);
    *(v44 + 880) = v167;
    *(v44 + 888) = v168;

    goto LABEL_94;
  }

  if (v161 != 1)
  {
    *(v44 + 864) = v161;
    *(v44 + 872) = *(v45 + 109);
    (**(v161 - 8))(v159, v160);
    v167 = *(v45 + 110);
    if (!v167)
    {
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  v162 = *v160;
  v163 = *(v45 + 856);
  v164 = *(v45 + 872);
  *(v44 + 888) = *(v45 + 111);
  *(v44 + 856) = v163;
  *(v44 + 872) = v164;
  *v159 = v162;
LABEL_94:
  v169 = *(v45 + 112);
  *(v44 + 896) = v169;
  *(v44 + 904) = *(v45 + 113);
  *(v44 + 912) = *(v45 + 114);
  *(v44 + 920) = *(v45 + 115);
  *(v44 + 928) = *(v45 + 116);
  *(v44 + 936) = *(v45 + 117);
  *(v44 + 944) = *(v45 + 118);
  *(v44 + 952) = v45[952];
  *(v44 + 953) = v45[953];
  *(v44 + 954) = v45[954];
  v170 = v471[28];
  __dst = (v44 + v170);
  v171 = &v45[v170];
  v172 = type metadata accessor for CommandOperation();
  v445 = *(v172 - 8);
  v449 = *(v445 + 48);
  v173 = v169;
  v174 = v171;

  if (v449(v171, 1, v172))
  {
    type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v171, *(*(v175 - 8) + 64));
    v5 = v469;
    v176 = v471;
    v177 = v458;
    v4 = v462;
  }

  else
  {
    *__dst = *v171;
    v178 = *(v172 + 20);
    v179 = &__dst[v178];
    v180 = v172;
    v181 = &v174[v178];
    v450 = v174;
    v182 = *&v174[v178];
    v183 = *(v181 + 1);
    v184 = v181[16];
    outlined copy of Text.Storage(v182, v183, v184);
    *v179 = v182;
    *(v179 + 1) = v183;
    v179[16] = v184;
    *(v179 + 3) = *(v181 + 3);
    v185 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v186 = type metadata accessor for UUID();
    v441 = *(*(v186 - 8) + 16);

    v441(&v179[v185], &v181[v185], v186);
    v187 = *(v180 + 24);
    v188 = &__dst[v187];
    v189 = &v450[v187];
    if (*v189)
    {
      v190 = *(v189 + 1);
      *v188 = *v189;
      *(v188 + 1) = v190;
    }

    else
    {
      *v188 = *v189;
    }

    v5 = v469;
    v176 = v471;
    v177 = v458;
    v4 = v462;
    (*(v445 + 56))(__dst, 0, 1, v180);
  }

  *(v44 + v176[29]) = v45[v176[29]];
  *(v44 + v176[30]) = v45[v176[30]];
  *(v44 + v176[31]) = v45[v176[31]];
  *(v44 + v176[32]) = v45[v176[32]];
  *(v44 + v176[33]) = v45[v176[33]];
  *(v44 + v176[34]) = *&v45[v176[34]];
  v197 = *(v177 + 56);

  v197(v44, 0, 1, v176);
  a3 = v467;
LABEL_266:
  *(v5 + *(a3 + 28)) = *(v4 + *(a3 + 28));
  return v5;
}

_OWORD *initializeWithTake for NavigationItemDescription(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  *(a1 + 57) = *(a2 + 57);
  v7 = *(a3 + 24);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v8[8] = *(a2 + v7 + 8);
  *v8 = *(a2 + v7);
  v8[24] = *(a2 + v7 + 24);
  *(v8 + 2) = *(a2 + v7 + 16);
  swift_unknownObjectWeakTakeInit();
  v10 = *(v9 + 6);
  *(v8 + 5) = *(v9 + 5);
  *(v8 + 6) = v10;
  v11 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
  v12 = &v8[v11];
  v13 = &v9[v11];
  v14 = type metadata accessor for PlatformItemList.Item();
  v15 = *(v14 - 1);
  if ((*(v15 + 48))(v13, 1, v14))
  {
    type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v12, v13, *(*(v16 - 8) + 64));
  }

  else
  {
    v17 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v17;
    v12[32] = v13[32];
    *(v12 + 40) = *(v13 + 40);
    v12[56] = v13[56];
    v18 = *(v13 + 13);
    *(v12 + 12) = *(v13 + 12);
    *(v12 + 13) = v18;
    *(v12 + 14) = *(v13 + 14);
    *(v12 + 235) = *(v13 + 235);
    v19 = *(v13 + 9);
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 9) = v19;
    v20 = *(v13 + 11);
    *(v12 + 10) = *(v13 + 10);
    *(v12 + 11) = v20;
    v21 = *(v13 + 5);
    *(v12 + 4) = *(v13 + 4);
    *(v12 + 5) = v21;
    v22 = *(v13 + 7);
    *(v12 + 6) = *(v13 + 6);
    *(v12 + 7) = v22;
    v23 = *(v13 + 17);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 17) = v23;
    v24 = *(v13 + 23);
    *(v12 + 22) = *(v13 + 22);
    *(v12 + 23) = v24;
    *(v12 + 24) = *(v13 + 24);
    *(v12 + 50) = *(v13 + 50);
    v25 = *(v13 + 19);
    *(v12 + 18) = *(v13 + 18);
    *(v12 + 19) = v25;
    v26 = *(v13 + 21);
    *(v12 + 20) = *(v13 + 20);
    *(v12 + 21) = v26;
    v27 = *(v13 + 456);
    *(v12 + 440) = *(v13 + 440);
    *(v12 + 456) = v27;
    v12[472] = v13[472];
    v28 = *(v13 + 424);
    *(v12 + 408) = *(v13 + 408);
    *(v12 + 424) = v28;
    *(v12 + 30) = *(v13 + 30);
    *(v12 + 489) = *(v13 + 489);
    *(v12 + 32) = *(v13 + 32);
    v12[528] = v13[528];
    memcpy(v12 + 536, v13 + 536, 0x130uLL);
    v29 = *(v13 + 856);
    *(v12 + 840) = *(v13 + 840);
    *(v12 + 856) = v29;
    *(v12 + 872) = *(v13 + 872);
    *(v12 + 111) = *(v13 + 111);
    *(v12 + 112) = *(v13 + 112);
    *(v12 + 904) = *(v13 + 904);
    *(v12 + 920) = *(v13 + 920);
    *(v12 + 117) = *(v13 + 117);
    *(v12 + 118) = *(v13 + 118);
    v12[952] = v13[952];
    *(v12 + 953) = *(v13 + 953);
    v30 = v14[28];
    v31 = &v12[v30];
    v32 = &v13[v30];
    v33 = type metadata accessor for CommandOperation();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33))
    {
      type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
      memcpy(v31, v32, *(*(v35 - 8) + 64));
    }

    else
    {
      v44 = v31;
      v45 = v15;
      *v31 = *v32;
      v36 = *(v33 + 20);
      v37 = &v31[v36];
      v38 = &v32[v36];
      v39 = *&v32[v36 + 16];
      *v37 = *&v32[v36];
      *(v37 + 1) = v39;
      v43 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v40 = type metadata accessor for UUID();
      v41 = &v38[v43];
      v15 = v45;
      (*(*(v40 - 8) + 32))(&v37[v43], v41, v40);
      *&v44[*(v33 + 24)] = *&v32[*(v33 + 24)];
      (*(v34 + 56))();
    }

    v12[v14[29]] = v13[v14[29]];
    v12[v14[30]] = v13[v14[30]];
    v12[v14[31]] = v13[v14[31]];
    v12[v14[32]] = v13[v14[32]];
    v12[v14[33]] = v13[v14[33]];
    *&v12[v14[34]] = *&v13[v14[34]];
    (*(v15 + 56))(v12, 0, 1, v14);
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithTake for NavigationItemDescription(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v5;

  if (*(a1 + 40))
  {
    if (v3[5])
    {
      v6 = *(v3 + 32);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      *(a1 + 16) = *(v3 + 1);
      *(a1 + 32) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 40) = v3[5];

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 16);
  }

  v10 = *(v3 + 2);
  *(a1 + 16) = *(v3 + 1);
  *(a1 + 32) = v10;
LABEL_6:
  v11 = (a1 + 48);
  v12 = v3[6];
  if (*(a1 + 48) == 1)
  {
LABEL_9:
    *v11 = v12;
    goto LABEL_11;
  }

  if (v12 == 1)
  {
    outlined destroy of Transaction(a1 + 48);
    v12 = v3[6];
    goto LABEL_9;
  }

  *v11 = v12;

LABEL_11:
  *(a1 + 56) = *(v3 + 56);
  *(a1 + 64) = v3[8];

  *(a1 + 72) = *(v3 + 72);
  v13 = *(a3 + 24);
  v14 = a1 + v13;
  v15 = v3 + v13;
  v16 = *(a1 + v13 + 8);
  if (v16 != 255)
  {
    v17 = v15[8];
    if (v17 != 255)
    {
      v18 = *v14;
      *v14 = *v15;
      *(v14 + 8) = v17 & 1;
      outlined consume of ResolvableCLKTextProvider.FontStorage(v18, v16 & 1);
      goto LABEL_16;
    }

    outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v14);
  }

  *v14 = *v15;
  *(v14 + 8) = v15[8];
LABEL_16:
  v19 = *(v14 + 24);
  if (v19 != 254)
  {
    v20 = v15[24];
    if (v20 == 254)
    {
      outlined destroy of ToolbarStorage.NavigationProperties.Actions(v14 + 16);
    }

    else if (v19 != 255)
    {
      if (v20 != 255)
      {
        v21 = *(v14 + 16);
        *(v14 + 16) = *(v15 + 2);
        *(v14 + 24) = v20 & 1;
        outlined consume of PlatformItemCollection.Storage(v21, v19 & 1);
        goto LABEL_24;
      }

      outlined destroy of PlatformItemCollection(v14 + 16);
    }
  }

  *(v14 + 16) = *(v15 + 2);
  *(v14 + 24) = v15[24];
LABEL_24:
  swift_unknownObjectWeakTakeAssign();
  v22 = *(v14 + 48);
  *(v14 + 40) = *(v15 + 40);

  v23 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
  v24 = v14 + v23;
  v25 = &v15[v23];
  v26 = type metadata accessor for PlatformItemList.Item();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v28(v24, 1, v26);
  v30 = v28(v25, 1, v26);
  if (!v29)
  {
    if (v30)
    {
      _s7SwiftUI16CommandOperationVWOhTm_1(v24, type metadata accessor for PlatformItemList.Item);
      goto LABEL_30;
    }

    v51 = *v24;
    *v24 = *v25;

    v52 = *(v24 + 8);
    *(v24 + 8) = *(v25 + 1);

    v53 = *(v25 + 3);
    *(v24 + 16) = *(v25 + 2);
    *(v24 + 24) = v53;

    *(v24 + 32) = v25[32];
    v54 = *(v25 + 6);
    *(v24 + 40) = *(v25 + 5);
    *(v24 + 48) = v54;

    *(v24 + 56) = v25[56];
    if (*(v24 + 192) >> 1 == 4294967294)
    {
LABEL_34:
      v55 = *(v25 + 13);
      *(v24 + 192) = *(v25 + 12);
      *(v24 + 208) = v55;
      *(v24 + 224) = *(v25 + 14);
      *(v24 + 235) = *(v25 + 235);
      v56 = *(v25 + 9);
      *(v24 + 128) = *(v25 + 8);
      *(v24 + 144) = v56;
      v57 = *(v25 + 11);
      *(v24 + 160) = *(v25 + 10);
      *(v24 + 176) = v57;
      v58 = *(v25 + 5);
      *(v24 + 64) = *(v25 + 4);
      *(v24 + 80) = v58;
      v59 = *(v25 + 7);
      *(v24 + 96) = *(v25 + 6);
      *(v24 + 112) = v59;
      if (!*(v24 + 264))
      {
        goto LABEL_53;
      }

LABEL_49:
      v77 = *(v25 + 33);
      if (v77)
      {
        *(v24 + 256) = *(v25 + 32);
        *(v24 + 264) = v77;

        v78 = *(v24 + 272);
        v79 = *(v25 + 34);
        if (v78 >= 2)
        {
          if (v79 >= 2)
          {
            *(v24 + 272) = v79;
          }

          else
          {

            *(v24 + 272) = *(v25 + 34);
          }
        }

        else
        {
          *(v24 + 272) = v79;
        }

        *(v24 + 280) = *(v25 + 70);
        *(v24 + 284) = *(v25 + 142);
        *(v24 + 286) = v25[286];
        *(v24 + 288) = *(v25 + 36);

        *(v24 + 296) = *(v25 + 37);

LABEL_58:
        v81 = *(v24 + 336);
        if (v81 >> 2 != 0xFFFFFFFF)
        {
          v82 = *(v25 + 42);
          if (v82 >> 2 != 0xFFFFFFFF)
          {
            v86 = *(v24 + 304);
            v87 = *(v24 + 312);
            v88 = *(v24 + 320);
            v89 = *(v24 + 328);
            v90 = *(v24 + 344);
            v91 = *(v24 + 352);
            v92 = *(v24 + 360);
            v93 = *(v24 + 368);
            v94 = *(v24 + 384);
            v95 = *(v24 + 400);
            v96 = *(v25 + 20);
            *(v24 + 304) = *(v25 + 19);
            *(v24 + 320) = v96;
            *(v24 + 336) = v82;
            *(v24 + 344) = *(v25 + 344);
            *(v24 + 360) = *(v25 + 360);
            *(v24 + 376) = *(v25 + 376);
            *(v24 + 392) = *(v25 + 392);
            outlined consume of PlatformItemList.Item.SystemItem(v86, v87, v88, v89, v81, v90, v91, v92, v93, *(&v93 + 1), v94, SBYTE8(v94), v95);
LABEL_63:
            v97 = v25 + 408;
            v98 = *(v24 + 416);
            if (v98 == 1)
            {
LABEL_66:
              v100 = *(v25 + 456);
              *(v24 + 440) = *(v25 + 440);
              *(v24 + 456) = v100;
              *(v24 + 472) = v25[472];
              v101 = *(v25 + 424);
              *(v24 + 408) = *v97;
              *(v24 + 424) = v101;
              goto LABEL_89;
            }

            v99 = *(v25 + 52);
            if (v99 == 1)
            {
              outlined destroy of PlatformItemList.Item.SelectionBehavior(v24 + 408);
              goto LABEL_66;
            }

            *(v24 + 408) = *v97;
            *(v24 + 409) = v25[409];
            *(v24 + 410) = v25[410];
            *(v24 + 411) = v25[411];
            *(v24 + 412) = v25[412];
            if (v98)
            {
              if (v99)
              {
                v102 = *(v25 + 53);
                *(v24 + 416) = v99;
                *(v24 + 424) = v102;

                goto LABEL_74;
              }
            }

            else if (v99)
            {
              v103 = *(v25 + 53);
              *(v24 + 416) = v99;
              *(v24 + 424) = v103;
              goto LABEL_74;
            }

            *(v24 + 416) = *(v25 + 26);
LABEL_74:
            v104 = *(v25 + 54);
            if (*(v24 + 432))
            {
              if (v104)
              {
                v105 = *(v25 + 55);
                *(v24 + 432) = v104;
                *(v24 + 440) = v105;

                goto LABEL_81;
              }
            }

            else if (v104)
            {
              v106 = *(v25 + 55);
              *(v24 + 432) = v104;
              *(v24 + 440) = v106;
              goto LABEL_81;
            }

            *(v24 + 432) = *(v25 + 27);
LABEL_81:
            v107 = *(v25 + 56);
            if (*(v24 + 448))
            {
              if (v107)
              {
                v108 = *(v25 + 57);
                *(v24 + 448) = v107;
                *(v24 + 456) = v108;

LABEL_88:
                *(v24 + 464) = *(v25 + 58);
                *(v24 + 472) = v25[472];
LABEL_89:
                v110 = *(v25 + 61);
                *(v24 + 480) = *(v25 + 60);
                *(v24 + 488) = v110;

                *(v24 + 496) = *(v25 + 62);
                *(v24 + 504) = v25[504];
                v111 = *(v25 + 64);
                if (*(v24 + 512))
                {
                  if (v111)
                  {
                    v112 = *(v25 + 65);
                    *(v24 + 512) = v111;
                    *(v24 + 520) = v112;

                    goto LABEL_96;
                  }
                }

                else if (v111)
                {
                  v113 = *(v25 + 65);
                  *(v24 + 512) = v111;
                  *(v24 + 520) = v113;
                  goto LABEL_96;
                }

                *(v24 + 512) = *(v25 + 32);
LABEL_96:
                *(v24 + 528) = v25[528];
                if (*(v24 + 816))
                {
                  if (*(v25 + 102))
                  {
                    *(v24 + 536) = *(v25 + 67);
                    *(v24 + 544) = *(v25 + 68);

                    *(v24 + 552) = v25[552];
                    *(v24 + 560) = *(v25 + 70);

                    *(v24 + 568) = v25[568];
                    *(v24 + 576) = *(v25 + 36);
                    *(v24 + 592) = v25[592];
                    v114 = (v24 + 600);
                    v115 = v25 + 600;
                    v116 = *(v24 + 624);
                    if (v116 != 1)
                    {
                      v117 = *(v25 + 78);
                      if (v117 != 1)
                      {
                        if (v116)
                        {
                          v119 = v24 + 600;
                          if (v117)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v119);
                          }

                          else
                          {
                            outlined destroy of AnyAccessibilityValue(v119);
                          }
                        }

                        v120 = *(v25 + 616);
                        *v114 = *v115;
                        *(v24 + 616) = v120;
                        *(v24 + 632) = *(v25 + 79);
                        *(v24 + 640) = *(v25 + 80);

LABEL_109:
                        *(v24 + 648) = *(v25 + 81);
                        *(v24 + 656) = v25[656];
                        v121 = (v24 + 664);
                        v122 = v25 + 664;
                        if (*(v24 + 776) != 1)
                        {
                          v123 = *(v25 + 97);
                          if (v123 != 1)
                          {
                            *v121 = *v122;
                            *(v24 + 672) = v25[672];
                            *(v24 + 680) = *(v25 + 85);
                            *(v24 + 688) = v25[688];
                            *(v24 + 689) = *(v25 + 689);
                            *(v24 + 691) = v25[691];
                            *(v24 + 692) = v25[692];
                            *(v24 + 696) = *(v25 + 87);
                            v128 = *(v25 + 45);
                            *(v24 + 704) = *(v25 + 44);
                            *(v24 + 720) = v128;
                            *(v24 + 736) = *(v25 + 92);
                            *(v24 + 744) = v25[744];
                            *(v24 + 745) = v25[745];
                            *(v24 + 752) = *(v25 + 47);
                            *(v24 + 768) = v25[768];
                            *(v24 + 776) = v123;

                            *(v24 + 784) = *(v25 + 49);
                            *(v24 + 800) = *(v25 + 100);
                            *(v24 + 808) = v25[808];
                            goto LABEL_114;
                          }

                          outlined destroy of AccessibilityTextLayoutProperties(v24 + 664);
                        }

                        v124 = *(v25 + 776);
                        *(v24 + 760) = *(v25 + 760);
                        *(v24 + 776) = v124;
                        *(v24 + 792) = *(v25 + 792);
                        *(v24 + 808) = v25[808];
                        v125 = *(v25 + 712);
                        *(v24 + 696) = *(v25 + 696);
                        *(v24 + 712) = v125;
                        v126 = *(v25 + 744);
                        *(v24 + 728) = *(v25 + 728);
                        *(v24 + 744) = v126;
                        v127 = *(v25 + 680);
                        *v121 = *v122;
                        *(v24 + 680) = v127;
LABEL_114:
                        *(v24 + 816) = *(v25 + 102);

                        *(v24 + 824) = *(v25 + 103);

                        *(v24 + 832) = *(v25 + 104);

LABEL_115:
                        v129 = (v24 + 840);
                        v130 = v25 + 840;
                        v131 = *(v24 + 864);
                        if (v131 == 1)
                        {
LABEL_118:
                          v133 = *(v25 + 856);
                          *v129 = *v130;
                          *(v24 + 856) = v133;
                          *(v24 + 872) = *(v25 + 872);
                          *(v24 + 888) = *(v25 + 111);
                          goto LABEL_119;
                        }

                        v132 = *(v25 + 108);
                        if (v132 == 1)
                        {
                          outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v24 + 840);
                          goto LABEL_118;
                        }

                        if (v131)
                        {
                          v146 = v24 + 840;
                          if (v132)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v146);
                          }

                          else
                          {
                            outlined destroy of AnyNavigationLinkPresentedValue(v146);
                          }
                        }

                        v169 = *(v25 + 856);
                        *v129 = *v130;
                        *(v24 + 856) = v169;
                        *(v24 + 872) = *(v25 + 109);
                        v170 = *(v25 + 110);
                        if (*(v24 + 880))
                        {
                          if (v170)
                          {
                            v171 = *(v25 + 111);
                            *(v24 + 880) = v170;
                            *(v24 + 888) = v171;

                            goto LABEL_119;
                          }
                        }

                        else if (v170)
                        {
                          v172 = *(v25 + 111);
                          *(v24 + 880) = v170;
                          *(v24 + 888) = v172;
                          goto LABEL_119;
                        }

                        *(v24 + 880) = *(v25 + 55);
LABEL_119:
                        v134 = *(v24 + 896);
                        *(v24 + 896) = *(v25 + 112);

                        *(v24 + 904) = *(v25 + 113);
                        *(v24 + 912) = *(v25 + 114);

                        *(v24 + 920) = *(v25 + 115);
                        *(v24 + 928) = *(v25 + 116);

                        *(v24 + 936) = *(v25 + 117);

                        *(v24 + 944) = *(v25 + 118);

                        *(v24 + 952) = v25[952];
                        *(v24 + 953) = *(v25 + 953);
                        v178 = v26;
                        v135 = *(v26 + 112);
                        v136 = (v24 + v135);
                        v137 = &v25[v135];
                        v138 = type metadata accessor for CommandOperation();
                        v139 = *(v138 - 8);
                        v140 = *(v139 + 48);
                        v175 = v136;
                        LODWORD(v136) = v140(v136, 1, v138);
                        v141 = v140(v137, 1, v138);
                        if (v136)
                        {
                          if (!v141)
                          {
                            *v175 = *v137;
                            v147 = *(v138 + 20);
                            v148 = &v175[v147];
                            v149 = &v137[v147];
                            v150 = *&v137[v147 + 16];
                            *v148 = *&v137[v147];
                            *(v148 + 1) = v150;
                            v151 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v152 = type metadata accessor for UUID();
                            (*(*(v152 - 8) + 32))(&v148[v151], &v149[v151], v152);
                            *&v175[*(v138 + 24)] = *&v137[*(v138 + 24)];
                            (*(v139 + 56))(v175, 0, 1, v138);
                            goto LABEL_129;
                          }

                          type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          v143 = *(*(v142 - 8) + 64);
                          v144 = v175;
                        }

                        else
                        {
                          if (!v141)
                          {
                            *v175 = *v137;
                            v155 = *(v138 + 20);
                            v156 = &v175[v155];
                            v157 = &v137[v155];
                            LOBYTE(v155) = v137[v155 + 16];
                            v158 = *v156;
                            v159 = *(v156 + 1);
                            v160 = v156[16];
                            *v156 = *v157;
                            v156[16] = v155;
                            outlined consume of Text.Storage(v158, v159, v160);
                            *(v156 + 3) = *(v157 + 3);

                            v161 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v162 = type metadata accessor for UUID();
                            (*(*(v162 - 8) + 40))(&v156[v161], &v157[v161], v162);
                            v163 = *(v138 + 24);
                            v164 = &v175[v163];
                            v165 = &v137[v163];
                            v166 = *&v175[v163];
                            v167 = *&v137[v163];
                            if (v166)
                            {
                              v153 = v178;
                              if (v167)
                              {
                                v168 = *(v165 + 1);
                                *v164 = v167;
                                *(v164 + 1) = v168;

                                goto LABEL_130;
                              }
                            }

                            else
                            {
                              v153 = v178;
                              if (v167)
                              {
                                v173 = *(v165 + 1);
                                *v164 = v167;
                                *(v164 + 1) = v173;
                                goto LABEL_130;
                              }
                            }

                            *v164 = *v165;
                            goto LABEL_130;
                          }

                          _s7SwiftUI16CommandOperationVWOhTm_1(v175, type metadata accessor for CommandOperation);
                          type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          v143 = *(*(v145 - 8) + 64);
                          v144 = v175;
                        }

                        memcpy(v144, v137, v143);
LABEL_129:
                        v153 = v178;
LABEL_130:
                        *(v24 + v153[29]) = v25[v153[29]];
                        *(v24 + v153[30]) = v25[v153[30]];
                        *(v24 + v153[31]) = v25[v153[31]];
                        *(v24 + v153[32]) = v25[v153[32]];
                        *(v24 + v153[33]) = v25[v153[33]];
                        *(v24 + v153[34]) = *&v25[v153[34]];

                        goto LABEL_131;
                      }

                      outlined destroy of AccessibilityValueStorage(v24 + 600);
                    }

                    v118 = *(v25 + 616);
                    *v114 = *v115;
                    *(v24 + 616) = v118;
                    *(v24 + 632) = *(v25 + 632);
                    goto LABEL_109;
                  }

                  outlined destroy of PlatformItemList.Item.Accessibility(v24 + 536);
                }

                memcpy((v24 + 536), v25 + 536, 0x130uLL);
                goto LABEL_115;
              }
            }

            else if (v107)
            {
              v109 = *(v25 + 57);
              *(v24 + 448) = v107;
              *(v24 + 456) = v109;
              goto LABEL_88;
            }

            *(v24 + 448) = *(v25 + 28);
            goto LABEL_88;
          }

          outlined destroy of PlatformItemList.Item.SystemItem(v24 + 304);
        }

        v83 = *(v25 + 24);
        *(v24 + 368) = *(v25 + 23);
        *(v24 + 384) = v83;
        *(v24 + 400) = *(v25 + 50);
        v84 = *(v25 + 20);
        *(v24 + 304) = *(v25 + 19);
        *(v24 + 320) = v84;
        v85 = *(v25 + 22);
        *(v24 + 336) = *(v25 + 21);
        *(v24 + 352) = v85;
        goto LABEL_63;
      }

      outlined destroy of Image.NamedResolved(v24 + 256);
LABEL_53:
      v80 = *(v25 + 17);
      *(v24 + 256) = *(v25 + 16);
      *(v24 + 272) = v80;
      *(v24 + 288) = *(v25 + 18);
      goto LABEL_58;
    }

    if (*(v25 + 24) >> 1 == 4294967294)
    {
      outlined destroy of Image.Resolved(v24 + 64);
      goto LABEL_34;
    }

    v67 = *(v24 + 72);
    if (v67 != 255)
    {
      v68 = v25[72];
      if (v68 != 255)
      {
        v69 = *(v24 + 64);
        *(v24 + 64) = *(v25 + 8);
        *(v24 + 72) = v68;
        outlined consume of GraphicsImage.Contents(v69, v67);
        goto LABEL_43;
      }

      outlined destroy of GraphicsImage.Contents(v24 + 64);
    }

    *(v24 + 64) = *(v25 + 8);
    *(v24 + 72) = v25[72];
LABEL_43:
    *(v24 + 80) = *(v25 + 5);
    *(v24 + 96) = *(v25 + 12);
    *(v24 + 104) = v25[104];
    *(v24 + 108) = *(v25 + 108);
    *(v24 + 121) = *(v25 + 121);
    *(v24 + 136) = *(v25 + 136);
    *(v24 + 152) = *(v25 + 152);
    *(v24 + 168) = v25[168];
    *(v24 + 169) = v25[169];
    v70 = *(v24 + 192);
    *(v24 + 170) = *(v25 + 85);
    if (v70 >> 1 != 0xFFFFFFFF)
    {
      v71 = *(v25 + 24);
      if (v71 >> 1 != 0xFFFFFFFF)
      {
        v73 = *(v25 + 25);
        v74 = *(v24 + 176);
        v75 = *(v24 + 184);
        *(v24 + 176) = *(v25 + 11);
        *(v24 + 192) = v71;
        *(v24 + 200) = v73;
        outlined consume of AccessibilityImageLabel(v74, v75, v70);
LABEL_48:
        *(v24 + 208) = *(v25 + 26);
        swift_unknownObjectRelease();
        *(v24 + 216) = *(v25 + 27);

        *(v24 + 224) = v25[224];
        *(v24 + 225) = v25[225];
        *(v24 + 228) = *(v25 + 57);
        *(v24 + 232) = v25[232];
        v76 = *(v24 + 240);
        *(v24 + 240) = *(v25 + 30);

        *(v24 + 248) = *(v25 + 124);
        *(v24 + 250) = v25[250];
        if (!*(v24 + 264))
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      }

      outlined destroy of AccessibilityImageLabel(v24 + 176);
    }

    v72 = *(v25 + 12);
    *(v24 + 176) = *(v25 + 11);
    *(v24 + 192) = v72;
    goto LABEL_48;
  }

  if (v30)
  {
LABEL_30:
    type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v24, v25, *(*(v50 - 8) + 64));
    goto LABEL_131;
  }

  v31 = *(v25 + 1);
  *v24 = *v25;
  *(v24 + 16) = v31;
  *(v24 + 32) = v25[32];
  *(v24 + 40) = *(v25 + 40);
  *(v24 + 56) = v25[56];
  v32 = *(v25 + 13);
  *(v24 + 192) = *(v25 + 12);
  *(v24 + 208) = v32;
  *(v24 + 224) = *(v25 + 14);
  *(v24 + 235) = *(v25 + 235);
  v33 = *(v25 + 9);
  *(v24 + 128) = *(v25 + 8);
  *(v24 + 144) = v33;
  v34 = *(v25 + 11);
  *(v24 + 160) = *(v25 + 10);
  *(v24 + 176) = v34;
  v35 = *(v25 + 5);
  *(v24 + 64) = *(v25 + 4);
  *(v24 + 80) = v35;
  v36 = *(v25 + 7);
  *(v24 + 96) = *(v25 + 6);
  *(v24 + 112) = v36;
  v37 = *(v25 + 17);
  *(v24 + 256) = *(v25 + 16);
  *(v24 + 272) = v37;
  v38 = *(v25 + 23);
  *(v24 + 352) = *(v25 + 22);
  *(v24 + 368) = v38;
  *(v24 + 384) = *(v25 + 24);
  *(v24 + 400) = *(v25 + 50);
  v39 = *(v25 + 19);
  *(v24 + 288) = *(v25 + 18);
  *(v24 + 304) = v39;
  v40 = *(v25 + 21);
  *(v24 + 320) = *(v25 + 20);
  *(v24 + 336) = v40;
  v41 = *(v25 + 456);
  *(v24 + 440) = *(v25 + 440);
  *(v24 + 456) = v41;
  *(v24 + 472) = v25[472];
  v42 = *(v25 + 424);
  *(v24 + 408) = *(v25 + 408);
  *(v24 + 424) = v42;
  *(v24 + 480) = *(v25 + 30);
  *(v24 + 489) = *(v25 + 489);
  *(v24 + 512) = *(v25 + 32);
  *(v24 + 528) = v25[528];
  memcpy((v24 + 536), v25 + 536, 0x130uLL);
  v43 = *(v25 + 856);
  *(v24 + 840) = *(v25 + 840);
  *(v24 + 856) = v43;
  *(v24 + 872) = *(v25 + 872);
  *(v24 + 888) = *(v25 + 111);
  *(v24 + 896) = *(v25 + 112);
  *(v24 + 904) = *(v25 + 904);
  *(v24 + 920) = *(v25 + 920);
  *(v24 + 936) = *(v25 + 117);
  *(v24 + 944) = *(v25 + 118);
  *(v24 + 952) = v25[952];
  *(v24 + 953) = *(v25 + 953);
  v177 = v26;
  v44 = *(v26 + 112);
  v45 = (v24 + v44);
  v46 = &v25[v44];
  v47 = type metadata accessor for CommandOperation();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v46, 1, v47))
  {
    type metadata accessor for NavigationItemDescription?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v45, v46, *(*(v49 - 8) + 64));
  }

  else
  {
    *v45 = *v46;
    v60 = *(v47 + 20);
    v174 = v45;
    __src = v3;
    v61 = &v45[v60];
    v62 = &v46[v60];
    v63 = *&v46[v60 + 16];
    *v61 = *&v46[v60];
    *(v61 + 1) = v63;
    v64 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v65 = type metadata accessor for UUID();
    v66 = &v62[v64];
    v3 = __src;
    (*(*(v65 - 8) + 32))(&v61[v64], v66, v65);
    *&v174[*(v47 + 24)] = *&v46[*(v47 + 24)];
    (*(v48 + 56))();
  }

  *(v24 + v177[29]) = v25[v177[29]];
  *(v24 + v177[30]) = v25[v177[30]];
  *(v24 + v177[31]) = v25[v177[31]];
  *(v24 + v177[32]) = v25[v177[32]];
  *(v24 + v177[33]) = v25[v177[33]];
  *(v24 + v177[34]) = *&v25[v177[34]];
  (*(v27 + 56))(v24, 0, 1);
LABEL_131:
  *(a1 + *(a3 + 28)) = *(v3 + *(a3 + 28));
  return a1;
}

uint64_t type metadata completion function for NavigationItemDescription()
{
  result = type metadata accessor for ToolbarStorage.NavigationProperties(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void closure #1 in IdentifiedDocumentGroupDocumentCreation.presentDocument(at:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = a1;
      IdentifiedDocumentGroupDocumentCreation.updateCurrentDocument(with:configuration:)(v7, a3);
    }
  }
}

uint64_t IdentifiedDocumentGroupDocumentCreation.updateCurrentDocument(with:configuration:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v7);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v6, v7);
  result = swift_endAccess();
  v5 = *(v2 + OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_newDocumentHandler);
  if (v5)
  {

    v5(a1);
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
  }

  return result;
}

uint64_t closure #1 in IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  type metadata accessor for MainActor();
  v8[18] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[19] = v10;
  v8[20] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:), v10, v9);
}

uint64_t closure #1 in IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:)()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = *(v0[14] + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox);
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v0[7] = v2;
      v0[8] = result;
      outlined copy of AppIntentExecutor?(v1);
      swift_unknownObjectRetain();
      v14 = (v1 + *v1);
      v4 = swift_task_alloc();
      v0[21] = v4;
      *v4 = v0;
      v4[1] = closure #1 in IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:);

      return v14(v0 + 7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = v0[17];

    outlined init with copy of NewDocumentProvider?(v5 + 24, (v0 + 2), &lazy cache variable for type metadata for NewDocumentProvider?, &lazy cache variable for type metadata for NewDocumentProvider, &protocol descriptor for NewDocumentProvider, type metadata accessor for CVarArg);
    v6 = v0[5];
    if (v6)
    {
      v7 = v0[14];
      v8 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      (*(v8 + 8))(*(v7 + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox), *(v7 + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8), v6, v8);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    }

    else
    {
      outlined destroy of NewDocumentProvider?((v0 + 2), &lazy cache variable for type metadata for NewDocumentProvider?, &lazy cache variable for type metadata for NewDocumentProvider, &protocol descriptor for NewDocumentProvider, type metadata accessor for CVarArg);
    }

    v9 = v0[15];
    v10 = v0[14];
    v11 = *(v10 + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(0, ObjectType, v11);
    v9(v10);
    v13 = v0[1];

    return v13();
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = closure #1 in IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:);
  }

  else
  {
    v5 = closure #1 in IdentifiedDocumentGroupDocumentCreation.createNewDocument(with:url:newDocumentProvider:_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = v0[12];

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1);
  swift_unknownObjectRelease();
  v2 = v0[15];
  v3 = v0[14];
  v4 = *(v3 + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8);
  ObjectType = swift_getObjectType();
  (*(v4 + 40))(0, ObjectType, v4);
  v2(v3);
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[12];

  _StringGuts.grow(_:)(45);
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x18D00C9B0](0xD00000000000002BLL, 0x800000018CD51730);
  v0[11] = v1;
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Error);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D009810](v0[9], v0[10]);

  v2(0);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3);
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}