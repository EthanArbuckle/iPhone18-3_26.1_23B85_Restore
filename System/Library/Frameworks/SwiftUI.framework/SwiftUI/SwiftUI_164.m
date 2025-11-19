uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(uint64_t a1)
{
  type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer), lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)> and conformance TupleView<A>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, type metadata accessor for ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, type metadata accessor for ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for HeaderFooterVisitor.DefaultForegroundColorModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v3, v4);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return a1;
}

uint64_t assignWithCopy for HeaderFooterVisitor.DefaultForegroundColorModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v3, v4);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t assignWithTake for HeaderFooterVisitor.DefaultForegroundColorModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t storeEnumTagSinglePayload for HeaderFooterVisitor.DefaultForegroundColorModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for HeaderFooterVisitor.HeaderContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HeaderFooterVisitor.HeaderContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((*(v4 + 64) + 7 + ((v5 + 193) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 71 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16));
  }

  else
  {
    v44 = *(a3 + 16);
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = a2;
    v43 = *(v44 - 8);
    v45 = *(v4 + 64) + 7;
    outlined copy of Environment<Selector?>.Content(*a2, v11);
    *a1 = v10;
    *(a1 + 8) = v11;
    v46 = a1;
    v13 = a1 & 0xFFFFFFFFFFFFFFF8;
    v12 &= 0xFFFFFFFFFFFFFFF8;
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 40);
    v17 = *(v12 + 48);
    v18 = *(v12 + 56);
    v19 = *(v12 + 64);
    v20 = *(v12 + 72);
    v40 = *(v12 + 32);
    v41 = *(v12 + 80);
    v42 = *(v12 + 88);
    outlined copy of Environment<HeaderFooterConfiguration>.Content(v14, v15, v40, v16, v17, v18, v19, v20, v41, v42);
    *(v13 + 16) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = v40;
    *(v13 + 40) = v16;
    *(v13 + 48) = v17;
    *(v13 + 56) = v18;
    *(v13 + 64) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v41;
    *(v13 + 88) = v42;
    v21 = *(v12 + 96);
    LOBYTE(v15) = *(v12 + 104);
    outlined copy of Environment<Selector?>.Content(v21, v15);
    *(v13 + 96) = v21;
    *(v13 + 104) = v15;
    *(v13 + 105) = *(v12 + 105);
    v22 = ((v13 + 113) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v12 + 113) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    *(v24 + 41) = *(v25 + 41);
    v24[1] = v27;
    v24[2] = v28;
    *v24 = v26;
    v29 = (v22 + 79) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v23 + 79) & 0xFFFFFFFFFFFFFFF8;
    *v29 = *v30;
    *(v29 + 8) = *(v30 + 8);
    v31 = (v29 + v5 + 9) & ~v5;
    v32 = (v30 + v5 + 9) & ~v5;
    (*(v43 + 16))(v31, v32, v44);
    v33 = (v45 + v32) & 0xFFFFFFFFFFFFFFF8;
    v34 = *(v33 + 70);
    if (v34 >= 3)
    {
      v34 = *v33 + 3;
    }

    v35 = (v45 + v31) & 0xFFFFFFFFFFFFFFF8;
    if (v34 == 2)
    {
      v36 = *(v33 + 24);
      *(v35 + 24) = v36;
      *(v35 + 32) = *(v33 + 32);
      (**(v36 - 8))(v35, v33);
      *(v35 + 40) = *(v33 + 40);
      *(v35 + 44) = *(v33 + 44);
      *(v35 + 48) = *(v33 + 48);
      *(v35 + 70) = 2;
      v9 = v46;
    }

    else
    {
      v9 = v46;
      if (v34 == 1)
      {
        *v35 = *v33;
        *(v35 + 4) = *(v33 + 4);
        *(v35 + 8) = *(v33 + 8);
        *(v35 + 70) = 1;
      }

      else
      {
        v37 = *(v33 + 24);
        *(v35 + 24) = v37;
        *(v35 + 32) = *(v33 + 32);
        (**(v37 - 8))(v35, v33);
        *(v35 + 40) = *(v33 + 40);
        *(v35 + 48) = *(v33 + 48);
        *(v35 + 52) = *(v33 + 52);
        *(v35 + 56) = *(v33 + 56);
        v38 = *(v33 + 64);
        *(v35 + 68) = *(v33 + 68);
        *(v35 + 64) = v38;
        *(v35 + 70) = 0;
      }
    }
  }

  return v9;
}

uint64_t outlined copy of Environment<HeaderFooterConfiguration>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a10)
  {
  }
}

uint64_t destroy for HeaderFooterVisitor.HeaderContent(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<HeaderFooterConfiguration>.Content(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
  outlined consume of Environment<Selector?>.Content(*(v3 + 96), *(v3 + 104));
  v4 = (((v3 + 113) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = (*(v6 + 56) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 70);
  if (v9 >= 3)
  {
    v9 = *v8 + 3;
  }

  if (v9 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }
}

uint64_t outlined consume of Environment<HeaderFooterConfiguration>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a10)
  {
  }
}

uint64_t initializeWithCopy for HeaderFooterVisitor.HeaderContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  *a1 = v5;
  *(a1 + 8) = v6;
  v45 = a1;
  v7 = a1 & 0xFFFFFFFFFFFFFFF8;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  v12 = *(v8 + 40);
  v13 = *(v8 + 48);
  v14 = *(v8 + 56);
  v15 = *(v8 + 64);
  v16 = *(v8 + 72);
  v42 = *(v8 + 80);
  v43 = *(v8 + 88);
  outlined copy of Environment<HeaderFooterConfiguration>.Content(v9, v10, v11, v12, v13, v14, v15, v16, v42, v43);
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  *(v7 + 40) = v12;
  *(v7 + 48) = v13;
  *(v7 + 56) = v14;
  *(v7 + 64) = v15;
  *(v7 + 72) = v16;
  *(v7 + 80) = v42;
  *(v7 + 88) = v43;
  v17 = *(v8 + 96);
  LOBYTE(v10) = *(v8 + 104);
  outlined copy of Environment<Selector?>.Content(v17, v10);
  *(v7 + 96) = v17;
  *(v7 + 104) = v10;
  *(v7 + 105) = *(v8 + 105);
  v18 = ((v7 + 113) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v8 + 113) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  *(v20 + 41) = *(v21 + 41);
  v20[1] = v23;
  v20[2] = v24;
  *v20 = v22;
  v25 = (v18 + 79) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v19 + 79) & 0xFFFFFFFFFFFFFFF8;
  *v25 = *v26;
  *(v25 + 8) = *(v26 + 8);
  v27 = *(*(a3 + 16) - 8);
  v28 = v27 + 16;
  v29 = *(v27 + 80);
  v30 = (v29 + 9 + v25) & ~v29;
  v31 = (v29 + 9 + v26) & ~v29;
  (*(v27 + 16))(v30, v31);
  v32 = *(v28 + 48) + 7;
  v33 = v32 + v30;
  v34 = (v32 + v31) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v34 + 70);
  if (v35 >= 3)
  {
    v35 = *v34 + 3;
  }

  v36 = v33 & 0xFFFFFFFFFFFFFFF8;
  if (v35 == 2)
  {
    v38 = *(v34 + 24);
    *(v36 + 24) = v38;
    *(v36 + 32) = *(v34 + 32);
    (**(v38 - 8))(v36, v34);
    *(v36 + 40) = *(v34 + 40);
    *(v36 + 44) = *(v34 + 44);
    *(v36 + 48) = *(v34 + 48);
    v37 = 2;
  }

  else if (v35 == 1)
  {
    *v36 = *v34;
    *(v36 + 4) = *(v34 + 4);
    *(v36 + 8) = *(v34 + 8);
    v37 = 1;
  }

  else
  {
    v39 = *(v34 + 24);
    *(v36 + 24) = v39;
    *(v36 + 32) = *(v34 + 32);
    (**(v39 - 8))(v36, v34);
    v37 = 0;
    *(v36 + 40) = *(v34 + 40);
    *(v36 + 48) = *(v34 + 48);
    *(v36 + 52) = *(v34 + 52);
    *(v36 + 56) = *(v34 + 56);
    v40 = *(v34 + 64);
    *(v36 + 68) = *(v34 + 68);
    *(v36 + 64) = v40;
  }

  *(v36 + 70) = v37;

  return v45;
}

uint64_t assignWithCopy for HeaderFooterVisitor.HeaderContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v6;
  outlined consume of Environment<Selector?>.Content(v7, v8);
  v59 = a1;
  a1 &= 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v11 = *(v9 + 24);
  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  v14 = *(v9 + 48);
  v15 = *(v9 + 56);
  v16 = *(v9 + 64);
  v17 = *(v9 + 72);
  v56 = *(v9 + 80);
  v57 = *(v9 + 88);
  outlined copy of Environment<HeaderFooterConfiguration>.Content(v10, v11, v12, v13, v14, v15, v16, v17, v56, v57);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  *(a1 + 80) = v56;
  *(a1 + 88) = v57;
  outlined consume of Environment<HeaderFooterConfiguration>.Content(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  v28 = *(v9 + 96);
  LOBYTE(v11) = *(v9 + 104);
  outlined copy of Environment<Selector?>.Content(v28, v11);
  v29 = *(a1 + 96);
  v30 = *(a1 + 104);
  *(a1 + 96) = v28;
  *(a1 + 104) = v11;
  outlined consume of Environment<Selector?>.Content(v29, v30);
  *(a1 + 105) = *(v9 + 105);
  v31 = ((a1 + 113) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v9 + 113) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  *(v33 + 8) = *(v34 + 8);
  *v33 = v35;
  v36 = *(v34 + 16);
  *(v33 + 24) = *(v34 + 24);
  *(v33 + 16) = v36;
  v37 = *(v34 + 32);
  *(v33 + 40) = *(v34 + 40);
  *(v33 + 32) = v37;
  v38 = *(v34 + 48);
  *(v33 + 56) = *(v34 + 56);
  *(v33 + 48) = v38;
  v39 = (v31 + 79) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v32 + 79) & 0xFFFFFFFFFFFFFFF8;
  *v39 = *v40;
  *(v39 + 8) = *(v40 + 8);
  v41 = *(*(a3 + 16) - 8);
  v42 = v41 + 24;
  v43 = *(v41 + 80);
  v44 = (v43 + 9 + v39) & ~v43;
  v45 = (v43 + 9 + v40) & ~v43;
  (*(v41 + 24))(v44, v45);
  v46 = *(v42 + 40) + 7;
  v47 = (v46 + v44) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v46 + v45) & 0xFFFFFFFFFFFFFFF8;
  if (v47 != v48)
  {
    v49 = *(v47 + 70);
    if (v49 >= 3)
    {
      v49 = *v47 + 3;
    }

    if (v49 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v50 = *(v48 + 70);
    if (v50 >= 3)
    {
      v50 = *v48 + 3;
    }

    if (v50 == 2)
    {
      v52 = *(v48 + 24);
      *(v47 + 24) = v52;
      *(v47 + 32) = *(v48 + 32);
      (**(v52 - 8))(v47, v48);
      *(v47 + 40) = *(v48 + 40);
      *(v47 + 44) = *(v48 + 44);
      *(v47 + 48) = *(v48 + 48);
      v51 = 2;
    }

    else if (v50 == 1)
    {
      *v47 = *v48;
      *(v47 + 4) = *(v48 + 4);
      *(v47 + 8) = *(v48 + 8);
      v51 = 1;
    }

    else
    {
      v53 = *(v48 + 24);
      *(v47 + 24) = v53;
      *(v47 + 32) = *(v48 + 32);
      (**(v53 - 8))(v47, v48);
      v51 = 0;
      *(v47 + 40) = *(v48 + 40);
      *(v47 + 48) = *(v48 + 48);
      *(v47 + 52) = *(v48 + 52);
      *(v47 + 56) = *(v48 + 56);
      v54 = *(v48 + 64);
      *(v47 + 68) = *(v48 + 68);
      *(v47 + 64) = v54;
    }

    *(v47 + 70) = v51;
  }

  return v59;
}

uint64_t initializeWithTake for HeaderFooterVisitor.HeaderContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 64);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v4 + 73) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 73);
  *(v4 + 48) = v6;
  *(v4 + 64) = v5;
  *(v4 + 32) = v7;
  *(v4 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 96);
  *(v4 + 104) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 104);
  *(v4 + 96) = v8;
  *(v4 + 105) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 105);
  v9 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 113) & 0xFFFFFFFFFFFFFFF8);
  v10 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 113) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  *(v11 + 41) = *(v12 + 41);
  v11[1] = v14;
  v11[2] = v15;
  *v11 = v13;
  v16 = (v9 + 79) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v10 + 79) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v18 = *(*(a3 + 16) - 8);
  v19 = v18 + 32;
  v20 = *(v18 + 80);
  v21 = (v20 + 9 + v16) & ~v20;
  v22 = (v20 + 9 + v17) & ~v20;
  (*(v18 + 32))(v21, v22);
  v23 = *(v19 + 32) + 7;
  v24 = v23 + v21;
  v25 = (v23 + v22) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 70);
  if (v26 >= 3)
  {
    v26 = *v25 + 3;
  }

  v27 = v24 & 0xFFFFFFFFFFFFFFF8;
  if (v26 == 2)
  {
    v28 = *v25;
    v29 = *(v25 + 16);
    v30 = *(v25 + 32);
    *(v27 + 48) = *(v25 + 48);
    *(v27 + 16) = v29;
    *(v27 + 32) = v30;
  }

  else
  {
    if (v26 != 1)
    {
      LOBYTE(v26) = 0;
      *v27 = *v25;
      v31 = *(v25 + 16);
      v32 = *(v25 + 32);
      v33 = *(v25 + 48);
      *(v27 + 62) = *(v25 + 62);
      *(v27 + 32) = v32;
      *(v27 + 48) = v33;
      *(v27 + 16) = v31;
      goto LABEL_9;
    }

    v28 = *v25;
  }

  *v27 = v28;
LABEL_9:
  *(v27 + 70) = v26;
  return a1;
}

uint64_t assignWithTake for HeaderFooterVisitor.HeaderContent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v4 = (v4 & 0xFFFFFFFFFFFFFFF8);
  v10 = v4[10];
  v11 = a1 & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + 88);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v15 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 32);
  v16 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 40);
  v17 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 48);
  v18 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 56);
  v19 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 64);
  v20 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 72);
  v21 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 80);
  v22 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 88);
  v23 = *(v4 + 2);
  v24 = *(v4 + 3);
  v25 = *(v4 + 4);
  *(v11 + 16) = *(v4 + 1);
  *(v11 + 32) = v23;
  *(v11 + 48) = v24;
  *(v11 + 64) = v25;
  *(v11 + 80) = v10;
  *(v11 + 88) = v12;
  outlined consume of Environment<HeaderFooterConfiguration>.Content(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  v26 = *(v4 + 104);
  v27 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 96);
  v28 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 104);
  *(v11 + 96) = v4[12];
  *(v11 + 104) = v26;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  *(v11 + 105) = *(v4 + 105);
  v29 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 113) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v4 + 113) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *v31 = v33;
  v34 = *(v32 + 16);
  *(v31 + 24) = *(v32 + 24);
  *(v31 + 16) = v34;
  v35 = *(v32 + 32);
  *(v31 + 40) = *(v32 + 40);
  *(v31 + 32) = v35;
  v36 = *(v32 + 48);
  *(v31 + 56) = *(v32 + 56);
  *(v31 + 48) = v36;
  v37 = (v29 + 79) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v30 + 79) & 0xFFFFFFFFFFFFFFF8;
  *v37 = *v38;
  *(v37 + 8) = *(v38 + 8);
  v39 = *(*(a3 + 16) - 8);
  v40 = v39 + 40;
  v41 = *(v39 + 80);
  v42 = (v41 + 9 + v37) & ~v41;
  v43 = (v41 + 9 + v38) & ~v41;
  (*(v39 + 40))(v42, v43);
  v44 = *(v40 + 24) + 7;
  v45 = (v44 + v42) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v44 + v43) & 0xFFFFFFFFFFFFFFF8;
  if (v45 != v46)
  {
    v47 = *(v45 + 70);
    if (v47 >= 3)
    {
      v47 = *v45 + 3;
    }

    if (v47 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v45);
    }

    v48 = *(v46 + 70);
    if (v48 >= 3)
    {
      v48 = *v46 + 3;
    }

    if (v48 == 2)
    {
      v49 = *v46;
      v50 = *(v46 + 16);
      v51 = *(v46 + 32);
      *(v45 + 48) = *(v46 + 48);
      *(v45 + 16) = v50;
      *(v45 + 32) = v51;
      *v45 = v49;
      LOBYTE(v48) = 2;
    }

    else if (v48 == 1)
    {
      *v45 = *v46;
    }

    else
    {
      LOBYTE(v48) = 0;
      *v45 = *v46;
      v52 = *(v46 + 16);
      v53 = *(v46 + 32);
      v54 = *(v46 + 48);
      *(v45 + 62) = *(v46 + 62);
      *(v45 + 32) = v53;
      *(v45 + 48) = v54;
      *(v45 + 16) = v52;
    }

    *(v45 + 70) = v48;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for HeaderFooterVisitor.HeaderContent(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 < a2 && *(a1 + ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 193) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 71))
  {
    return v7 + *a1 + 1;
  }

  if (v5 > 0xFE)
  {
    return (*(v4 + 48))(((((((a1 & 0xFFFFFFFFFFFFFFF8) + 113) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
  }

  v9 = *(a1 + 8);
  if (v9 > 1)
  {
    return (v9 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for HeaderFooterVisitor.HeaderContent(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 193) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 71;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      *(a1 + v10) = 0;
    }

    if (a2)
    {
      if (v7 > 0xFE)
      {
        v12 = *(v6 + 56);
        v13 = ((((((a1 & 0xFFFFFFFFFFFFFFF8) + 113) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

        v12(v13);
      }

      else if (a2 > 0xFE)
      {
        *(a1 + 8) = 0;
        *a1 = a2 - 255;
      }

      else
      {
        *(a1 + 8) = -a2;
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
      *(a1 + v10) = 1;
    }
  }
}

unint64_t lazy protocol witness table accessor for type HeaderFooterVisitor.DefaultForegroundColorModifier and conformance HeaderFooterVisitor.DefaultForegroundColorModifier()
{
  result = lazy protocol witness table cache variable for type HeaderFooterVisitor.DefaultForegroundColorModifier and conformance HeaderFooterVisitor.DefaultForegroundColorModifier;
  if (!lazy protocol witness table cache variable for type HeaderFooterVisitor.DefaultForegroundColorModifier and conformance HeaderFooterVisitor.DefaultForegroundColorModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeaderFooterVisitor.DefaultForegroundColorModifier and conformance HeaderFooterVisitor.DefaultForegroundColorModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>, lazy protocol witness table accessor for type HeaderFooterVisitor.DefaultForegroundColorModifier and conformance HeaderFooterVisitor.DefaultForegroundColorModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>)
  {
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>);
    }
  }
}

uint64_t partial apply for closure #1 in HeaderFooterVisitor.HeaderContent.body.getter(_BYTE *a1)
{
  v3 = *(type metadata accessor for HeaderFooterVisitor.HeaderContent() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in HeaderFooterVisitor.HeaderContent.body.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Text.Case?> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Text.Case?> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Text.Case?> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Text.Case?>, &lazy cache variable for type metadata for Text.Case?, MEMORY[0x1E6980FE8], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Text.Case?> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t outlined destroy of StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>(uint64_t a1)
{
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>();
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGACyxGAA0cD0AAWlTm_0(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>);
    lazy protocol witness table accessor for type HeaderFooterVisitor.IOSMultiColumnModifier and conformance HeaderFooterVisitor.IOSMultiColumnModifier();
    lazy protocol witness table accessor for type HeaderFooterVisitor.LegacyModifier and conformance HeaderFooterVisitor.LegacyModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGACyxGAA0cD0AAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeaderFooterVisitor.IOSMultiColumnModifier and conformance HeaderFooterVisitor.IOSMultiColumnModifier()
{
  result = lazy protocol witness table cache variable for type HeaderFooterVisitor.IOSMultiColumnModifier and conformance HeaderFooterVisitor.IOSMultiColumnModifier;
  if (!lazy protocol witness table cache variable for type HeaderFooterVisitor.IOSMultiColumnModifier and conformance HeaderFooterVisitor.IOSMultiColumnModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeaderFooterVisitor.IOSMultiColumnModifier and conformance HeaderFooterVisitor.IOSMultiColumnModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeaderFooterVisitor.LegacyModifier and conformance HeaderFooterVisitor.LegacyModifier()
{
  result = lazy protocol witness table cache variable for type HeaderFooterVisitor.LegacyModifier and conformance HeaderFooterVisitor.LegacyModifier;
  if (!lazy protocol witness table cache variable for type HeaderFooterVisitor.LegacyModifier and conformance HeaderFooterVisitor.LegacyModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeaderFooterVisitor.LegacyModifier and conformance HeaderFooterVisitor.LegacyModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<HeaderFooterConfiguration> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<HeaderFooterConfiguration> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<HeaderFooterConfiguration> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<HeaderFooterConfiguration>, &type metadata for HeaderFooterConfiguration, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<HeaderFooterConfiguration> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t destroy for HeaderFooterVisitor.IOSMultiColumnModifier(uint64_t a1)
{
  outlined consume of Environment<HeaderFooterConfiguration>.Content(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  outlined consume of Environment<Selector?>.Content(*(a1 + 80), *(a1 + 88));
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for HeaderFooterVisitor.IOSMultiColumnModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  outlined copy of Environment<HeaderFooterConfiguration>.Content(*a2, v5, v6, v7, v8, v9, v10, v11, v16, v17);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  v12 = *(a2 + 80);
  LOBYTE(v5) = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v12, v5);
  *(a1 + 80) = v12;
  *(a1 + 88) = v5;
  v13 = *(a2 + 96);
  LOBYTE(v5) = *(a2 + 104);
  outlined copy of Environment<Selector?>.Content(v13, v5);
  *(a1 + 96) = v13;
  *(a1 + 104) = v5;
  v14 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v14;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t assignWithCopy for HeaderFooterVisitor.IOSMultiColumnModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v33 = *(a2 + 64);
  v34 = *(a2 + 72);
  outlined copy of Environment<HeaderFooterConfiguration>.Content(*a2, v5, v6, v7, v8, v9, v10, v11, v33, v34);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v33;
  *(a1 + 72) = v34;
  outlined consume of Environment<HeaderFooterConfiguration>.Content(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = *(a2 + 80);
  LOBYTE(v5) = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v22, v5);
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  *(a1 + 80) = v22;
  *(a1 + 88) = v5;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  v25 = *(a2 + 96);
  LOBYTE(v5) = *(a2 + 104);
  outlined copy of Environment<Selector?>.Content(v25, v5);
  v26 = *(a1 + 96);
  v27 = *(a1 + 104);
  *(a1 + 96) = v25;
  *(a1 + 104) = v5;
  outlined consume of Environment<Selector?>.Content(v26, v27);
  v28 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v28;
  v29 = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 128) = v29;
  v30 = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 144) = v30;
  v31 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v31;
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t assignWithTake for HeaderFooterVisitor.IOSMultiColumnModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  v17 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v17;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  outlined consume of Environment<HeaderFooterConfiguration>.Content(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  v18 = *(a2 + 88);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  v21 = *(a2 + 104);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v21;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t getEnumTagSinglePayload for HeaderFooterVisitor.IOSMultiColumnModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 192))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HeaderFooterVisitor.IOSMultiColumnModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>, lazy protocol witness table accessor for type HeaderFooterVisitor.DefaultForegroundColorModifier and conformance HeaderFooterVisitor.DefaultForegroundColorModifier);
    type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>()
{
  if (!lazy cache variable for type metadata for VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>)
  {
    type metadata accessor for StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>();
    lazy protocol witness table accessor for type StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>> and conformance <> StaticIf<A, B, C>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>);
    }
  }
}

void type metadata accessor for StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>();
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(255, &lazy cache variable for type metadata for HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>, type metadata accessor for (_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer), lazy protocol witness table accessor for type TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)> and conformance TupleView<A>);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>)
  {
    type metadata accessor for _ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>();
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>, type metadata accessor for (ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer));
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(255, &lazy cache variable for type metadata for HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>, type metadata accessor for (_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer), lazy protocol witness table accessor for type TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)> and conformance TupleView<A>);
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>, type metadata accessor for (VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer));
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(255, a3, a4);
    a5();
    v7 = type metadata accessor for HStack();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)()
{
  if (!lazy cache variable for type metadata for (_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer))
  {
    type metadata accessor for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, lazy protocol witness table accessor for type HeaderFooterVisitor.IOSMultiColumnModifier and conformance HeaderFooterVisitor.IOSMultiColumnModifier);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer));
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>, type metadata accessor for (_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer));
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)> and conformance TupleView<A>);
  }

  return result;
}

void type metadata accessor for (VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)()
{
  if (!lazy cache variable for type metadata for (VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer))
  {
    type metadata accessor for VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer));
    }
  }
}

void type metadata accessor for VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>, type metadata accessor for (_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>));
    lazy protocol witness table accessor for type TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)> and conformance TupleView<A>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>);
    }
  }
}

void type metadata accessor for (_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)()
{
  if (!lazy cache variable for type metadata for (_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>))
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(255, &lazy cache variable for type metadata for HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>, type metadata accessor for (_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer), lazy protocol witness table accessor for type TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)> and conformance TupleView<A>);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>, type metadata accessor for (_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>));
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)> and conformance TupleView<A>);
  }

  return result;
}

void type metadata accessor for (ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer))
  {
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, MEMORY[0x1E6980858], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    type metadata accessor for ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer));
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(255, &lazy cache variable for type metadata for HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>, type metadata accessor for (_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer), lazy protocol witness table accessor for type TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)> and conformance TupleView<A>);
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(255, &lazy cache variable for type metadata for _TraitWritingModifier<LayoutPriorityTraitKey>, MEMORY[0x1E697FEB0], MEMORY[0x1E697FEA0], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>();
    lazy protocol witness table accessor for type ListUsesBaselineAlignedHeadersPredicate and conformance ListUsesBaselineAlignedHeadersPredicate();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>> and conformance <> _ConditionalContent<A, B>, type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, lazy protocol witness table accessor for type _ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>> and conformance <> _ConditionalContent<A, B>, lazy protocol witness table accessor for type TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)> and conformance TupleView<A>);
    lazy protocol witness table accessor for type HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>> and conformance HStack<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListUsesBaselineAlignedHeadersPredicate and conformance ListUsesBaselineAlignedHeadersPredicate()
{
  result = lazy protocol witness table cache variable for type ListUsesBaselineAlignedHeadersPredicate and conformance ListUsesBaselineAlignedHeadersPredicate;
  if (!lazy protocol witness table cache variable for type ListUsesBaselineAlignedHeadersPredicate and conformance ListUsesBaselineAlignedHeadersPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListUsesBaselineAlignedHeadersPredicate and conformance ListUsesBaselineAlignedHeadersPredicate);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>> and conformance HStack<A>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(255, &lazy cache variable for type metadata for HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>, type metadata accessor for (_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer), lazy protocol witness table accessor for type TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)> and conformance TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>> and conformance HStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>, type metadata accessor for (VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer));
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)> and conformance TupleView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>, type metadata accessor for (ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer));
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewList_ID_Views and conformance _ViewList_ID_Views(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>, _EnvironmentKeyTransformModifier<Font?>> and conformance <> Modifie()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>, _EnvironmentKeyTransformModifier<Font?>> and conformance <> M;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>, _EnvironmentKeyTransformModifier<Font?>> and conformance <> M)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>, _EnvironmentKeyTransformModifier<Font?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>,  type metadata accessor for ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>, _EnvironmentKeyTransformModifier<Font?>> and conformance <> M);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>, _EnvironmentKeyTransformModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>, _EnvironmentKeyTransformModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>, type metadata accessor for ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>);
    type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout>, _EnvironmentKeyTransformModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>)
  {
    type metadata accessor for ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>();
    type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<EdgeInsets>, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>();
    type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for [Sections.Item](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>();
    lazy protocol witness table accessor for type _ViewList_ID_Views and conformance _ViewList_ID_Views(&lazy protocol witness table cache variable for type VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>> and conformance VStack<A>, type metadata accessor for VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<HeaderFooterVisitor.LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HeaderFooterVisitor.LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>)
  {
    type metadata accessor for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HeaderFooterVisitor.LegacyModifier>, lazy protocol witness table accessor for type HeaderFooterVisitor.LegacyModifier and conformance HeaderFooterVisitor.LegacyModifier);
    type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<EdgeInsets>, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HeaderFooterVisitor.LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ViewModifier_Content();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<HeaderFooterVisitor.LegacyModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<HeaderFooterVisitor.LegacyModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<HeaderFooterVisitor.LegacyModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HeaderFooterVisitor.LegacyModifier>, lazy protocol witness table accessor for type HeaderFooterVisitor.LegacyModifier and conformance HeaderFooterVisitor.LegacyModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<HeaderFooterVisitor.LegacyModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t closure #1 in _UIHostingView.convertAnchor<A>(_:)()
{
  _UIHostingView.viewGraph.getter();
  ViewGraph.transform.getter();

  Anchor.convert(to:)();
}

uint64_t protocol witness for HostingViewProtocol.preferenceValue<A>(_:) in conformance _UIHostingView<A1>()
{
  swift_getWitnessTable();

  return ViewRendererHost.preferenceValue<A>(_:)();
}

uint64_t DatePicker<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Binding<Date>(a1, a2, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  v5 = v4[6];
  _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>);
  v7 = v6;
  v8 = MEMORY[0x1E69E6720];
  outlined init with copy of Binding<Date>(a1 + v5, a2 + *(v6 + 36), &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  outlined init with copy of Binding<Date>(a1 + v4[7], a2 + *(v7 + 40), &lazy cache variable for type metadata for Date?, v8);
  *(a2 + *(v7 + 44)) = *(a1 + v4[8]);
  return _s7SwiftUI28DatePickerStyleConfigurationVWOhTm_0(a1, type metadata accessor for DatePickerStyleConfiguration);
}

uint64_t DatePicker.init(selection:minimumDate:maximumDate:displayedComponents:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = MEMORY[0x1E6981948];
  outlined init with copy of Binding<Date>(a1, a6, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v12 = type metadata accessor for DatePicker();
  v13 = MEMORY[0x1E69E6720];
  outlined init with copy of Binding<Date>(a2, a6 + v12[9], &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  v14 = outlined init with copy of Binding<Date>(a3, a6 + v12[10], &lazy cache variable for type metadata for Date?, v13);
  *(a6 + v12[11]) = v10;
  a5(v14);
  _s10Foundation4DateVSgWOhTm_1(a3, &lazy cache variable for type metadata for Date?, v13);
  _s10Foundation4DateVSgWOhTm_1(a2, &lazy cache variable for type metadata for Date?, v13);
  return _s10Foundation4DateVSgWOhTm_1(a1, &lazy cache variable for type metadata for Binding<Date>, v11);
}

uint64_t DatePicker.body.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResolvedDatePickerStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DatePickerStyleConfiguration(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Binding<Date>(v2, v10, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v11 = MEMORY[0x1E69E6720];
  outlined init with copy of Binding<Date>(v2 + *(a1 + 36), &v10[v8[8]], &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  outlined init with copy of Binding<Date>(v2 + *(a1 + 40), &v10[v8[9]], &lazy cache variable for type metadata for Date?, v11);
  *&v10[v8[10]] = *(v2 + *(a1 + 44));
  outlined init with copy of DatePickerStyleConfiguration(v10, v6);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v17 = v13;
  v18 = v12;
  v19 = v2;
  v14 = lazy protocol witness table accessor for type ResolvedDatePickerStyle and conformance ResolvedDatePickerStyle(&lazy protocol witness table cache variable for type ResolvedDatePickerStyle and conformance ResolvedDatePickerStyle, type metadata accessor for ResolvedDatePickerStyle);
  lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label();
  View.viewAlias<A, B>(_:_:)(&type metadata for DatePickerStyleConfiguration.Label, partial apply for closure #1 in DatePicker.body.getter, v16, v4, &type metadata for DatePickerStyleConfiguration.Label, v13, v14);
  _s7SwiftUI28DatePickerStyleConfigurationVWOhTm_0(v6, type metadata accessor for ResolvedDatePickerStyle);
  return _s7SwiftUI28DatePickerStyleConfigurationVWOhTm_0(v10, type metadata accessor for DatePickerStyleConfiguration);
}

uint64_t closure #1 in DatePicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DatePicker();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 48), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t outlined init with copy of Binding<Date>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _s7SwiftUI28DatePickerStyleConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DatePicker.init(selection:displayedComponents:label:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v23 = a7;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v23 - v17;
  v19 = *a2;
  outlined init with copy of Binding<Date>(a1, &v23 - v17, &lazy cache variable for type metadata for Binding<Date>, v15);
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  v21(v14, 1, 1, v20);
  v21(v11, 1, 1, v20);
  v28 = v19;
  DatePicker.init(selection:minimumDate:maximumDate:displayedComponents:label:)(v18, v14, v11, &v28, v24, v23);
  return _s10Foundation4DateVSgWOhTm_1(a1, &lazy cache variable for type metadata for Binding<Date>, v15);
}

uint64_t _s10Foundation4DateVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DatePicker.init(selection:in:displayedComponents:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a6;
  v36 = a7;
  v33 = a4;
  v34 = a5;
  v31 = a1;
  v32 = a8;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = MEMORY[0x1E6981948];
  v30 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28 - v19;
  v29 = *a3;
  outlined init with copy of Binding<Date>(a1, &v28 - v19, &lazy cache variable for type metadata for Binding<Date>, v17);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v23(v16, a2, v21);
  v24 = *(v22 + 56);
  v24(v16, 0, 1, v21);
  v25 = MEMORY[0x1E69E5F90];
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for ClosedRange<Date>, MEMORY[0x1E69E5F90]);
  v23(v13, a2 + *(v26 + 36), v21);
  v24(v13, 0, 1, v21);
  v37 = v29;
  DatePicker.init(selection:minimumDate:maximumDate:displayedComponents:label:)(v20, v16, v13, &v37, v33, v32);
  _sSNy10Foundation4DateVGWOhTm_4(a2, &lazy cache variable for type metadata for ClosedRange<Date>, v25);
  return _s10Foundation4DateVSgWOhTm_1(v31, &lazy cache variable for type metadata for Binding<Date>, v30);
}

{
  v29 = a6;
  v30 = a7;
  v27 = a4;
  v28 = a5;
  v26 = a8;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v26 - v19;
  v21 = *a3;
  outlined init with copy of Binding<Date>(a1, &v26 - v19, &lazy cache variable for type metadata for Binding<Date>, v17);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v16, a2, v22);
  v24 = *(v23 + 56);
  v24(v16, 0, 1, v22);
  v24(v13, 1, 1, v22);
  v31 = v21;
  DatePicker.init(selection:minimumDate:maximumDate:displayedComponents:label:)(v20, v16, v13, &v31, v27, v26);
  _sSNy10Foundation4DateVGWOhTm_4(a2, &lazy cache variable for type metadata for PartialRangeFrom<Date>, MEMORY[0x1E69E6D08]);
  return _s10Foundation4DateVSgWOhTm_1(a1, &lazy cache variable for type metadata for Binding<Date>, v17);
}

{
  v31 = a6;
  v32 = a7;
  v29 = a4;
  v30 = a5;
  v26 = a1;
  v27 = a2;
  v28 = a8;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  v20 = *a3;
  outlined init with copy of Binding<Date>(a1, &v26 - v18, &lazy cache variable for type metadata for Binding<Date>, v16);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v23(v15, 1, 1, v21);
  v24 = v27;
  (*(v22 + 16))(v12, v27, v21);
  v23(v12, 0, 1, v21);
  v33 = v20;
  DatePicker.init(selection:minimumDate:maximumDate:displayedComponents:label:)(v19, v15, v12, &v33, v29, v28);
  _sSNy10Foundation4DateVGWOhTm_4(v24, &lazy cache variable for type metadata for PartialRangeThrough<Date>, MEMORY[0x1E69E6ED0]);
  return _s10Foundation4DateVSgWOhTm_1(v26, &lazy cache variable for type metadata for Binding<Date>, v16);
}

uint64_t lazy protocol witness table accessor for type ResolvedDatePickerStyle and conformance ResolvedDatePickerStyle(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ClosedRange<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type ResolvedDatePickerStyle and conformance ResolvedDatePickerStyle(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t DatePicker<>.init(_:selection:displayedComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = a5;
  v41 = a5;
  v42 = a1;
  v45 = a4;
  v44 = a3;
  v43 = a2;
  v10 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v40 = *a6;
  outlined init with copy of Binding<Date>(v8, &v37 - v22, &lazy cache variable for type metadata for Binding<Date>, v17);
  v39 = v20;
  outlined init with copy of Binding<Date>(v23, v20, &lazy cache variable for type metadata for Binding<Date>, v17);
  v24 = type metadata accessor for Date();
  v25 = *(*(v24 - 8) + 56);
  v38 = v16;
  v25(v16, 1, 1, v24);
  v25(v13, 1, 1, v24);
  outlined init with copy of Binding<Date>(v20, a7, &lazy cache variable for type metadata for Binding<Date>, v17);
  _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for DatePicker<Text>);
  v27 = v26;
  outlined init with copy of Binding<Date>(v16, a7 + v26[9], &lazy cache variable for type metadata for Date?, v10);
  v28 = v13;
  outlined init with copy of Binding<Date>(v13, a7 + v27[10], &lazy cache variable for type metadata for Date?, v10);
  *(a7 + v27[11]) = v40;
  v29 = a7 + v27[12];
  v30 = Text.init(_:tableName:bundle:comment:)();
  v32 = v31;
  LOBYTE(v8) = v33;
  v35 = v34;
  _s10Foundation4DateVSgWOhTm_1(v41, &lazy cache variable for type metadata for Binding<Date>, v17);
  _s10Foundation4DateVSgWOhTm_1(v28, &lazy cache variable for type metadata for Date?, v10);
  _s10Foundation4DateVSgWOhTm_1(v38, &lazy cache variable for type metadata for Date?, v10);
  _s10Foundation4DateVSgWOhTm_1(v39, &lazy cache variable for type metadata for Binding<Date>, v17);
  result = _s10Foundation4DateVSgWOhTm_1(v23, &lazy cache variable for type metadata for Binding<Date>, v17);
  *v29 = v30;
  *(v29 + 8) = v32;
  *(v29 + 16) = v8 & 1;
  *(v29 + 24) = v35;
  return result;
}

void _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for DatePicker();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t DatePicker<>.init(_:selection:in:displayedComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a7;
  v50 = a6;
  v51 = a5;
  v58 = a4;
  v57 = a3;
  v55 = a1;
  v56 = a2;
  v53 = a8;
  v54 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v46 - v14;
  v15 = MEMORY[0x1E69E5F90];
  v49 = MEMORY[0x1E69E5F90];
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for ClosedRange<Date>, MEMORY[0x1E69E5F90]);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - v18;
  v47 = &v46 - v18;
  v20 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v48 = *v48;
  v25 = a5;
  v27 = &v46 - v26;
  v52 = &v46 - v26;
  outlined init with copy of Binding<Date>(v25, &v46 - v26, &lazy cache variable for type metadata for Binding<Date>, v20);
  outlined init with copy of PartialRangeThrough<Date>(a6, v19, &lazy cache variable for type metadata for ClosedRange<Date>, v15);
  outlined init with copy of Binding<Date>(v27, v23, &lazy cache variable for type metadata for Binding<Date>, v20);
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v31 = v59;
  v30(v59, v19, v28);
  v32 = *(v29 + 56);
  v32(v31, 0, 1, v28);
  v30(v12, &v19[*(v17 + 44)], v28);
  v32(v12, 0, 1, v28);
  v33 = v53;
  outlined init with copy of Binding<Date>(v60, v53, &lazy cache variable for type metadata for Binding<Date>, v20);
  _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for DatePicker<Text>);
  v35 = v34;
  v36 = v54;
  outlined init with copy of Binding<Date>(v31, v33 + v34[9], &lazy cache variable for type metadata for Date?, v54);
  outlined init with copy of Binding<Date>(v12, v33 + v35[10], &lazy cache variable for type metadata for Date?, v36);
  *(v33 + v35[11]) = v48;
  v37 = v33 + v35[12];
  v38 = Text.init(_:tableName:bundle:comment:)();
  v40 = v39;
  LOBYTE(v31) = v41;
  v43 = v42;
  v44 = v49;
  _sSNy10Foundation4DateVGWOhTm_4(v50, &lazy cache variable for type metadata for ClosedRange<Date>, v49);
  _s10Foundation4DateVSgWOhTm_1(v51, &lazy cache variable for type metadata for Binding<Date>, v20);
  _s10Foundation4DateVSgWOhTm_1(v12, &lazy cache variable for type metadata for Date?, v36);
  _s10Foundation4DateVSgWOhTm_1(v59, &lazy cache variable for type metadata for Date?, v36);
  _s10Foundation4DateVSgWOhTm_1(v60, &lazy cache variable for type metadata for Binding<Date>, v20);
  _sSNy10Foundation4DateVGWOhTm_4(v47, &lazy cache variable for type metadata for ClosedRange<Date>, v44);
  result = _s10Foundation4DateVSgWOhTm_1(v52, &lazy cache variable for type metadata for Binding<Date>, v20);
  *v37 = v38;
  *(v37 + 8) = v40;
  *(v37 + 16) = v31 & 1;
  *(v37 + 24) = v43;
  return result;
}

{
  v48 = a7;
  v50 = a6;
  v53 = a5;
  v59 = a4;
  v58 = a3;
  v56 = a1;
  v57 = a2;
  v55 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = MEMORY[0x1E69E6D08];
  v49 = MEMORY[0x1E69E6D08];
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for PartialRangeFrom<Date>, MEMORY[0x1E69E6D08]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v47 - v18;
  v20 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v48 = *v48;
  v25 = a5;
  v27 = &v47 - v26;
  v54 = &v47 - v26;
  outlined init with copy of Binding<Date>(v25, &v47 - v26, &lazy cache variable for type metadata for Binding<Date>, v20);
  v51 = v19;
  outlined init with copy of PartialRangeThrough<Date>(a6, v19, &lazy cache variable for type metadata for PartialRangeFrom<Date>, v16);
  outlined init with copy of Binding<Date>(v27, v23, &lazy cache variable for type metadata for Binding<Date>, v20);
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v15, v19, v28);
  v30 = *(v29 + 56);
  v47 = v15;
  v30(v15, 0, 1, v28);
  v31 = v52;
  v30(v52, 1, 1, v28);
  outlined init with copy of Binding<Date>(v23, a8, &lazy cache variable for type metadata for Binding<Date>, v20);
  _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for DatePicker<Text>);
  v33 = v32;
  v34 = v55;
  outlined init with copy of Binding<Date>(v15, a8 + v32[9], &lazy cache variable for type metadata for Date?, v55);
  v35 = v31;
  v36 = v31;
  v37 = v34;
  outlined init with copy of Binding<Date>(v35, a8 + v33[10], &lazy cache variable for type metadata for Date?, v34);
  *(a8 + v33[11]) = v48;
  v38 = a8 + v33[12];
  v39 = Text.init(_:tableName:bundle:comment:)();
  v41 = v40;
  v43 = v42;
  v59 = v44;
  v45 = v49;
  _sSNy10Foundation4DateVGWOhTm_4(v50, &lazy cache variable for type metadata for PartialRangeFrom<Date>, v49);
  _s10Foundation4DateVSgWOhTm_1(v53, &lazy cache variable for type metadata for Binding<Date>, v20);
  _s10Foundation4DateVSgWOhTm_1(v36, &lazy cache variable for type metadata for Date?, v37);
  _s10Foundation4DateVSgWOhTm_1(v47, &lazy cache variable for type metadata for Date?, v37);
  _s10Foundation4DateVSgWOhTm_1(v23, &lazy cache variable for type metadata for Binding<Date>, v20);
  _sSNy10Foundation4DateVGWOhTm_4(v51, &lazy cache variable for type metadata for PartialRangeFrom<Date>, v45);
  result = _s10Foundation4DateVSgWOhTm_1(v54, &lazy cache variable for type metadata for Binding<Date>, v20);
  *v38 = v39;
  *(v38 + 8) = v41;
  *(v38 + 16) = v43 & 1;
  *(v38 + 24) = v59;
  return result;
}

uint64_t outlined init with copy of PartialRangeThrough<Date>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ClosedRange<Date>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t DatePicker<>.init(_:selection:in:displayedComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a6;
  v52 = a5;
  v59 = a4;
  v58 = a3;
  v56 = a1;
  v57 = a2;
  v53 = a8;
  v55 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v46 - v14;
  v15 = MEMORY[0x1E69E6ED0];
  v49 = MEMORY[0x1E69E6ED0];
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for PartialRangeThrough<Date>, MEMORY[0x1E69E6ED0]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v46 - v17;
  v19 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v47 = *a7;
  v24 = a5;
  v26 = &v46 - v25;
  v54 = &v46 - v25;
  outlined init with copy of Binding<Date>(v24, &v46 - v25, &lazy cache variable for type metadata for Binding<Date>, v19);
  v27 = a6;
  v28 = v18;
  v48 = v18;
  outlined init with copy of PartialRangeThrough<Date>(v27, v18, &lazy cache variable for type metadata for PartialRangeThrough<Date>, v15);
  outlined init with copy of Binding<Date>(v26, v22, &lazy cache variable for type metadata for Binding<Date>, v19);
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = v60;
  v31(v60, 1, 1, v29);
  v33 = v50;
  (*(v30 + 16))(v50, v28, v29);
  v31(v33, 0, 1, v29);
  v34 = v53;
  outlined init with copy of Binding<Date>(v22, v53, &lazy cache variable for type metadata for Binding<Date>, v19);
  _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for DatePicker<Text>);
  v36 = v35;
  v37 = v55;
  outlined init with copy of Binding<Date>(v32, v34 + v35[9], &lazy cache variable for type metadata for Date?, v55);
  outlined init with copy of Binding<Date>(v33, v34 + v36[10], &lazy cache variable for type metadata for Date?, v37);
  *(v34 + v36[11]) = v47;
  v38 = v34 + v36[12];
  v39 = Text.init(_:tableName:bundle:comment:)();
  v41 = v40;
  LOBYTE(v32) = v42;
  v59 = v43;
  v44 = v49;
  _sSNy10Foundation4DateVGWOhTm_4(v51, &lazy cache variable for type metadata for PartialRangeThrough<Date>, v49);
  _s10Foundation4DateVSgWOhTm_1(v52, &lazy cache variable for type metadata for Binding<Date>, v19);
  _s10Foundation4DateVSgWOhTm_1(v33, &lazy cache variable for type metadata for Date?, v37);
  _s10Foundation4DateVSgWOhTm_1(v60, &lazy cache variable for type metadata for Date?, v37);
  _s10Foundation4DateVSgWOhTm_1(v22, &lazy cache variable for type metadata for Binding<Date>, v19);
  _sSNy10Foundation4DateVGWOhTm_4(v48, &lazy cache variable for type metadata for PartialRangeThrough<Date>, v44);
  result = _s10Foundation4DateVSgWOhTm_1(v54, &lazy cache variable for type metadata for Binding<Date>, v19);
  *v38 = v39;
  *(v38 + 8) = v41;
  *(v38 + 16) = v32 & 1;
  *(v38 + 24) = v59;
  return result;
}

uint64_t DatePicker<>.init<A>(_:selection:displayedComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a1;
  v9 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  v32 = *a3;
  outlined init with copy of Binding<Date>(a2, &v31 - v21, &lazy cache variable for type metadata for Binding<Date>, v16);
  outlined init with copy of Binding<Date>(v22, v19, &lazy cache variable for type metadata for Binding<Date>, v16);
  v23 = type metadata accessor for Date();
  v24 = *(*(v23 - 8) + 56);
  v24(v15, 1, 1, v23);
  v24(v12, 1, 1, v23);
  outlined init with copy of Binding<Date>(v19, a6, &lazy cache variable for type metadata for Binding<Date>, v16);
  _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for DatePicker<Text>);
  v26 = v25;
  outlined init with copy of Binding<Date>(v15, a6 + v25[9], &lazy cache variable for type metadata for Date?, v9);
  outlined init with copy of Binding<Date>(v12, a6 + v26[10], &lazy cache variable for type metadata for Date?, v9);
  *(a6 + v26[11]) = v32;
  v27 = a6 + v26[12];
  v28 = v34;
  v29 = v35;
  closure #1 in DatePicker<>.init<A>(_:selection:displayedComponents:)(v34, v27);
  _s10Foundation4DateVSgWOhTm_1(v33, &lazy cache variable for type metadata for Binding<Date>, v16);
  _s10Foundation4DateVSgWOhTm_1(v12, &lazy cache variable for type metadata for Date?, v9);
  _s10Foundation4DateVSgWOhTm_1(v15, &lazy cache variable for type metadata for Date?, v9);
  _s10Foundation4DateVSgWOhTm_1(v19, &lazy cache variable for type metadata for Binding<Date>, v16);
  _s10Foundation4DateVSgWOhTm_1(v22, &lazy cache variable for type metadata for Binding<Date>, v16);
  return (*(*(v29 - 8) + 8))(v28, v29);
}

uint64_t DatePicker<>.init<A>(_:selection:in:displayedComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a5;
  v52 = a6;
  v44 = a4;
  v45 = a3;
  v46 = a2;
  v48 = a7;
  v49 = MEMORY[0x1E69E6720];
  v50 = a1;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = MEMORY[0x1E69E5F90];
  v42 = &v40 - v14;
  v43 = MEMORY[0x1E69E5F90];
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for ClosedRange<Date>, MEMORY[0x1E69E5F90]);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v19 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v44 = *v44;
  v24 = a2;
  v26 = &v40 - v25;
  v47 = &v40 - v25;
  outlined init with copy of Binding<Date>(v24, &v40 - v25, &lazy cache variable for type metadata for Binding<Date>, v19);
  v41 = v18;
  outlined init with copy of PartialRangeThrough<Date>(a3, v18, &lazy cache variable for type metadata for ClosedRange<Date>, v13);
  outlined init with copy of Binding<Date>(v26, v22, &lazy cache variable for type metadata for Binding<Date>, v19);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v30 = v42;
  v29(v42, v18, v27);
  v31 = *(v28 + 56);
  v31(v30, 0, 1, v27);
  v29(v11, &v18[*(v16 + 44)], v27);
  v31(v11, 0, 1, v27);
  v32 = v48;
  outlined init with copy of Binding<Date>(v53, v48, &lazy cache variable for type metadata for Binding<Date>, v19);
  _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for DatePicker<Text>);
  v34 = v33;
  v35 = v49;
  outlined init with copy of Binding<Date>(v30, v32 + v33[9], &lazy cache variable for type metadata for Date?, v49);
  outlined init with copy of Binding<Date>(v11, v32 + v34[10], &lazy cache variable for type metadata for Date?, v35);
  *(v32 + v34[11]) = v44;
  v36 = v50;
  v37 = v51;
  closure #1 in DatePicker<>.init<A>(_:selection:displayedComponents:)(v50, v32 + v34[12]);
  v38 = v43;
  _sSNy10Foundation4DateVGWOhTm_4(v45, &lazy cache variable for type metadata for ClosedRange<Date>, v43);
  _s10Foundation4DateVSgWOhTm_1(v46, &lazy cache variable for type metadata for Binding<Date>, v19);
  _s10Foundation4DateVSgWOhTm_1(v11, &lazy cache variable for type metadata for Date?, v35);
  _s10Foundation4DateVSgWOhTm_1(v30, &lazy cache variable for type metadata for Date?, v35);
  _s10Foundation4DateVSgWOhTm_1(v53, &lazy cache variable for type metadata for Binding<Date>, v19);
  _sSNy10Foundation4DateVGWOhTm_4(v41, &lazy cache variable for type metadata for ClosedRange<Date>, v38);
  _s10Foundation4DateVSgWOhTm_1(v47, &lazy cache variable for type metadata for Binding<Date>, v19);
  return (*(*(v37 - 8) + 8))(v36, v37);
}

{
  v46 = a5;
  v47 = a6;
  v39 = a4;
  v40 = a3;
  v42 = a2;
  v44 = MEMORY[0x1E69E6720];
  v45 = a1;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = MEMORY[0x1E69E6D08];
  v38 = MEMORY[0x1E69E6D08];
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for PartialRangeFrom<Date>, MEMORY[0x1E69E6D08]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  v19 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  v39 = *v39;
  outlined init with copy of Binding<Date>(a2, &v38 - v24, &lazy cache variable for type metadata for Binding<Date>, v19);
  v41 = v18;
  outlined init with copy of PartialRangeThrough<Date>(a3, v18, &lazy cache variable for type metadata for PartialRangeFrom<Date>, v15);
  outlined init with copy of Binding<Date>(v25, v22, &lazy cache variable for type metadata for Binding<Date>, v19);
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v14, v18, v26);
  v28 = *(v27 + 56);
  v28(v14, 0, 1, v26);
  v29 = v43;
  v28(v43, 1, 1, v26);
  outlined init with copy of Binding<Date>(v22, a7, &lazy cache variable for type metadata for Binding<Date>, v19);
  _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for DatePicker<Text>);
  v31 = v30;
  v32 = v44;
  outlined init with copy of Binding<Date>(v14, a7 + v30[9], &lazy cache variable for type metadata for Date?, v44);
  outlined init with copy of Binding<Date>(v29, a7 + v31[10], &lazy cache variable for type metadata for Date?, v32);
  *(a7 + v31[11]) = v39;
  v33 = a7 + v31[12];
  v34 = v45;
  v35 = v46;
  closure #1 in DatePicker<>.init<A>(_:selection:displayedComponents:)(v45, v33);
  v36 = v38;
  _sSNy10Foundation4DateVGWOhTm_4(v40, &lazy cache variable for type metadata for PartialRangeFrom<Date>, v38);
  _s10Foundation4DateVSgWOhTm_1(v42, &lazy cache variable for type metadata for Binding<Date>, v19);
  _s10Foundation4DateVSgWOhTm_1(v29, &lazy cache variable for type metadata for Date?, v32);
  _s10Foundation4DateVSgWOhTm_1(v14, &lazy cache variable for type metadata for Date?, v32);
  _s10Foundation4DateVSgWOhTm_1(v22, &lazy cache variable for type metadata for Binding<Date>, v19);
  _sSNy10Foundation4DateVGWOhTm_4(v41, &lazy cache variable for type metadata for PartialRangeFrom<Date>, v36);
  _s10Foundation4DateVSgWOhTm_1(v25, &lazy cache variable for type metadata for Binding<Date>, v19);
  return (*(*(v35 - 8) + 8))(v34, v35);
}

uint64_t DatePicker<>.init<A>(_:selection:in:displayedComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a5;
  v51 = a6;
  v45 = a3;
  v46 = a2;
  v47 = a7;
  v48 = MEMORY[0x1E69E6720];
  v49 = a1;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v14 = MEMORY[0x1E69E6ED0];
  v42 = &v40 - v15;
  v43 = MEMORY[0x1E69E6ED0];
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for PartialRangeThrough<Date>, MEMORY[0x1E69E6ED0]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v40 - v17;
  v19 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  v44 = *a4;
  outlined init with copy of Binding<Date>(a2, &v40 - v24, &lazy cache variable for type metadata for Binding<Date>, v19);
  v26 = v18;
  v41 = v18;
  outlined init with copy of PartialRangeThrough<Date>(a3, v18, &lazy cache variable for type metadata for PartialRangeThrough<Date>, v14);
  outlined init with copy of Binding<Date>(v25, v22, &lazy cache variable for type metadata for Binding<Date>, v19);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v30 = v42;
  v29(v42, 1, 1, v27);
  (*(v28 + 16))(v12, v26, v27);
  v29(v12, 0, 1, v27);
  v31 = v47;
  outlined init with copy of Binding<Date>(v22, v47, &lazy cache variable for type metadata for Binding<Date>, v19);
  _s7SwiftUI10DatePickerVyAA0cD18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for DatePicker<Text>);
  v33 = v32;
  v34 = v48;
  outlined init with copy of Binding<Date>(v30, v31 + v32[9], &lazy cache variable for type metadata for Date?, v48);
  outlined init with copy of Binding<Date>(v12, v31 + v33[10], &lazy cache variable for type metadata for Date?, v34);
  *(v31 + v33[11]) = v44;
  v35 = v31 + v33[12];
  v36 = v49;
  v37 = v50;
  closure #1 in DatePicker<>.init<A>(_:selection:displayedComponents:)(v49, v35);
  v38 = v43;
  _sSNy10Foundation4DateVGWOhTm_4(v45, &lazy cache variable for type metadata for PartialRangeThrough<Date>, v43);
  _s10Foundation4DateVSgWOhTm_1(v46, &lazy cache variable for type metadata for Binding<Date>, v19);
  _s10Foundation4DateVSgWOhTm_1(v12, &lazy cache variable for type metadata for Date?, v34);
  _s10Foundation4DateVSgWOhTm_1(v30, &lazy cache variable for type metadata for Date?, v34);
  _s10Foundation4DateVSgWOhTm_1(v22, &lazy cache variable for type metadata for Binding<Date>, v19);
  _sSNy10Foundation4DateVGWOhTm_4(v41, &lazy cache variable for type metadata for PartialRangeThrough<Date>, v38);
  _s10Foundation4DateVSgWOhTm_1(v25, &lazy cache variable for type metadata for Binding<Date>, v19);
  return (*(*(v37 - 8) + 8))(v36, v37);
}

uint64_t closure #1 in DatePicker<>.init<A>(_:selection:displayedComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

unint64_t lazy protocol witness table accessor for type DatePickerComponents and conformance DatePickerComponents()
{
  result = lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents;
  if (!lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents;
  if (!lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents;
  if (!lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents;
  if (!lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatePickerComponents and conformance DatePickerComponents);
  }

  return result;
}

void type metadata completion function for DatePicker()
{
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(319, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for DatePicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v9;
  v11 = *(v7 + 64);
  v12 = ((v10 + 16) & ~v10) + v11 + v10;
  if (*(v7 + 84))
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = v11 + 1;
  }

  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (*(v15 + 80) | v9) & 0x100000;
  v18 = ((-9 - v16 - ((v13 + 7 + ((v13 + v10 + (v12 & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8)) | v16) - *(v15 + 64);
  v19 = *a2;
  *a1 = *a2;
  if ((v16 | v10) <= 7 && v17 == 0 && v18 >= 0xFFFFFFFFFFFFFFE7)
  {
    __n = v13;
    v38 = v13 + v10;
    v39 = v13 + 7;
    v40 = v15;
    v41 = v14;
    v37 = ~v10;
    v23 = a1 + 15;
    v24 = a1;
    v25 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v23 & 0xFFFFFFFFFFFFFFF8) = *v25;
    v26 = (v23 & 0xFFFFFFFFFFFFFFF8) + 8;
    v27 = *(v8 + 16);

    v27(v26, v25 + 1, v6);
    v42 = v24;
    v28 = ((v24 + v12) & v37);
    v29 = ((a2 + v12) & v37);
    v30 = *(v8 + 48);
    if (v30(v29, 1, v6))
    {
      memcpy(v28, v29, __n);
      v31 = v27;
    }

    else
    {
      v31 = v27;
      v27(v28, v29, v6);
      (*(v8 + 56))(v28, 0, 1, v6);
    }

    v32 = ((v28 + v38) & v37);
    v33 = ((v29 + v38) & v37);
    if (v30(v33, 1, v6))
    {
      memcpy(v32, v33, __n);
    }

    else
    {
      v31(v32, v33, v6);
      (*(v8 + 56))(v32, 0, 1, v6);
    }

    v34 = ((v32 + v39) & 0xFFFFFFFFFFFFFFF8);
    v35 = ((v33 + v39) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v35;
    (*(v40 + 16))(v34 + 1, v35 + 1, v41);
    return v42;
  }

  else
  {
    v22 = v19 + (((v16 | v10) & 0xF8 ^ 0x1F8) & ((v16 | v10) + 16));
  }

  return v22;
}

uint64_t destroy for DatePicker(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 8);
  v7(((v3 & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6, v4);
  v8 = *(v5 + 64);
  v9 = (v6 + a1 + v8 + ((v6 + 16) & ~v6)) & ~v6;
  v10 = *(v5 + 48);
  if (!v10(v9, 1, v4))
  {
    v7(v9, v4);
  }

  if (!*(v5 + 84))
  {
    ++v8;
  }

  v11 = (v9 + v6 + v8) & ~v6;
  if (!v10(v11, 1, v4))
  {
    v7(v11, v4);
  }

  v12 = *(*(a2 + 16) - 8);
  v13 = *(v12 + 8);
  v14 = (((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 80) + 8) & ~*(v12 + 80);

  return v13(v14);
}

void *initializeWithCopy for DatePicker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v3 = *v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v24 = v3 + v7 + 8;
  v26 = ~v7;
  v8 = *(v6 + 16);

  v8(v24 & ~v7, (v4 + v7 + 8) & ~v7, v5);
  v9 = *(v6 + 64);
  v10 = ((v7 + 16) & ~v7) + v9 + v7;
  v11 = v5;
  v12 = ((a1 + v10) & ~v7);
  v13 = ((a2 + v10) & ~v7);
  v14 = *(v6 + 48);
  v23 = v8;
  if (v14(v13, 1, v11))
  {
    v15 = *(v6 + 84);
    if (v15)
    {
      v16 = v9;
    }

    else
    {
      v16 = v9 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    v8(v12, v13, v11);
    (*(v6 + 56))(v12, 0, 1, v11);
    v15 = *(v6 + 84);
  }

  if (!v15)
  {
    ++v9;
  }

  v17 = ((v12 + v7 + v9) & v26);
  v18 = ((v13 + v7 + v9) & v26);
  if (v14(v18, 1, v11))
  {
    memcpy(v17, v18, v9);
  }

  else
  {
    v23(v17, v18, v11);
    (*(v6 + 56))(v17, 0, 1, v11);
  }

  v19 = ((v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = *(*(a3 + 16) - 8);
  (*(v21 + 16))((v19 + *(v21 + 80) + 8) & ~*(v21 + 80), (v20 + *(v21 + 80) + 8) & ~*(v21 + 80));
  return a1;
}

void *assignWithCopy for DatePicker(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 &= 0xFFFFFFFFFFFFFFF8;
  *v6 = *v5;

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v30 = ~v10;
  v29 = *(v8 + 24);
  v29((v6 + v10 + 8) & ~v10, (v10 + 8 + v5) & ~v10, v7);
  v11 = *(v8 + 64);
  v12 = ((v10 + 16) & ~v10) + v11 + v10;
  v13 = ((a1 + v12) & ~v10);
  v14 = ((a2 + v12) & ~v10);
  v15 = *(v9 + 48);
  v16 = v15(v13, 1, v7);
  v17 = v15(v14, 1, v7);
  if (v16)
  {
    if (!v17)
    {
      (*(v9 + 16))(v13, v14, v7);
      (*(v9 + 56))(v13, 0, 1, v7);
      goto LABEL_12;
    }

    v18 = *(v9 + 84);
  }

  else
  {
    if (!v17)
    {
      v29(v13, v14, v7);
      goto LABEL_12;
    }

    (*(v9 + 8))(v13, v7);
    v18 = *(v9 + 84);
  }

  if (v18)
  {
    v19 = v11;
  }

  else
  {
    v19 = v11 + 1;
  }

  memcpy(v13, v14, v19);
LABEL_12:
  if (*(v9 + 84))
  {
    v20 = v11;
  }

  else
  {
    v20 = v11 + 1;
  }

  v21 = ((v13 + v10 + v20) & v30);
  v22 = ((v14 + v10 + v20) & v30);
  v23 = v15(v21, 1, v7);
  v24 = v15(v22, 1, v7);
  if (!v23)
  {
    if (!v24)
    {
      v29(v21, v22, v7);
      goto LABEL_21;
    }

    (*(v9 + 8))(v21, v7);
    goto LABEL_20;
  }

  if (v24)
  {
LABEL_20:
    memcpy(v21, v22, v20);
    goto LABEL_21;
  }

  (*(v9 + 16))(v21, v22, v7);
  (*(v9 + 56))(v21, 0, 1, v7);
LABEL_21:
  v25 = ((v21 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v22 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = *(*(a3 + 16) - 8);
  (*(v27 + 24))((v25 + *(v27 + 80) + 8) & ~*(v27 + 80), (v26 + *(v27 + 80) + 8) & ~*(v27 + 80));
  return a1;
}

void *initializeWithTake for DatePicker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v27 = ~v10;
  v11 = v6 + v10 + 8;
  v12 = *(v8 + 32);
  v12((v5 + v10 + 8) & ~v10, v11 & ~v10, v7);
  v13 = *(v8 + 64);
  v14 = ((v10 + 16) & ~v10) + v13 + v10;
  v15 = ((a1 + v14) & ~v10);
  v16 = ((a2 + v14) & ~v10);
  v17 = *(v9 + 48);
  v26 = v12;
  if (v17(v16, 1, v7))
  {
    v18 = *(v9 + 84);
    if (v18)
    {
      v19 = v13;
    }

    else
    {
      v19 = v13 + 1;
    }

    memcpy(v15, v16, v19);
  }

  else
  {
    v12(v15, v16, v7);
    (*(v9 + 56))(v15, 0, 1, v7);
    v18 = *(v9 + 84);
  }

  if (!v18)
  {
    ++v13;
  }

  v20 = ((v15 + v10 + v13) & v27);
  v21 = ((v16 + v10 + v13) & v27);
  if (v17(v21, 1, v7))
  {
    memcpy(v20, v21, v13);
  }

  else
  {
    v26(v20, v21, v7);
    (*(v9 + 56))(v20, 0, 1, v7);
  }

  v22 = ((v20 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = *(*(a3 + 16) - 8);
  (*(v24 + 32))((v22 + *(v24 + 80) + 8) & ~*(v24 + 80), (v23 + *(v24 + 80) + 8) & ~*(v24 + 80));
  return a1;
}

void *assignWithTake for DatePicker(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 &= 0xFFFFFFFFFFFFFFF8;
  *v6 = *v5;

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v30 = ~v10;
  v29 = *(v8 + 40);
  v29((v6 + v10 + 8) & ~v10, (v10 + 8 + v5) & ~v10, v7);
  v11 = *(v8 + 64);
  v12 = ((v10 + 16) & ~v10) + v11 + v10;
  v13 = ((a1 + v12) & ~v10);
  v14 = ((a2 + v12) & ~v10);
  v15 = *(v9 + 48);
  v16 = v15(v13, 1, v7);
  v17 = v15(v14, 1, v7);
  if (v16)
  {
    if (!v17)
    {
      (*(v9 + 32))(v13, v14, v7);
      (*(v9 + 56))(v13, 0, 1, v7);
      goto LABEL_12;
    }

    v18 = *(v9 + 84);
  }

  else
  {
    if (!v17)
    {
      v29(v13, v14, v7);
      goto LABEL_12;
    }

    (*(v9 + 8))(v13, v7);
    v18 = *(v9 + 84);
  }

  if (v18)
  {
    v19 = v11;
  }

  else
  {
    v19 = v11 + 1;
  }

  memcpy(v13, v14, v19);
LABEL_12:
  if (*(v9 + 84))
  {
    v20 = v11;
  }

  else
  {
    v20 = v11 + 1;
  }

  v21 = ((v13 + v10 + v20) & v30);
  v22 = ((v14 + v10 + v20) & v30);
  v23 = v15(v21, 1, v7);
  v24 = v15(v22, 1, v7);
  if (!v23)
  {
    if (!v24)
    {
      v29(v21, v22, v7);
      goto LABEL_21;
    }

    (*(v9 + 8))(v21, v7);
    goto LABEL_20;
  }

  if (v24)
  {
LABEL_20:
    memcpy(v21, v22, v20);
    goto LABEL_21;
  }

  (*(v9 + 32))(v21, v22, v7);
  (*(v9 + 56))(v21, 0, 1, v7);
LABEL_21:
  v25 = ((v21 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v22 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = *(*(a3 + 16) - 8);
  (*(v27 + 40))((v25 + *(v27 + 80) + 8) & ~*(v27 + 80), (v26 + *(v27 + 80) + 8) & ~*(v27 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for DatePicker(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v12 + 80);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v8)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = ((v14 + 16) & ~v14) + v15 + v14;
  v20 = v18 + v14;
  v21 = v18 + 7;
  v22 = v16 + 8;
  if (a2 > v17)
  {
    v23 = ((v22 + ((v21 + ((v20 + (v19 & ~v14)) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(v12 + 64);
    v24 = 8 * v23;
    if (v23 > 3)
    {
      goto LABEL_19;
    }

    v26 = ((a2 - v17 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v26 <= 0xFF)
      {
        if (v26 < 2)
        {
          goto LABEL_39;
        }

LABEL_19:
        v25 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          goto LABEL_39;
        }

LABEL_26:
        v27 = (v25 - 1) << v24;
        if (v23 > 3)
        {
          v27 = 0;
        }

        if (v23)
        {
          if (v23 <= 3)
          {
            v28 = ((v22 + ((v21 + ((v20 + (v19 & ~v14)) & ~v14)) & 0xFFFFFFF8)) & ~v16) + *(v12 + 64);
          }

          else
          {
            v28 = 4;
          }

          if (v28 > 2)
          {
            if (v28 == 3)
            {
              v29 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v29 = *a1;
            }
          }

          else if (v28 == 1)
          {
            v29 = *a1;
          }

          else
          {
            v29 = *a1;
          }
        }

        else
        {
          v29 = 0;
        }

        return v17 + (v29 | v27) + 1;
      }

      v25 = *(a1 + v23);
      if (*(a1 + v23))
      {
        goto LABEL_26;
      }
    }
  }

LABEL_39:
  v30 = ~v14;
  if (v9 == v17)
  {
    v31 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0x80000000) != 0)
    {
      v36 = *(v7 + 48);

      return v36((v31 + v14 + 8) & v30);
    }

    else
    {
      v32 = *v31;
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }
  }

  v34 = (a1 + v19) & v30;
  if (v10 == v17)
  {
    if (v8 >= 2)
    {
      v37 = (*(v7 + 48))(v34);
      if (v37 >= 2)
      {
        return v37 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v35 = *(v12 + 48);

  return v35((v22 + ((v21 + ((v20 + v34) & v30)) & 0xFFFFFFFFFFFFFFF8)) & ~v16, v13);
}

void storeEnumTagSinglePayload for DatePicker(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(type metadata accessor for Date() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v15 + 80);
  if (v16 <= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = *(v15 + 84);
  }

  v21 = ((v17 + 16) & ~v17) + v18 + v17;
  if (v11)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + 1;
  }

  v23 = ((v19 + 8 + ((v22 + 7 + ((v22 + v17 + (v21 & ~v17)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + *(v15 + 64);
  if (a3 <= v20)
  {
    goto LABEL_30;
  }

  if (v23 > 3)
  {
    v8 = 1;
    if (v20 >= a2)
    {
      goto LABEL_19;
    }

LABEL_31:
    v26 = ~v20 + a2;
    if (v23 >= 4)
    {
      bzero(a1, v23);
      *a1 = v26;
      v27 = 1;
      if (v8 > 1)
      {
        goto LABEL_33;
      }

LABEL_63:
      if (v8)
      {
        a1[v23] = v27;
      }

      return;
    }

    v27 = (v26 >> (8 * v23)) + 1;
    if (v23)
    {
      v31 = v26 & ~(-1 << (8 * v23));
      bzero(a1, v23);
      if (v23 != 3)
      {
        if (v23 == 2)
        {
          *a1 = v31;
          if (v8 <= 1)
          {
            goto LABEL_63;
          }
        }

        else
        {
          *a1 = v26;
          if (v8 <= 1)
          {
            goto LABEL_63;
          }
        }

LABEL_33:
        if (v8 == 2)
        {
          *&a1[v23] = v27;
        }

        else
        {
          *&a1[v23] = v27;
        }

        return;
      }

      *a1 = v31;
      a1[2] = BYTE2(v31);
    }

    if (v8 <= 1)
    {
      goto LABEL_63;
    }

    goto LABEL_33;
  }

  v24 = ((a3 - v20 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
  if (!HIWORD(v24))
  {
    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v8 = v25;
    }

    else
    {
      v8 = 0;
    }

LABEL_30:
    if (v20 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  v8 = 4;
  if (v20 < a2)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v23] = 0;
  }

  else if (v8)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  v28 = ~v17;
  if (v12 == v20)
  {
    v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v30 = (a2 - 1);
      }

      *v29 = v30;
      return;
    }

    v33 = *(v10 + 56);
    v35 = (v29 + v17 + 8) & v28;
    v34 = a2;
    goto LABEL_58;
  }

  v32 = &a1[v21] & v28;
  if (v13 == v20)
  {
    v33 = *(v10 + 56);
    v34 = (a2 + 1);
    v35 = v32;
LABEL_58:

    v33(v35, v34);
    return;
  }

  v36 = *(v15 + 56);

  v36((v19 + 8 + ((v22 + 7 + ((v22 + v17 + v32) & v28)) & 0xFFFFFFFFFFFFFFF8)) & ~v19, a2, v16);
}

uint64_t _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t View.accessibilityChartDescriptor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChartDescriptorModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t static ChartDescriptorModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 48);
  v3 = *(a2 + 16);
  v36 = *(a2 + 32);
  v37 = v2;
  v4 = *(a2 + 48);
  v38 = *(a2 + 64);
  v5 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v5;
  v31 = v36;
  v32 = v4;
  v33 = *(a2 + 64);
  v6 = *a1;
  v39 = *(a2 + 80);
  v34 = *(a2 + 80);
  v29 = v35[0];
  v30 = v3;
  outlined init with copy of _ViewInputs(v35, &v46);
  static DynamicPropertyCache.fields(of:)();
  v7 = v46;
  v8 = v47;
  v19 = DWORD1(v47);
  LODWORD(v42[0]) = v6;
  v18 = v6;
  outlined copy of DynamicPropertyCache.Fields.Layout();
  type metadata accessor for ChartDescriptorModifier();
  _DynamicPropertyBuffer.init<A>(fields:container:inputs:)();
  v9 = *&v44[0];
  v17 = *&v44[0];
  v10 = DWORD2(v44[0]);
  v11 = HIDWORD(v44[0]);
  LODWORD(v46) = v6;
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  *&v46 = __PAIR64__(*(v30 + 16), OffsetAttribute2);
  *(&v46 + 1) = DWORD2(v30);
  *&v47 = 0;
  *(&v47 + 1) = v9;
  *&v48 = __PAIR64__(v11, v10);
  v13 = type metadata accessor for ChartDescriptorModifier.Child();
  v21 = v13;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>(0, &lazy cache variable for type metadata for Attribute<AccessibilityAttachmentModifier>, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v46, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_18, v20, v13, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v40[0] = v46;
  v40[1] = v47;
  v41 = v48;
  (*(*(v13 - 8) + 8))(v40, v13);
  *&v44[0] = v17;
  *(&v44[0] + 1) = __PAIR64__(v11, v10);
  LODWORD(v42[0]) = v18;
  v46 = v7;
  LOBYTE(v47) = v8;
  DWORD1(v47) = v19;
  _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  outlined consume of DynamicPropertyCache.Fields.Layout();
  v42[2] = v31;
  v42[3] = v32;
  v42[4] = v33;
  v43 = v34;
  v42[0] = v29;
  v42[1] = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  outlined init with copy of _ViewInputs(v42, &v46);
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  v44[2] = v25;
  v44[3] = v26;
  v44[4] = v27;
  v45 = v28;
  v44[0] = v23;
  v44[1] = v24;
  outlined destroy of _ViewInputs(v44);
  v48 = v31;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v46 = v29;
  v47 = v30;
  return outlined destroy of _ViewInputs(&v46);
}

uint64_t ChartDescriptorModifier.Child.updateValue()(uint64_t a1)
{
  v2 = v1;
  v36[36] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = *v1;
  LODWORD(v6) = *(v1 + 8);
  v8 = *(v1 + 12);
  v9 = *(v1 + 16);
  *&v35[3] = *(v1 + 24);
  v35[1] = __PAIR64__(v8, v6);
  v35[2] = v9;
  WindowSceneList.MakeList.environment.getter(v36);
  v10 = EnvironmentValues.accessibilityEnabled.getter();

  if ((v10 & 1) == 0)
  {
    AccessibilityProperties.init()();
    outlined init with copy of AccessibilityProperties(v36, v34);
    AccessibilityAttachment.init(properties:)();
    outlined destroy of AccessibilityProperties(v36);
    type metadata accessor for Attribute<()>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v21 = swift_allocObject();
    memcpy((v21 + 16), v35, 0x128uLL);
    v35[0] = v21;
    v35[1] = 0;
    AGGraphSetOutputValue();
  }

  Value = AGGraphGetValue();
  v29 = v12;
  v31 = v7;
  v32 = v5;
  v30 = *(v5 + 16);
  v30(v7, Value, v4);
  v13 = AGGraphGetValue();
  v28 = v14;
  v15 = *v13;
  v16 = *v13 >> 1;
  if (v16 != v8)
  {
    v35[0] = *(v2 + 24);
    v35[1] = *(v2 + 32);
    _DynamicPropertyBuffer.reset()();
    if (v9)
    {
      RepresentableChartDescriptorStorage.reset()();
    }

    *(v2 + 12) = v16;
  }

  MEMORY[0x1EEE9AC00](v13);
  v17 = *(a1 + 24);
  *(&v28 - 4) = v4;
  *(&v28 - 3) = v17;
  *(&v28 - 2) = v2;
  *(&v28 - 2) = v15;
  v18 = v31;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v31, partial apply for closure #1 in ChartDescriptorModifier.Child.updateValue(), (&v28 - 6), v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v19);
  if (v33)
  {
    v20 = 1;
  }

  else
  {
    OutputValue = AGGraphGetOutputValue();
    v20 = 1;
    if (OutputValue && (v29 & 1) == 0)
    {
      v20 = v28 & 1;
    }
  }

  if (!*(v2 + 16))
  {
    type metadata accessor for RepresentableChartDescriptorStorage();
    v35[3] = v4;
    v35[4] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    v30(boxed_opaque_existential_1, v18, v4);
    v26 = RepresentableChartDescriptorStorage.__allocating_init(_:)();
    *(v2 + 16) = v26;
    v35[0] = v26;

    AccessibilityProperties.init<A>(_:_:)();
    outlined init with copy of AccessibilityProperties(v36, v34);
    AccessibilityAttachment.init(properties:)();
    outlined destroy of AccessibilityProperties(v36);
    type metadata accessor for Attribute<()>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v27 = swift_allocObject();
    memcpy((v27 + 16), v35, 0x128uLL);
    v35[0] = v27;
    v35[1] = 0;
    AGGraphSetOutputValue();
    (*(v32 + 8))(v18, v4);
  }

  if (!v20)
  {
    return (*(v32 + 8))(v18, v4);
  }

  v35[3] = v4;
  v35[4] = v17;
  v23 = __swift_allocate_boxed_opaque_existential_1(v35);
  v30(v23, v18, v4);

  RepresentableChartDescriptorStorage.markNeedsUpdate(_:)();

  (*(v32 + 8))(v18, v4);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

void ChartDescriptorModifier.Child.destroy()()
{
  _DynamicPropertyBuffer.destroy()();
  if (*(v0 + 16))
  {
    RepresentableChartDescriptorStorage.reset()();
  }

  *(v0 + 16) = 0;
}

uint64_t ChartDescriptorModifier.description.getter()
{
  _StringGuts.grow(_:)(53);
  MEMORY[0x18D00C9B0](0xD000000000000033, 0x800000018CD58270);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ChartDescriptorModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t AccessibilityNode.accessibilityChartDescriptor.getter()
{
  AccessibilityNode.attachment.getter(v3);
  outlined init with copy of AccessibilityProperties(v3, v4);
  outlined destroy of AccessibilityAttachment(v3);
  v0 = AccessibilityProperties.chartDescriptor.getter();
  outlined destroy of AccessibilityProperties(v4);
  if (!v0)
  {
    return 0;
  }

  v1 = dispatch thunk of AccessibilityChartDescriptorStorage.resolve()();

  return v1;
}

uint64_t initializeWithCopy for ChartDescriptorModifier.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for ChartDescriptorModifier.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t assignWithTake for ChartDescriptorModifier.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t partial apply for closure #1 in ChartDescriptorModifier.Child.updateValue()@<X0>(_BYTE *a1@<X8>)
{
  result = _DynamicPropertyBuffer.update(container:phase:)();
  *a1 = result & 1;
  return result;
}

uint64_t EnvironmentValues.searchSuffix.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.searchToolbarBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.searchPresentationToolbarBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t View.searchPresentationToolbarBehavior(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path getter for EnvironmentValues.searchPresentationToolbarBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.searchPresentationToolbarBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

Swift::Int SearchToolbarBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t View.searchToolbarBehavior(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path getter for EnvironmentValues.searchToolbarBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.searchToolbarBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.searchDictationBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t View.searchDictationBehavior(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path getter for EnvironmentValues.searchDictationBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.searchDictationBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.SearchSuffixKey(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v14 = *a1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  outlined copy of Text.Suffix.Storage(v14, v2, v3);
  outlined copy of Text.Suffix.Storage(v5, v6, v7);
  LOBYTE(v5) = MEMORY[0x18D009D50](&v14, &v10);
  outlined consume of Text.Suffix.Storage(v10, v11, v12);
  outlined consume of Text.Suffix.Storage(v14, v15, v16);
  return v5 & 1;
}

uint64_t View.searchSuffix(alwaysVisible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  outlined copy of Text?(a1, a2, a3, a4);
  View.transformEnvironment<A>(_:transform:)();
}

double key path getter for EnvironmentValues.searchSuffix : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.searchSuffix : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>);

  outlined copy of Text.Suffix.Storage(v3, v4, v5);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t *closure #1 in View.searchSuffix(alwaysVisible:)(uint64_t *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5)
  {
    v7 = *result;
    v8 = result[1];
    v9 = result[2];
    v10 = result;
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    result = outlined consume of Text.Suffix.Storage(v7, v8, v9);
    *v10 = a2;
    v10[1] = a3;
    v10[2] = a4 & 1 | 0x4000000000000000;
    v10[3] = a5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolbarBehavior and conformance SearchToolbarBehavior()
{
  result = lazy protocol witness table cache variable for type SearchToolbarBehavior and conformance SearchToolbarBehavior;
  if (!lazy protocol witness table cache variable for type SearchToolbarBehavior and conformance SearchToolbarBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolbarBehavior and conformance SearchToolbarBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role>, &type metadata for SearchPresentationToolbarBehavior.Role, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA33SearchPresentationToolbarBehaviorV4RoleOGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), void (*a5)(void))
{
  type metadata accessor for _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role>(255, a2, a3, a4);
  type metadata accessor for ModifiedContent();
  a5();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchToolbarBehavior> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchToolbarBehavior> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchToolbarBehavior> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchToolbarBehavior>, &type metadata for SearchToolbarBehavior, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchToolbarBehavior> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputDictationBehavior> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextInputDictationBehavior> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextInputDictationBehavior> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextInputDictationBehavior>, &type metadata for TextInputDictationBehavior, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextInputDictationBehavior> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Text.Suffix> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Text.Suffix> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Text.Suffix> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchPresentationToolbarBehavior.Role>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Text.Suffix>, MEMORY[0x1E69810B8], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Text.Suffix> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchPresentationToolbarBehavior.Role and conformance SearchPresentationToolbarBehavior.Role()
{
  result = lazy protocol witness table cache variable for type SearchPresentationToolbarBehavior.Role and conformance SearchPresentationToolbarBehavior.Role;
  if (!lazy protocol witness table cache variable for type SearchPresentationToolbarBehavior.Role and conformance SearchPresentationToolbarBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPresentationToolbarBehavior.Role and conformance SearchPresentationToolbarBehavior.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolbarBehavior.Role and conformance SearchToolbarBehavior.Role()
{
  result = lazy protocol witness table cache variable for type SearchToolbarBehavior.Role and conformance SearchToolbarBehavior.Role;
  if (!lazy protocol witness table cache variable for type SearchToolbarBehavior.Role and conformance SearchToolbarBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolbarBehavior.Role and conformance SearchToolbarBehavior.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchDictationBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t CompactDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitDatePicker(0);
  *(a2 + v3[5]) = 2;
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770]);
  swift_storeEnumTagMultiPayload();
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[8];
  *(a2 + v6) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for DatePickerStyle.makeBody(configuration:) in conformance CompactDatePickerStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitDatePicker(0);
  *(a2 + v3[5]) = 2;
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770]);
  swift_storeEnumTagMultiPayload();
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[8];
  *(a2 + v6) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0]);

  return swift_storeEnumTagMultiPayload();
}

SwiftUI::_OverlayLayout __swiftcall _OverlayLayout.init(contentIndex:)(SwiftUI::_OverlayLayout contentIndex)
{
  *v1 = contentIndex.contentIndex.value;
  *(v1 + 8) = contentIndex.contentIndex.is_nil;
  return contentIndex;
}

unint64_t lazy protocol witness table accessor for type _OverlayLayout and conformance _OverlayLayout()
{
  result = lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout;
  if (!lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout;
  if (!lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout;
  if (!lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout;
  if (!lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OverlayLayout and conformance _OverlayLayout);
  }

  return result;
}

uint64_t _OverlayLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t result)
{
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = *v1;
    v2 = LayoutSubviews.endIndex.getter();
    result = LayoutSubviews.endIndex.getter();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = LayoutSubviews.endIndex.getter();
      if ((v2 & 0x8000000000000000) == 0 && result >= v2)
      {
        result = v3;
        if (v3 < v2)
        {
          LayoutSubviews.subscript.getter();
          return LayoutSubview.sizeThatFits(_:)();
        }

        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static _VariadicView_AnyImplicitRoot.visitType<A>(visitor:) in conformance _OverlayLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _OverlayLayout and conformance _OverlayLayout();

  return MEMORY[0x1EEDE2308](a1, a4, a2, v8, a3);
}

uint64_t specialized _OverlayLayout.placeSubviews(in:proposal:subviews:cache:)()
{

  if (LayoutSubviews.endIndex.getter())
  {
    v0 = 0;
    while (1)
    {
      LayoutSubviews.subscript.getter();
      result = LayoutSubviews.endIndex.getter();
      if (v0 >= result)
      {
        break;
      }

      ++v0;
      static UnitPoint.topLeading.getter();
      LayoutSubview.place(at:anchor:proposal:)();
      if (v0 == LayoutSubviews.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _OverlayLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _OverlayLayout and conformance _OverlayLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t View.accessibilityCustomContent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for [AccessibilityCustomContentEntry](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityCustomContentEntry>, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63400;
  outlined init with copy of AccessibilityCustomContentEntry(a1, v6 + 32);
  v8 = v6;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800E0], &v8, 1, a2, MEMORY[0x1E69800E0], a3);
}

{
  v4 = a1;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800E0], &v4, 1, a2, MEMORY[0x1E69800E0], a3);
}

Swift::OpaquePointer_optional __swiftcall AccessibilityNode.accessibilityCustomContent()()
{
  AccessibilityNode.attachment.getter(v5);
  outlined init with copy of AccessibilityProperties(v5, v6);
  outlined destroy of AccessibilityAttachment(v5);
  AccessibilityProperties.customContentList.getter();
  outlined destroy of AccessibilityProperties(v6);
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v5[0] = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v5[1] = v1;

  v2 = Array<A>.resolve(in:)();

  v4 = v2;
  result.value._rawValue = v4;
  result.is_nil = v3;
  return result;
}

uint64_t View.accessibilityCustomContent(_:_:importance:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  v15[0] = *a1;
  v15[1] = v10;
  v11 = a1[3];
  v15[2] = a1[2];
  v15[3] = v11;
  if (a5)
  {
    outlined copy of Text?(a2, a3, a4, a5);
    outlined init with copy of AccessibilityCustomContentKey(v15, v14);
    v14[0] = a4 & 1;
    AccessibilityCustomContentEntry.init(_:value:importance:)();
  }

  else
  {
    outlined init with copy of AccessibilityCustomContentKey(v15, v14);
    AccessibilityCustomContentEntry.init(clearing:)();
  }

  View.accessibilityCustomContent(_:)(v14, a7, a8);
  return outlined destroy of AccessibilityCustomContentEntry(v14);
}

uint64_t View.accessibilityCustomContent(_:_:importance:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15 & 1;
  View.accessibilityCustomContent(_:_:importance:)(a1, v12, v13, v15 & 1, v17, a6, a7, a8);
  outlined consume of Text.Storage(v12, v14, v16);
}

uint64_t View.accessibilityCustomContent<A>(_:_:importance:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16 & 1;
  View.accessibilityCustomContent(_:_:importance:)(a1, v13, v14, v16 & 1, v18, a3, a4, a6);
  outlined consume of Text.Storage(v13, v15, v17);
}

uint64_t View.accessibilityCustomContent(_:_:importance:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  AccessibilityCustomContentKey.init(_:)();
  View.accessibilityCustomContent(_:_:importance:)(v16, a5, a6, a7 & 1, a8, a9, a10, a11);
  v17[0] = v16[0];
  v17[1] = v16[1];
  v17[2] = v16[2];
  v17[3] = v16[3];
  return outlined destroy of AccessibilityCustomContentKey(v17);
}

uint64_t View.accessibilityCustomContent(_:_:importance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  View.accessibilityCustomContent(_:_:importance:)(v15, v16, v18 & 1, v20, a5, a6, a7 & 1, a8, a9, a10, a11);
  outlined consume of Text.Storage(v15, v17, v19 & 1);
}

uint64_t View.accessibilityCustomContent(_:_:importance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  View.accessibilityCustomContent(_:_:importance:)(v11, v13, v15 & 1, v17, v18, v19, v21 & 1, v23, a9, a10, a11);
  outlined consume of Text.Storage(v18, v20, v22 & 1);

  outlined consume of Text.Storage(v11, v13, v15 & 1);
}

uint64_t View.accessibilityCustomContent<A>(_:_:importance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v27 = a3;
  v25 = a6;
  v26 = a4;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v9 + 16))(v11, a2, a5);
  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(a2) = v22;
  View.accessibilityCustomContent(_:_:importance:)(v12, v14, v16 & 1, v18, v19, v20, v22 & 1, v23, v27, v26, a7);
  outlined consume of Text.Storage(v19, v21, a2 & 1);

  outlined consume of Text.Storage(v12, v14, v16 & 1);
}

uint64_t ModifiedContent<>.accessibilityCustomContent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for [AccessibilityCustomContentEntry](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityCustomContentEntry>, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63400;
  outlined init with copy of AccessibilityCustomContentEntry(a1, v6 + 32);
  v9 = v6;
  v7 = lazy protocol witness table accessor for type [AccessibilityCustomContentEntry] and conformance [A]();
  ModifiedContent<>.update<A>(_:combining:isEnabled:)(MEMORY[0x1E69800E0], &v9, 1, a2, MEMORY[0x1E69800E0], MEMORY[0x1E69800D8], v7, a3);
}

{
  v7 = a1;
  v5 = lazy protocol witness table accessor for type [AccessibilityCustomContentEntry] and conformance [A]();
  return ModifiedContent<>.update<A>(_:combining:isEnabled:)(MEMORY[0x1E69800E0], &v7, 1, a2, MEMORY[0x1E69800E0], MEMORY[0x1E69800D8], v5, a3);
}

uint64_t ModifiedContent<>.accessibilityCustomContent(_:_:importance:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v9 = a1[1];
  v14[0] = *a1;
  v14[1] = v9;
  v10 = a1[3];
  v14[2] = a1[2];
  v14[3] = v10;
  if (a5)
  {
    outlined copy of Text?(a2, a3, a4, a5);
    outlined init with copy of AccessibilityCustomContentKey(v14, v13);
    v13[0] = a4 & 1;
    AccessibilityCustomContentEntry.init(_:value:importance:)();
  }

  else
  {
    outlined init with copy of AccessibilityCustomContentKey(v14, v13);
    AccessibilityCustomContentEntry.init(clearing:)();
  }

  ModifiedContent<>.accessibilityCustomContent(_:)(v13, a6, a7);
  return outlined destroy of AccessibilityCustomContentEntry(v13);
}

uint64_t ModifiedContent<>.accessibilityCustomContent(_:_:importance:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9 & 1;
  ModifiedContent<>.accessibilityCustomContent(_:_:importance:)(a1, v6, v7, v9 & 1, v11, a2, a3);
  outlined consume of Text.Storage(v6, v8, v10);
}

uint64_t ModifiedContent<>.accessibilityCustomContent<A>(_:_:importance:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12 & 1;
  ModifiedContent<>.accessibilityCustomContent(_:_:importance:)(a1, v9, v10, v12 & 1, v14, a2, a3);
  outlined consume of Text.Storage(v9, v11, v13);
}

uint64_t ModifiedContent<>.accessibilityCustomContent(_:_:importance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  AccessibilityCustomContentKey.init(_:)();
  ModifiedContent<>.accessibilityCustomContent(_:_:importance:)(v16, a4, a5, a6 & 1, a7, a10, a8);
  v17[0] = v16[0];
  v17[1] = v16[1];
  v17[2] = v16[2];
  v17[3] = v16[3];
  return outlined destroy of AccessibilityCustomContentKey(v17);
}

uint64_t ModifiedContent<>.accessibilityCustomContent(_:_:importance:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, char a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{

  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  ModifiedContent<>.accessibilityCustomContent(_:_:importance:)(v11, v12, v14 & 1, a1, a2, a3 & 1, a4, a5, a6, a7);
  outlined consume of Text.Storage(v11, v13, v15 & 1);
}

uint64_t ModifiedContent<>.accessibilityCustomContent(_:_:importance:)@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{

  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  ModifiedContent<>.accessibilityCustomContent(_:_:importance:)(v3, v5, v7 & 1, v8, v9, v11 & 1, v13, a1, a2, a3);
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  outlined consume of Text.Storage(v3, v5, v7 & 1);
}

uint64_t ModifiedContent<>.accessibilityCustomContent<A>(_:_:importance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v25 = a6;
  v24 = a3;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  (*(v9 + 16))(v11, a2, a5);
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(a2) = v20;
  ModifiedContent<>.accessibilityCustomContent(_:_:importance:)(v12, v14, v16 & 1, v17, v18, v20 & 1, v21, v25, v24, a4);
  outlined consume of Text.Storage(v17, v19, a2 & 1);

  outlined consume of Text.Storage(v12, v14, v16 & 1);
}

unint64_t lazy protocol witness table accessor for type [AccessibilityCustomContentEntry] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AccessibilityCustomContentEntry] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AccessibilityCustomContentEntry] and conformance [A])
  {
    type metadata accessor for [AccessibilityCustomContentEntry](255, &lazy cache variable for type metadata for [AccessibilityCustomContentEntry], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AccessibilityCustomContentEntry] and conformance [A]);
  }

  return result;
}

unint64_t type metadata accessor for AXCustomContent()
{
  result = lazy cache variable for type metadata for AXCustomContent;
  if (!lazy cache variable for type metadata for AXCustomContent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AXCustomContent);
  }

  return result;
}

void type metadata accessor for [AccessibilityCustomContentEntry](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6980A40]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for WindowSceneConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v10;
    v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 24);

    if (v14 < 0xFFFFFFFF)
    {
      v18 = *(v13 + 16);
      *v12 = *v13;
      *(v12 + 16) = v18;
    }

    else
    {
      v15 = *v13;
      v16 = *(v13 + 8);
      v17 = *(v13 + 16);
      outlined copy of Text.Storage(*v13, v16, v17);
      *v12 = v15;
      *(v12 + 8) = v16;
      *(v12 + 16) = v17;
      *(v12 + 24) = *(v13 + 24);
    }

    v19 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    if (*v22 < 0xFFFFFFFFuLL)
    {
      *v21 = *v22;
      return v3;
    }

    v23 = *(v22 + 8);
    *v21 = *v22;
    *(v21 + 8) = v23;
  }

  return v3;
}

uint64_t assignWithCopy for WindowSceneConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v9 & 0xFFFFFFFFFFFFFFF8;
  v12 = *((v9 & 0xFFFFFFFFFFFFFFF8) + 24);
  if (*(v10 + 24) < 0xFFFFFFFFuLL)
  {
    if (v12 >= 0xFFFFFFFF)
    {
      v19 = *v11;
      v20 = *(v11 + 8);
      v21 = *(v11 + 16);
      outlined copy of Text.Storage(*v11, v20, v21);
      *v10 = v19;
      *(v10 + 8) = v20;
      *(v10 + 16) = v21;
      *(v10 + 24) = *(v11 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v12 >= 0xFFFFFFFF)
    {
      v13 = *v11;
      v14 = *(v11 + 8);
      v15 = *(v11 + 16);
      outlined copy of Text.Storage(*v11, v14, v15);
      v16 = *v10;
      v17 = *(v10 + 8);
      v18 = *(v10 + 16);
      *v10 = v13;
      *(v10 + 8) = v14;
      *(v10 + 16) = v15;
      outlined consume of Text.Storage(v16, v17, v18);
      *(v10 + 24) = *(v11 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*v10, *(v10 + 8), *(v10 + 16));
  }

  v22 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v22;
LABEL_8:
  v23 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = *v26;
  if (*v25 < 0xFFFFFFFFuLL)
  {
    if (v27 >= 0xFFFFFFFF)
    {
      v29 = v26[1];
      *v25 = v27;
      v25[1] = v29;

      return a1;
    }

LABEL_14:
    *v25 = *v26;
    return a1;
  }

  if (v27 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v28 = v26[1];
  *v25 = v27;
  v25[1] = v28;

  return a1;
}

uint64_t initializeWithTake for WindowSceneConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  if (*v15 < 0xFFFFFFFF)
  {
    *v14 = *v15;
  }

  else
  {
    v17 = v15[1];
    *v14 = v16;
    *(v14 + 8) = v17;
  }

  return a1;
}

uint64_t assignWithTake for WindowSceneConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*(v9 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(v10 + 24) >= 0xFFFFFFFFuLL)
    {
      v11 = *(v10 + 16);
      v12 = *v9;
      v13 = *(v9 + 8);
      v14 = *(v9 + 16);
      *v9 = *v10;
      *(v9 + 16) = v11;
      outlined consume of Text.Storage(v12, v13, v14);
      *(v9 + 24) = *(v10 + 24);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v15 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v15;
LABEL_6:
  v16 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v19;
  if (*v18 < 0xFFFFFFFFuLL)
  {
    if (v20 >= 0xFFFFFFFF)
    {
      v22 = v19[1];
      *v18 = v20;
      v18[1] = v22;
      return a1;
    }

LABEL_12:
    *v18 = *v19;
    return a1;
  }

  if (v20 < 0xFFFFFFFF)
  {

    goto LABEL_12;
  }

  v21 = v19[1];
  *v18 = v20;
  v18[1] = v21;

  return a1;
}

uint64_t getEnumTagSinglePayload for WindowSceneConfiguration(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for WindowSceneConfiguration(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t SelectionRanges<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v21 - v5);
  v7 = type metadata accessor for TextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TextSelection(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextSelection.Indices(a1, v12, type metadata accessor for TextSelection?);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(v12, type metadata accessor for TextSelection?);
    RangeSet.init()();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(a1, type metadata accessor for TextSelection?);
    return swift_storeEnumTagMultiPayload();
  }

  outlined init with take of TextSelection(v12, v16);
  outlined init with copy of TextSelection.Indices(v16, v9, type metadata accessor for TextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(a1, type metadata accessor for TextSelection?);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(v16, type metadata accessor for TextSelection);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v17 - 8) + 32))(a2, v9, v17);
    return swift_storeEnumTagMultiPayload();
  }

  v20 = *v9;
  v19 = v9[1];
  if ((v19 ^ *v9) >> 14)
  {
    v21[0] = *v9;
    v21[1] = v19;
    RangeSet.init(_:)();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(a1, type metadata accessor for TextSelection?);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(v16, type metadata accessor for TextSelection);
  }

  else
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(a1, type metadata accessor for TextSelection?);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(v16, type metadata accessor for TextSelection);
    *v6 = v20;
  }

  swift_storeEnumTagMultiPayload();
  return outlined init with take of SelectionRanges<String.Index>(v6, a2);
}

uint64_t TextSelection.init(range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for TextSelection.Indices(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TextSelection(0);
  *(a3 + *(result + 20)) = 0;
  return result;
}

uint64_t TextSelection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = MEMORY[0x1E69E60D0];
  v4 = MEMORY[0x1E69E60E0];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BA8]);
  v42 = v5;
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, v3, v4, MEMORY[0x1E69E7BE0]);
  v45 = v10;
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v37 - v11;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v3, v4, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for TextSelection(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  RangeSet.init()();
  swift_storeEnumTagMultiPayload();
  LOBYTE(v4) = _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(a1, v17);
  outlined destroy of SelectionRanges<String.Index>(v17);
  if ((v4 & 1) == 0)
  {
    outlined init with copy of SelectionRanges<String.Index>(a1, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v44;
      v25 = v14;
      v26 = v45;
      v39 = *(v43 + 32);
      v40 = a1;
      v39(v44, v25, v45);
      RangeSet.ranges.getter();
      v27 = v42;
      v28 = RangeSet.Ranges.count.getter();
      v29 = v46 + 8;
      v38 = *(v46 + 8);
      v38(v9, v27);
      if (v28 == 1)
      {
        v46 = v29;
        v30 = v41;
        RangeSet.ranges.getter();
        lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v48[4] != v48[0])
        {
          v32 = dispatch thunk of Collection.subscript.read();
          v34 = *v33;
          v35 = v33[1];
          v32(v48, 0);
          outlined destroy of SelectionRanges<String.Index>(v40);
          v38(v30, v27);
          (*(v43 + 8))(v24, v26);
          *v21 = v34;
          *(v21 + 1) = v35;
          goto LABEL_11;
        }

        outlined destroy of SelectionRanges<String.Index>(v40);
        v38(v30, v27);
      }

      else
      {
        outlined destroy of SelectionRanges<String.Index>(v40);
      }

      v39(v21, v44, v45);
    }

    else
    {
      outlined destroy of SelectionRanges<String.Index>(a1);
      v31 = *v14;
      *v21 = *v14;
      *(v21 + 1) = v31;
    }

LABEL_11:
    type metadata accessor for TextSelection.Indices(0);
    swift_storeEnumTagMultiPayload();
    v21[*(v18 + 20)] = 0;
    v23 = v47;
    outlined init with take of TextSelection(v21, v47);
    v22 = 0;
    return (*(v19 + 56))(v23, v22, 1, v18);
  }

  outlined destroy of SelectionRanges<String.Index>(a1);
  v22 = 1;
  v23 = v47;
  return (*(v19 + 56))(v23, v22, 1, v18);
}

uint64_t EnvironmentValues.textSelectionAffinity.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t TextSelection.Indices.hash(into:)()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TextSelection.Indices(v0, v8, type metadata accessor for TextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x18D00F6F0](1);
    lazy protocol witness table accessor for type RangeSet<String.Index> and conformance <> RangeSet<A>();
    dispatch thunk of Hashable.hash(into:)();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = *v8;
    v11 = v8[1];
    MEMORY[0x18D00F6F0](0);
    MEMORY[0x18D00F730](v10 >> 14);
    return MEMORY[0x18D00F730](v11 >> 14);
  }
}

Swift::Int TextSelection.Indices.hashValue.getter()
{
  Hasher.init(_seed:)();
  TextSelection.Indices.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextSelection.Indices()
{
  Hasher.init(_seed:)();
  TextSelection.Indices.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextSelection.Indices()
{
  Hasher.init(_seed:)();
  TextSelection.Indices.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TextSelection.affinity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TextSelection(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TextSelection.init(ranges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for TextSelection.Indices(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TextSelection(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t TextSelection.init(insertionPoint:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = a1;
  type metadata accessor for TextSelection.Indices(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TextSelection(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

BOOL TextSelection.isInsertion.getter()
{
  v1 = type metadata accessor for TextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TextSelection.Indices(v0, v3, type metadata accessor for TextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (v3[1] ^ *v3) < 0x4000uLL;
  }

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(v3, type metadata accessor for TextSelection.Indices);
  return 0;
}

BOOL static TextSelection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static TextSelection.Indices.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TextSelection(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t TextSelection.hash(into:)()
{
  TextSelection.Indices.hash(into:)();
  v1 = type metadata accessor for TextSelection(0);
  return MEMORY[0x18D00F6F0](*(v0 + *(v1 + 20)));
}

Swift::Int TextSelection.hashValue.getter()
{
  Hasher.init(_seed:)();
  TextSelection.Indices.hash(into:)();
  v1 = type metadata accessor for TextSelection(0);
  MEMORY[0x18D00F6F0](*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextSelection(uint64_t a1)
{
  Hasher.init(_seed:)();
  TextSelection.Indices.hash(into:)();
  MEMORY[0x18D00F6F0](*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextSelection(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  TextSelection.Indices.hash(into:)();
  MEMORY[0x18D00F6F0](*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t View.textSelectionAffinity(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path getter for EnvironmentValues.textSelectionAffinity : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.textSelectionAffinity : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.textSelectionAffinity.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

Swift::Int TextSelectionAffinity.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t (*EnvironmentValues.textSelectionAffinity.modify(uint64_t **a1))(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.textSelectionAffinity.modify;
}

uint64_t EnvironmentValues.textSelectionAffinity.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized static TextSelection.Indices.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for TextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - v12);
  type metadata accessor for (TextSelection.Indices, TextSelection.Indices)();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 56)];
  outlined init with copy of TextSelection.Indices(a1, v16, type metadata accessor for TextSelection.Indices);
  outlined init with copy of TextSelection.Indices(v26, v18, type metadata accessor for TextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of TextSelection.Indices(v16, v10, type metadata accessor for TextSelection.Indices);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      v19 = static RangeSet.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
LABEL_11:
      v23 = type metadata accessor for TextSelection.Indices;
      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
    v19 = 0;
    v23 = type metadata accessor for (TextSelection.Indices, TextSelection.Indices);
  }

  else
  {
    outlined init with copy of TextSelection.Indices(v16, v13, type metadata accessor for TextSelection.Indices);
    v21 = v13[1];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = type metadata accessor for (TextSelection.Indices, TextSelection.Indices);
    if (EnumCaseMultiPayload == 1)
    {
      v19 = 0;
    }

    else
    {
      if ((*v18 ^ *v13) >> 14 || (v23 = type metadata accessor for TextSelection.Indices, (*(v18 + 1) ^ v21) >= 0x4000))
      {
        v19 = 0;
        goto LABEL_11;
      }

      v19 = 1;
    }
  }

LABEL_12:
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(v16, v23);
  return v19 & 1;
}

unint64_t lazy protocol witness table accessor for type RangeSet<String.Index> and conformance <> RangeSet<A>()
{
  result = lazy protocol witness table cache variable for type RangeSet<String.Index> and conformance <> RangeSet<A>;
  if (!lazy protocol witness table cache variable for type RangeSet<String.Index> and conformance <> RangeSet<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(255, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<String.Index> and conformance <> RangeSet<A>);
  }

  return result;
}

uint64_t outlined assign with take of TextSelection.Indices(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextSelection.Indices(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextSelectionAffinity> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TextSelectionAffinity and conformance TextSelectionAffinity()
{
  result = lazy protocol witness table cache variable for type TextSelectionAffinity and conformance TextSelectionAffinity;
  if (!lazy protocol witness table cache variable for type TextSelectionAffinity and conformance TextSelectionAffinity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextSelectionAffinity and conformance TextSelectionAffinity);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TextSelection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for TextSelection(uint64_t a1)
{
  type metadata accessor for TextSelection.Indices(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *initializeWithCopy for TextSelection(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TextSelection.Indices(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithCopy for TextSelection(void *a1, const void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(a1, type metadata accessor for TextSelection.Indices);
    v6 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *initializeWithTake for TextSelection(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TextSelection.Indices(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithTake for TextSelection(void *a1, const void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(a1, type metadata accessor for TextSelection.Indices);
    v6 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TextSelection.Indices(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for TextSelection.Indices(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *initializeWithCopy for TextSelection.Indices(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithCopy for TextSelection.Indices(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(a1, type metadata accessor for TextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *initializeWithTake for TextSelection.Indices(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for TextSelection.Indices(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(a1, type metadata accessor for TextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TextSelectionAffinity>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextSelectionAffinity>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextSelectionAffinity>);
    }
  }
}

uint64_t outlined init with copy of TextSelection.Indices(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI13TextSelectionV7IndicesOWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TextSelection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextSelection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SelectionRanges<String.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SelectionRanges<String.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges()
{
  result = lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges;
  if (!lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(255, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges;
  if (!lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges)
  {
    type metadata accessor for SelectionRanges<String.Index>(255, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges);
  }

  return result;
}

void type metadata accessor for (TextSelection.Indices, TextSelection.Indices)()
{
  if (!lazy cache variable for type metadata for (TextSelection.Indices, TextSelection.Indices))
  {
    type metadata accessor for TextSelection.Indices(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TextSelection.Indices, TextSelection.Indices));
    }
  }
}

uint64_t EnvironmentValues.menuIndicatorVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t EnvironmentValues.menuIndicatorVisibility.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.menuIndicatorProminenceReduced.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t View.menuIndicator(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t (*EnvironmentValues.menuIndicatorVisibility.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.menuIndicatorVisibility.modify;
}

uint64_t EnvironmentValues.menuIndicatorVisibility.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.menuIndicatorVisibility.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path getter for EnvironmentValues.menuIndicatorVisibility : EnvironmentValues, serialized@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.menuIndicatorVisibility : EnvironmentValues, serialized(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t static TupleTableColumnContent._makeContent(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = a2[3];
  v49 = a2[2];
  v50 = v14;
  v51 = a2[4];
  v52 = *(a2 + 20);
  v15 = a2[1];
  v47 = *a2;
  v48 = v15;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA011TableColumnD0V_Tt1g5(a5, v45);
  *&v45[24] = v48;
  *&v45[8] = v47;
  *&v45[72] = v51;
  *&v45[56] = v50;
  v16 = *v45;
  *&v45[40] = v49;
  *&v45[88] = v52;
  *v45 = v13;
  *&v46 = 0;
  *(&v46 + 1) = MEMORY[0x1E69E7CC0];
  v17 = *(v16 + 16);
  if (v17)
  {
    outlined init with copy of _TableColumnInputs(&v47, &v38);
    v18 = v16 + 40;
    do
    {
      v18 += 24;
      *&v46 = AGTupleElementOffset();
      *&v38 = a3;
      *(&v38 + 1) = a4;
      *&v39 = a5;
      *(&v39 + 1) = a6;
      *&v40 = a7;
      List = type metadata accessor for TupleTableColumnContent.MakeList();
      TypeConformance<>.visitType<A>(visitor:)(v45, List, &protocol witness table for TupleTableColumnContent<A, B, C>.MakeList);
      --v17;
    }

    while (v17);

    v20 = *(&v46 + 1);
  }

  else
  {
    outlined init with copy of _TableColumnInputs(&v47, &v38);

    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);
  if (v21)
  {
    *&v38 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v22 = v38;
    v23 = (v20 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      *&v38 = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);

      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v22 = v38;
      }

      v23 += 4;
      *(v22 + 16) = v27 + 1;
      v28 = v22 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      --v21;
    }

    while (v21);
  }

  PreferencesOutputs.init()();
  v36 = v38;
  v37 = DWORD2(v38);
  v29 = *(v50 + 16);
  if (v29)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v30 = 1;
    do
    {
      v31 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v31(&v38, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v30;
    }

    while (v30 - v29 != 1);
  }

  else
  {
  }

  v32 = *&v45[32];
  v41 = *&v45[48];
  v42 = *&v45[64];
  v43 = *&v45[80];
  v44 = v46;
  v38 = *v45;
  v39 = *&v45[16];
  *a8 = v36;
  *(a8 + 8) = v37;
  v40 = v32;
  v33 = type metadata accessor for TupleTableColumnContent.MakeList();
  return (*(*(v33 - 8) + 8))(&v38, v33);
}

uint64_t static TupleTableColumnContent._tableColumnCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a1[3];
  v36 = a1[2];
  v37 = v11;
  v38 = a1[4];
  v39 = *(a1 + 20);
  v12 = a1[1];
  v34 = *a1;
  v35 = v12;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA011TableColumnD0V_Tt1g5(a4, &v27);
  v13 = v27;
  LODWORD(v32) = v39;
  v30 = v37;
  v31 = v38;
  v28 = v35;
  v29 = v36;
  v27 = v34;
  *(&v32 + 1) = 0;
  v33 = 0;
  v14 = *(v13 + 16);
  if (v14)
  {
    outlined init with copy of _TableColumnInputs(&v34, &v20);
    v15 = 40;
    do
    {
      *&v20 = a2;
      *(&v20 + 1) = a3;
      *&v21 = a4;
      *(&v21 + 1) = a5;
      *&v22 = a6;
      v16 = type metadata accessor for TupleTableColumnContent.CountColumns();
      TypeConformance<>.visitType<A>(visitor:)(&v27, v16, &protocol witness table for TupleTableColumnContent<A, B, C>.CountColumns);
      v15 += 24;
      --v14;
    }

    while (v14);

    v17 = *(&v32 + 1);
  }

  else
  {
    outlined init with copy of _TableColumnInputs(&v34, &v20);

    v17 = 0;
  }

  v24 = v31;
  v25 = v32;
  v26 = v33;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v18 = type metadata accessor for TupleTableColumnContent.CountColumns();
  (*(*(v18 - 8) + 8))(&v20, v18);
  return v17;
}

uint64_t TupleTableColumnContent.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 48);
  v9 = *(a2 + 32);
  v33 = *(a2 + 16);
  v34 = v9;
  *&v35 = v8;
  type metadata accessor for TupleTableColumnContent();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v10 = *(v4 + 56);
  v31[2] = *(v4 + 40);
  v31[3] = v10;
  v31[4] = *(v4 + 72);
  v32 = *(v4 + 88);
  v11 = *(v4 + 24);
  v31[0] = *(v4 + 8);
  v31[1] = v11;
  v12 = *(v4 + 56);
  v24 = *(v4 + 40);
  v25 = v12;
  v26 = *(v4 + 72);
  v27 = *(v4 + 88);
  v13 = *(v4 + 24);
  v22 = *(v4 + 8);
  v23 = v13;
  v14 = *(a4 + 64);
  outlined init with copy of _TableColumnInputs(v31, &v33);
  v14(&v29, v28, &v22, a3, a4);
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v33 = v22;
  v34 = v23;
  outlined destroy of _TableColumnInputs(&v33);
  v15 = v29;
  v16 = v30;
  v17 = *(v4 + 104);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
    v17 = result;
  }

  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  if (v20 >= v19 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    v17 = result;
  }

  *(v17 + 16) = v20 + 1;
  v21 = v17 + 16 * v20;
  *(v21 + 32) = v15;
  *(v21 + 40) = v16;
  *(v5 + 104) = v17;
  return result;
}

void TupleTableColumnContent.CountColumns.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + 96) & 1) != 0 || (v7 = *(v5 + 48), v8 = *(v5 + 16), v25 = *(v5 + 32), v26 = v7, v9 = *(v5 + 48), v27 = *(v5 + 64), v10 = *(v5 + 16), v24[0] = *v5, v24[1] = v10, v19 = v8, v20 = v25, v11 = *(v5 + 64), v21 = v9, v22 = v11, v12 = *(v5 + 88), v28 = *(v5 + 80), v23 = *(v5 + 80), v18 = v24[0], v13 = *(a4 + 72), v14 = a4, outlined init with copy of _TableColumnInputs(v24, v17), v15 = v13(&v18, a3, v14), LOBYTE(v14) = v16, v29[2] = v20, v29[3] = v21, v29[4] = v22, v30 = v23, v29[0] = v18, v29[1] = v19, outlined destroy of _TableColumnInputs(v29), (v14))
  {
    *(v5 + 88) = 0;
    *(v5 + 96) = 1;
  }

  else if (__OFADD__(v12, v15))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 88) = v12 + v15;
    *(v5 + 96) = 0;
  }
}

uint64_t Group<A>.init<A, B>(content:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

uint64_t static Group<A>._makeContent(content:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v7;
  v12[4] = *(a2 + 64);
  v13 = *(a2 + 80);
  v8 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v8;
  v11 = v6;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a4 + 64))(v10, v12, a3, a4);
}

uint64_t instantiation function for generic protocol witness table for TupleTableColumnContent<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TupleTableColumnContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TupleTableColumnContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 32) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for TupleTableColumnContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for TupleTableColumnContent(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t initializeWithCopy for TupleTableColumnContent.CountColumns(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v4;

  return a1;
}

uint64_t assignWithCopy for TupleTableColumnContent.CountColumns(uint64_t a1, uint64_t a2)
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
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v4;
  return a1;
}

uint64_t assignWithTake for TupleTableColumnContent.CountColumns(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

double FocusedValues.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = NAN;
  *(a1 + 16) = xmmword_18CD76350;
  return result;
}

double FocusedValues.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = 0;
  v23 = 0;
  *&v24 = -1;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 >= 5)
    {
      v6 = *(a1 + 16) & 3;
      if ((v3 & 3) == 0)
      {
        v6 = 4;
      }

      v5 = v3 - v6;
      v7 = (a1 + 96);
      v8 = 0uLL;
      v9 = v5;
      v10 = 0uLL;
      do
      {
        v11 = v7 - 8;
        v12 = vld4q_f64(v11);
        v13 = vld4q_f64(v7);
        v8 = vbslq_s8(vcgtq_s64(v12, v8), v12, v8);
        v10 = vbslq_s8(vcgtq_s64(v13, v10), v13, v10);
        v7 += 16;
        v9 -= 4;
      }

      while (v9);
      v14 = vbslq_s8(vcgtq_s64(v8, v10), v8, v10);
      v15 = vextq_s8(v14, v14, 8uLL).u64[0];
      v4 = vbsl_s8(vcgtd_s64(v14.i64[0], v15), *v14.i8, v15);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v16 = v3 - v5;
    v17 = (a1 + 32 * v5 + 32);
    do
    {
      v19 = *v17;
      v17 += 4;
      v18 = v19;
      if (*&v19 > *&v4)
      {
        v4 = v18;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v4 = 0;
  }

  *(&v24 + 1) = v4;
  specialized Sequence.forEach(_:)(a1, &v22);

  v20 = v23;
  *a2 = v22;
  *(a2 + 8) = v20;
  result = *&v24;
  *(a2 + 16) = v24;
  return result;
}

uint64_t FocusedValue.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for FocusedValue.Content();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(v7 + 16))(&v13 - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Optional();
    return (*(*(v11 - 8) + 32))(a2, v10, v11);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

uint64_t FocusedValue.content.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v5 = a3(0, *(a2 + 16));
  v6 = *(*(v5 - 8) + 40);

  return v6(v3, a1, v5);
}

uint64_t FocusedBinding.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for FocusedBinding.Content();

  return swift_storeEnumTagMultiPayload();
}

uint64_t FocusedBinding.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for FocusedBinding.Content();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  (*(v6 + 16))(v8, v3, v5, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v17, v8, v10);
    (*(v11 + 16))(v13, v17, v10);
    v18 = *(v9 - 8);
    if ((*(v18 + 48))(v13, 1, v9) != 1)
    {
      v22 = v25;
      MEMORY[0x18D00ACC0](v9);
      (*(v11 + 8))(v17, v10);
      (*(v18 + 8))(v13, v9);
      v21 = v22;
      v20 = 0;
      return (*(*(v4 - 8) + 56))(v21, v20, 1, v4);
    }

    v19 = *(v11 + 8);
    v19(v17, v10);
    v19(v13, v10);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  v20 = 1;
  v21 = v25;
  return (*(*(v4 - 8) + 56))(v21, v20, 1, v4);
}

uint64_t key path setter for FocusedBinding.wrappedValue : <A>FocusedBinding<A>(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1, v3);
  v7 = type metadata accessor for FocusedBinding();
  return FocusedBinding.wrappedValue.setter(v5, v7);
}

uint64_t FocusedBinding.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v2 = *(a2 + 16);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - v5;
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FocusedBinding.Content();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v28 = type metadata accessor for Binding();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  (*(v10 + 16))(v12, v32, v9, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v19, v12, v13);
    v20 = v33;
    (*(v4 + 16))(v6, v33, v3);
    v21 = v30;
    if ((*(v30 + 48))(v6, 1, v2) == 1)
    {
      v22 = *(v4 + 8);
      v22(v20, v3);
      (*(v14 + 8))(v19, v13);
      return (v22)(v6, v3);
    }

    else
    {
      (*(v21 + 32))(v31, v6, v2);
      v24 = v29;
      (*(v14 + 16))(v29, v19, v13);
      v25 = v28;
      v26 = *(v28 - 8);
      if ((*(v26 + 48))(v24, 1, v28) == 1)
      {
        (*(v4 + 8))(v33, v3);
        (*(v21 + 8))(v31, v2);
        v27 = *(v14 + 8);
        v27(v19, v13);
        return (v27)(v24, v13);
      }

      else
      {
        specialized Binding.wrappedValue.setter();
        (*(v4 + 8))(v33, v3);
        (*(v21 + 8))(v31, v2);
        (*(v14 + 8))(v19, v13);
        return (*(v26 + 8))(v24, v25);
      }
    }
  }

  else
  {
    (*(v4 + 8))(v33, v3);
    return (*(v10 + 8))(v12, v9);
  }
}

void (*FocusedBinding.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = type metadata accessor for Optional();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  FocusedBinding.wrappedValue.getter(a2, v11);
  return FocusedBinding.wrappedValue.modify;
}

void FocusedBinding.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    FocusedBinding.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    FocusedBinding.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t FocusedBinding.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = type metadata accessor for Binding();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v27 - v9;
  v10 = type metadata accessor for FocusedBinding.Content();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  (*(v11 + 16))(v13, v33, v10, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_5;
  }

  (*(v15 + 32))(v21, v13, v14);
  (*(v15 + 16))(v17, v21, v14);
  v22 = v30;
  if ((*(v30 + 48))(v17, 1, v6) == 1)
  {
    v23 = *(v15 + 8);
    v23(v21, v14);
    v23(v17, v14);
LABEL_5:
    (*(*(v2 - 8) + 56))(v5, 1, 1, v2);
    v24 = v32;
    static Binding.constant(_:)();
    return (*(v31 + 8))(v5, v24);
  }

  v26 = v28;
  (*(v22 + 32))(v28, v17, v6);
  (*(v22 + 16))(v29, v26, v6);
  Binding.init<A>(_:)();
  (*(v22 + 8))(v26, v6);
  return (*(v15 + 8))(v21, v14);
}

uint64_t View.focusedSceneValue<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v21 = a6;
  v22 = a3;
  v9 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for FocusedValueModifier();
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  v18 = *(v9 + 16);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v12, a2, v18, v15);
  (*(v19 + 56))(v12, 0, 1, v18);
  (*(*(v9 - 8) + 56))(v12, 0, 1, v9);
  FocusedValueModifier.init(keyPath:value:isSceneValue:)(a1, v12, a5, v17);

  MEMORY[0x18D00A570](v17, v22, v13, v23);
  return (*(v14 + 8))(v17, v13);
}

uint64_t FocusedValueModifier.Transform.init(viewPhase:modifier:responder:depth:focusItem:content:isFocused:cycleDetector:lastResetSeed:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, int a10)
{
  v14 = *(a8 + 2);
  v15 = *(a8 + 12);
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 20) = a5;
  v16 = type metadata accessor for FocusedValueModifier.Transform();
  v17 = v16[13];
  v18 = type metadata accessor for Optional();
  v19 = *a8;
  result = (*(*(v18 - 8) + 32))(a9 + v17, a6, v18);
  *(a9 + v16[14]) = a7;
  v21 = a9 + v16[15];
  *v21 = v19;
  *(v21 + 8) = v14;
  *(v21 + 12) = v15;
  *(a9 + v16[16]) = a10;
  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance FocusedValueList.Key(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v4);
  result = specialized Array.append<A>(contentsOf:)(*a1);
  *a1 = v4;
  return result;
}

void (*FocusedValues.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  FocusedValues.subscript.getter(a3, a4, v15);
  return FocusedValues.subscript.modify;
}

void FocusedValues.subscript.modify(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v8 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);
    FocusedValues.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    FocusedValues.subscript.setter((*a1)[7], a2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static FocusedValuePropertyKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FocusedValues.Entry();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t one-time initialization function for view()
{
  result = ViewIdentity.init()();
  static FocusedValueScope.view = v1;
  qword_1EAB093F0 = 2003134806;
  unk_1EAB093F8 = 0xE400000000000000;
  return result;
}

uint64_t specialized static FocusedBinding._makeProperty<A>(in:container:fieldOffset:inputs:)()
{
  v0 = type metadata accessor for Binding();
  v1 = type metadata accessor for FocusedValueBox();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.getter();
  v5 = v7[3];
  *(v4 + 1) = 0;
  (*(*(v0 - 8) + 56))(&v4[*(v1 + 32)], 1, 1, v0);
  *v4 = v5;
  swift_getWitnessTable();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
  return (*(v2 + 8))(v4, v1);
}

unsigned __int8 *assignWithCopy for FocusedValue(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = a1[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_22:
  if (v9 == 1)
  {
    if (!(*(v6 + 48))(a1, 1, v5))
    {
      (*(v6 + 8))(a1, v5);
    }
  }

  else
  {
  }

  v14 = *(a2 + v8);
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_40;
  }

  if (v8 <= 3)
  {
    v16 = v8;
  }

  else
  {
    v16 = 4;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v17 = *a2;
    }

LABEL_38:
    v18 = (v17 | (v15 << (8 * v8))) + 2;
    v14 = v17 + 2;
    if (v8 < 4)
    {
      v14 = v18;
    }

    goto LABEL_40;
  }

  if (v16)
  {
    v17 = *a2;
    goto LABEL_38;
  }

LABEL_40:
  if (v14 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    a1[v8] = 1;
  }

  else
  {
    *a1 = *a2;
    a1[v8] = 0;
  }

  return a1;
}

unsigned __int8 *assignWithTake for FocusedValue(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = a1[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_22:
  if (v9 == 1)
  {
    if (!(*(v6 + 48))(a1, 1, v5))
    {
      (*(v6 + 8))(a1, v5);
    }
  }

  else
  {
  }

  v14 = *(a2 + v8);
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_40;
  }

  if (v8 <= 3)
  {
    v16 = v8;
  }

  else
  {
    v16 = 4;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v17 = *a2;
    }

LABEL_38:
    v18 = (v17 | (v15 << (8 * v8))) + 2;
    v14 = v17 + 2;
    if (v8 < 4)
    {
      v14 = v18;
    }

    goto LABEL_40;
  }

  if (v16)
  {
    v17 = *a2;
    goto LABEL_38;
  }

LABEL_40:
  if (v14 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
      v19 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      v19 = 1;
      (*(v6 + 56))(a1, 0, 1, v5);
    }
  }

  else
  {
    v19 = 0;
    *a1 = *a2;
  }

  a1[v8] = v19;
  return a1;
}

void *initializeBufferWithCopyOfBuffer for FocusedValue(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v5 + 80);
  if ((v8 & 0x1000F8) != 0 || (v7 + 1) > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
LABEL_31:

    return v3;
  }

  v11 = a2[v7];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v7 <= 3)
    {
      v13 = v7;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_27;
      }

      v14 = *a2;
    }

    else if (v13 == 2)
    {
      v14 = *a2;
    }

    else if (v13 == 3)
    {
      v14 = *a2 | (a2[2] << 16);
    }

    else
    {
      v14 = *a2;
    }

    v15 = (v14 | (v12 << (8 * v7))) + 2;
    v11 = v14 + 2;
    if (v7 < 4)
    {
      v11 = v15;
    }
  }

LABEL_27:
  if (v11 != 1)
  {
    *a1 = *a2;
    *(a1 + v7) = 0;
    goto LABEL_31;
  }

  if ((*(v5 + 48))(a2, 1, v4))
  {
    memcpy(v3, a2, v6);
  }

  else
  {
    (*(v5 + 16))(v3, a2, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
  }

  *(v3 + v7) = 1;
  return v3;
}

unsigned __int8 *destroy for FocusedBinding(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ((v4 + 16) & ~v4) + *(v3 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = result[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_17;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (result[2] << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_17:
  if (v6 == 1)
  {
    v11 = ~v4;
    v12 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v3 + 84) & 0x80000000) != 0)
    {
      v14 = result;
      v18 = *(*(a2 + 16) - 8);
      v15 = (*(v3 + 48))((v12 + v4 + 8) & v11);
      v3 = v18;
      v16 = v15;
      result = v14;
      if (v16)
      {
        return result;
      }
    }

    else
    {
      v13 = *v12;
      if (*v12 >= 0xFFFFFFFF)
      {
        LODWORD(v13) = -1;
      }

      if (v13 != -1)
      {
        return result;
      }
    }

    v19 = v3;

    v17 = *(v19 + 8);

    return v17((v12 + v4 + 8) & v11, v2);
  }
}

void *initializeWithCopy for FocusedBinding(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = v7 + *(v5 + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v7 + *(v5 + 64);
  }

  v10 = a2[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  if (v10 == 1)
  {
    v15 = ~v6;
    v16 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v5 + 84) & 0x80000000) != 0)
    {
      v18 = a2;
      v19 = (*(v5 + 48))((v16 + v6 + 8) & v15, *(v5 + 84), v4);
      a2 = v18;
      if (v19)
      {
LABEL_23:
        memcpy(__dst, a2, v8);
LABEL_27:
        *(__dst + v9) = 1;
        return __dst;
      }
    }

    else
    {
      v17 = *v16;
      if (*v16 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      if (v17 != -1)
      {
        goto LABEL_23;
      }
    }

    *__dst = *a2;
    v20 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v16;
    v21 = v16 + v6;
    v22 = v20 + v6 + 8;
    v23 = v21 + 8;
    v24 = *(v5 + 16);

    v24(v22 & v15, v23 & v15, v4);
    goto LABEL_27;
  }

  *__dst = *a2;
  *(__dst + v9) = 0;

  return __dst;
}

unsigned __int8 *assignWithCopy for FocusedBinding(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v8 + 16) & ~v8) + v9;
  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = ((v8 + 16) & ~v8) + v9;
  }

  v12 = __dst[v11];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = *__dst;
    }

    else if (v14 == 2)
    {
      v15 = *__dst;
    }

    else if (v14 == 3)
    {
      v15 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v15 = *__dst;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 2;
    v12 = v15 + 2;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_19:
  v17 = ~v8;
  if (v12 != 1)
  {

    goto LABEL_28;
  }

  v18 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    if ((*(v6 + 48))((v18 + v8 + 8) & v17, *(v6 + 84), v5))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v19 = *v18;
  if (*v18 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  if (v19 == -1)
  {
LABEL_27:

    (*(v6 + 8))((v18 + v8 + 8) & v17, v5);
  }

LABEL_28:
  v20 = __src[v11];
  v21 = v20 - 2;
  if (v20 >= 2)
  {
    if (v11 <= 3)
    {
      v22 = v11;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *__src;
      }

      else if (v22 == 3)
      {
        v23 = *__src | (__src[2] << 16);
      }

      else
      {
        v23 = *__src;
      }

LABEL_40:
      v24 = (v23 | (v21 << (8 * v11))) + 2;
      v20 = v23 + 2;
      if (v11 < 4)
      {
        v20 = v24;
      }

      goto LABEL_42;
    }

    if (v22)
    {
      v23 = *__src;
      goto LABEL_40;
    }
  }

LABEL_42:
  if (v20 == 1)
  {
    v25 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      if ((*(v6 + 48))((v25 + v8 + 8) & v17, v7, v5))
      {
LABEL_47:
        memcpy(__dst, __src, v10);
LABEL_51:
        __dst[v11] = 1;
        return __dst;
      }
    }

    else
    {
      v26 = *v25;
      if (*v25 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      if (v26 != -1)
      {
        goto LABEL_47;
      }
    }

    *__dst = *__src;
    v27 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v25;
    v28 = v27 + v8 + 8;
    v29 = *(v6 + 16);

    v29(v28 & v17, (v25 + v8 + 8) & v17, v5);
    goto LABEL_51;
  }

  *__dst = *__src;
  __dst[v11] = 0;

  return __dst;
}

void *initializeWithTake for FocusedBinding(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = v6 + *(v4 + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6 + *(v4 + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_18:
  if (v9 == 1)
  {
    v14 = ~v5;
    v15 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = __dst;
    if ((*(v4 + 84) & 0x80000000) != 0)
    {
      v19 = a2;
      v20 = (*(v4 + 48))((v15 + v5 + 8) & v14, *(v4 + 84), v3);
      a2 = v19;
      v21 = v20;
      __dst = v16;
      if (v21)
      {
LABEL_23:
        memcpy(v16, a2, v7);
LABEL_27:
        __dst = v16;
        v18 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *v15;
      if (*v15 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      if (v17 != -1)
      {
        goto LABEL_23;
      }
    }

    *__dst = *a2;
    v22 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v15;
    (*(v4 + 32))((v22 + v5 + 8) & v14, (v15 + v5 + 8) & v14, v3);
    goto LABEL_27;
  }

  v18 = 0;
  *__dst = *a2;
LABEL_28:
  *(__dst + v8) = v18;
  return __dst;
}

unsigned __int8 *assignWithTake for FocusedBinding(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = *(v6 + 84);
    v8 = *(v6 + 80);
    v9 = *(v6 + 64);
    v10 = ((v8 + 16) & ~v8) + v9;
    if (v10 <= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = ((v8 + 16) & ~v8) + v9;
    }

    v12 = __dst[v11];
    v13 = v12 - 2;
    if (v12 >= 2)
    {
      if (v11 <= 3)
      {
        v14 = v11;
      }

      else
      {
        v14 = 4;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          goto LABEL_19;
        }

        v15 = *__dst;
      }

      else if (v14 == 2)
      {
        v15 = *__dst;
      }

      else if (v14 == 3)
      {
        v15 = *__dst | (__dst[2] << 16);
      }

      else
      {
        v15 = *__dst;
      }

      v16 = (v15 | (v13 << (8 * v11))) + 2;
      v12 = v15 + 2;
      if (v11 < 4)
      {
        v12 = v16;
      }
    }

LABEL_19:
    v17 = ~v8;
    if (v12 != 1)
    {

      goto LABEL_28;
    }

    v18 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      if ((*(v6 + 48))((v18 + v8 + 8) & v17, *(v6 + 84), v5))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v19 = *v18;
      if (*v18 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if (v19 != -1)
      {
LABEL_28:
        v20 = __src[v11];
        v21 = v20 - 2;
        if (v20 < 2)
        {
          goto LABEL_42;
        }

        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        if (v22 <= 1)
        {
          if (!v22)
          {
            goto LABEL_42;
          }

          v23 = *__src;
        }

        else if (v22 == 2)
        {
          v23 = *__src;
        }

        else if (v22 == 3)
        {
          v23 = *__src | (__src[2] << 16);
        }

        else
        {
          v23 = *__src;
        }

        v24 = (v23 | (v21 << (8 * v11))) + 2;
        v20 = v23 + 2;
        if (v11 < 4)
        {
          v20 = v24;
        }

LABEL_42:
        if (v20 != 1)
        {
          v27 = 0;
          *__dst = *__src;
LABEL_52:
          __dst[v11] = v27;
          return __dst;
        }

        v25 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v7 & 0x80000000) != 0)
        {
          if ((*(v6 + 48))((v25 + v8 + 8) & v17, v7, v5))
          {
LABEL_47:
            memcpy(__dst, __src, v10);
LABEL_51:
            v27 = 1;
            goto LABEL_52;
          }
        }

        else
        {
          v26 = *v25;
          if (*v25 >= 0xFFFFFFFF)
          {
            LODWORD(v26) = -1;
          }

          if (v26 != -1)
          {
            goto LABEL_47;
          }
        }

        *__dst = *__src;
        v28 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
        *v28 = *v25;
        (*(v6 + 32))((v28 + v8 + 8) & v17, (v25 + v8 + 8) & v17, v5);
        goto LABEL_51;
      }
    }

    (*(v6 + 8))((v18 + v8 + 8) & v17, v5);
    goto LABEL_28;
  }

  return __dst;
}

uint64_t getEnumTagSinglePayload for FocusedBinding(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 16) - 8) + 80) + 16) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 80) + 16) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for FocusedBinding(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 80) + 16) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t type metadata completion function for FocusedBinding.Content()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for FocusedBinding(_BYTE *__dst, unsigned __int16 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = (v7 + 16) & ~v7;
  v9 = v8 + *(v5 + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v8 + *(v5 + 64);
  }

  v11 = v6 & 0x100000;
  if (v7 > 7 || v11 != 0 || (v10 + 1) > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
    goto LABEL_34;
  }

  v15 = *(a2 + v10);
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v10 <= 3)
    {
      v17 = v10;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *a2;
      }

      else if (v17 == 3)
      {
        v18 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v18 = *a2;
      }

LABEL_25:
      v19 = (v18 | (v16 << (8 * v10))) + 2;
      v15 = v18 + 2;
      if (v10 < 4)
      {
        v15 = v19;
      }

      goto LABEL_27;
    }

    if (v17)
    {
      v18 = *a2;
      goto LABEL_25;
    }
  }

LABEL_27:
  if (v15 == 1)
  {
    v20 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v5 + 84) & 0x80000000) != 0)
    {
      v22 = a2;
      v23 = (*(v5 + 48))(v20 + 1, *(v5 + 84), v4);
      a2 = v22;
      if (v23)
      {
LABEL_32:
        memcpy(v3, a2, v9);
LABEL_37:
        *(v3 + v10) = 1;
        return v3;
      }
    }

    else
    {
      v21 = *v20;
      if (*v20 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      if (v21 != -1)
      {
        goto LABEL_32;
      }
    }

    *v3 = *a2;
    v24 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v20;
    v25 = *(v5 + 16);

    v25(v24 + 1, v20 + 1, v4);
    goto LABEL_37;
  }

  *__dst = *a2;
  __dst[v10] = 0;
LABEL_34:

  return v3;
}

uint64_t getEnumTag for FocusedBinding.Content(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 8;
  if (((*(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80)) + *(*(*(a2 + 16) - 8) + 64) > 8)
  {
    v2 = ((*(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80)) + *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void destructiveInjectEnumTag for FocusedBinding.Content(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v4 = ((*(*(*(a3 + 16) - 8) + 80) + 16) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 1)
  {
    v5 = 8;
    if (v4 > 8)
    {
      v5 = ((*(*(*(a3 + 16) - 8) + 80) + 16) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
    }

    v6 = a2 - 2;
    if (v5 < 4)
    {
      a1[v5] = (v6 >> (8 * v5)) + 2;
      if (!v5)
      {
        return;
      }

      v6 &= ~(-1 << (8 * v5));
    }

    else
    {
      a1[v5] = 2;
    }

    if (v5 >= 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = v5;
    }

    bzero(a1, v5);
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        *a1 = v6;
        a1[2] = BYTE2(v6);
      }

      else
      {
        *a1 = v6;
      }
    }

    else if (v7 == 1)
    {
      *a1 = v6;
    }

    else
    {
      *a1 = v6;
    }
  }

  else
  {
    if (v4 <= 8)
    {
      v4 = 8;
    }

    a1[v4] = a2;
  }
}

uint64_t assignWithTake for FocusedValues(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for FocusedValues.Entry(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((v6 + 24) & ~v6) + v7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v11 = AssociatedTypeWitness;
    v12 = ~v6;
    *a1 = *a2;
    v13 = a2[2];
    a1[1] = a2[1];
    a1[2] = v13;
    v14 = a1 + v6;
    v15 = a2 + v6;
    v16 = (v14 + 24) & v12;
    v17 = (v15 + 24) & v12;
    v18 = *(v5 + 16);

    v18(v16, v17, v11);
    *(v16 + v7) = *(v17 + v7);
    *(((v16 + v7) & 0xFFFFFFFFFFFFFFF8) + 8) = *(((v17 + v7) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  return a1;
}

uint64_t assignWithCopy for FocusedValues.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = (v7 + 24 + a1) & ~v7;
  v9 = (v7 + 24 + a2) & ~v7;
  (*(v5 + 24))(v8, v9, AssociatedTypeWitness);
  v10 = *(v6 + 40);
  v11 = v10 + v8;
  v12 = v10 + v9;
  *v11 = *v12;
  *((v11 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t initializeWithTake for FocusedValues.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (v7 + 24 + a1) & ~v7;
  v9 = (v7 + 24 + a2) & ~v7;
  (*(v5 + 32))(v8, v9, AssociatedTypeWitness);
  v10 = *(v6 + 32);
  v11 = v10 + v8;
  v12 = v10 + v9;
  *v11 = *v12;
  *((v11 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t assignWithTake for FocusedValues.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (v8 + 24 + a1) & ~v8;
  v10 = (v8 + 24 + a2) & ~v8;
  (*(v6 + 40))(v9, v10, AssociatedTypeWitness);
  v11 = *(v7 + 24);
  v12 = v11 + v9;
  v13 = v11 + v10;
  *v12 = *v13;
  *((v12 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v13 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for FocusedValueModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  v11 = v9 - ((-9 - v7) | v7);
  if (v8 > 7 || v10 != 0 || v11 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v15 = ((a1 + v8 + 8) & ~v8);
    v16 = ((a2 + v8 + 8) & ~v8);
    v17 = *(v5 + 48);

    if (v17(v16, 1, v4))
    {
      memcpy(v15, v16, v9);
    }

    else
    {
      (*(v6 + 16))(v15, v16, v4);
      (*(v6 + 56))(v15, 0, 1, v4);
    }

    *(v15 + v9) = *(v16 + v9);
  }

  return v3;
}

void *initializeWithTake for FocusedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
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

  *(v7 + v14) = *(v8 + v14);
  return a1;
}

void *assignWithTake for FocusedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((a1 + v8 + 8) & ~v8);
  v10 = ((a2 + v8 + 8) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  *(v9 + v17) = *(v10 + v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusedValueModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for FocusedValueModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 8) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 8) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26(v22, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}